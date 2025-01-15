# Delphi Technical Tests Application

This project is a collection of common technical tests implemented in Delphi. It features four primary functionalities, each accessible via a tabbed user interface:

1. **Numbers to Words Converter**: Converts numbers (including decimals) into their English word equivalents, with support for currency format ("Dollars").
2. **Palindrome Checker**: Validates if a given string is a palindrome, ignoring case and spaces.
3. **Prime Number Checker**: Determines if a given integer is a prime number.
4. **Text-to-Speech Converter**: Converts text into speech and allows playback.

## Features

### Numbers to Words Converter
- Converts numeric inputs (e.g., `1234.56`) into words (e.g., "one thousand two hundred and thirty-four dollars and fifty-six cents").
- Supports two modes:
  - **Dollar**: Converts numbers to currency format.
  - **Number**: Converts numbers to plain word format.

### Palindrome Checker
- Validates whether an input string is a palindrome (e.g., "nurses run" is recognized as a palindrome).
- Ignores spaces and is case-insensitive.

### Prime Number Checker
- Determines if a given integer is a prime number.
- Displays validation messages for invalid or non-numeric inputs.

### Text-to-Speech Converter
- Converts user input text into speech.
- Two buttons are available:
  - **Convert Text to Speech**: Generates the audio file.
  - **Play Audio**: Plays the generated audio file.

## User Interface
The application consists of a tabbed interface with the following tabs:
1. **Numbers to Words**: Input a number, select a conversion type, and view the result in words.
2. **Palindrome Checker**: Input a string to check if it is a palindrome.
3. **Prime Number Checker**: Input a number to check if it is prime.
4. **Text to Speech**: Input text to generate and play audio.

## Requirements
- Delphi IDE with Windows VCL components.
- Microsoft Speech API (SAPI) installed for the text-to-speech functionality.

## Installation
1. Clone the repository:
   ```bash
   git clone https://github.com/your-username/Delphi-Technical-Tests.git
2. Open the .dproj file in the Delphi IDE.
3. Compile the project: Run > Compile (or press Ctrl + F9).
4. Build: Run > Build (or press Shift + F9).

Or alternatively, inside the 'Win32' folder, open the .exe for a more simple program runtime.