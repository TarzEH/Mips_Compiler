# Pascal-MIPS Compiler

A compiler that translates Pascal syntax into MIPS assembly language using Bison and Flex, implemented in Lex, Yacc, and C.

## Features

- Pascal to MIPS assembly translation
- Lexical analysis using Flex
- Syntax parsing using Bison
- Error detection and reporting
- MIPS code generation

## How to Use

### Prerequisites
- Command line interface (CMD)
- Compiler files extracted to a directory

### Steps

1. **Open Command Prompt** and navigate to the directory where you extracted the compiler files

2. **Select Input Files** - Follow the interface shown below to choose your Pascal source files:

   ![File Selection Interface](https://user-images.githubusercontent.com/70447976/172410677-6174b92c-0866-411b-ac9f-03cd820b2a8f.png)

3. **Execute Compilation** - Press Enter to start the compilation process
   - **Success**: If no errors occur, a MIPS assembly file will be generated
   - **Error**: If compilation fails, an error text file will be created with details

4. **Compilation Process**:

   ![Compilation in Progress](https://user-images.githubusercontent.com/70447976/172411314-30790fbf-d809-449a-b4f2-aa99cb39d5c2.png)

5. **Successful Output**:

   ![Generated MIPS File](https://user-images.githubusercontent.com/70447976/172411851-b5ddaf09-39c6-4aff-8495-367312ad599d.png)

## Error Handling

The compiler provides comprehensive error reporting. Below are examples of different error scenarios:

### Syntax Errors
![Syntax Error Example](https://user-images.githubusercontent.com/70447976/172411923-f46dbdbc-ea78-493f-9b2f-5be88a2cfe9c.png)

### Compilation Errors
![Compilation Error Details](https://user-images.githubusercontent.com/70447976/172412150-0d020ffa-2d1c-413e-b1c8-c2723ea5be22.png)

### Error File Generation
![Error File Created](https://user-images.githubusercontent.com/70447976/172412379-ed3c2ad3-a507-468c-adf1-e795fedd9723.png)

### Error Log Content
![Error Log Example](https://user-images.githubusercontent.com/70447976/172412509-fe44becb-5e63-421b-8480-7ffd12b65c5c.png)

## Output

- **Success**: `.mips` file containing the translated assembly code
- **Error**: `.txt` file containing detailed error messages and line numbers

## Technologies Used

- **Flex**: Lexical analyzer generator
- **Bison**: Parser generator (successor to Yacc)
- **C**: Implementation language
- **Pascal**: Source language
- **MIPS**: Target assembly language
