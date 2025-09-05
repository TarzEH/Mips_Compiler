CC = gcc
CFLAGS = -Wall -Wextra -std=c99
LEX = flex
YACC = bison

# Target executable
TARGET = CPM.exe

# Source files
LEX_SRC = CPM.lex
YACC_SRC = CPM.y
GENERATED_C = lex.yy.c y.tab.c
GENERATED_H = y.tab.h

# Default target
all: $(TARGET)

# Build the compiler
$(TARGET): $(GENERATED_C)
	$(CC) $(CFLAGS) -o $(TARGET) $(GENERATED_C) -lfl

# Generate lexer
lex.yy.c: $(LEX_SRC)
	$(LEX) $(LEX_SRC)

# Generate parser
y.tab.c y.tab.h: $(YACC_SRC)
	$(YACC) -d $(YACC_SRC)

# Clean generated files
clean:
	del /f $(GENERATED_C) $(GENERATED_H) $(TARGET) *.LST *.S 2>nul || true

# Test with working example
test: $(TARGET)
	$(TARGET) WorkingExample.txt

# Test with error example
test-error: $(TARGET)
	$(TARGET) NotWorkingExample.txt

.PHONY: all clean test test-error