unit PalindromeChecker;

interface

function CheckIfPalindrome(Input: String): Boolean;

implementation

uses
  System.SysUtils;

function CheckIfPalindrome(Input: String): Boolean;
var
  ReversedInput: String;
  ProcessedInput: String;
  i: Integer;
begin
  ReversedInput := '';

  // Preprocess the input: remove spaces and non-alphanumeric characters, and convert to lowercase
  ProcessedInput := LowerCase(Input);
  ProcessedInput := StringReplace(ProcessedInput, ' ', '', [rfReplaceAll]); // Remove spaces
  ProcessedInput := StringReplace(ProcessedInput, '.', '', [rfReplaceAll]); // Remove periods
  ProcessedInput := StringReplace(ProcessedInput, ',', '', [rfReplaceAll]); // Remove commas
  ProcessedInput := StringReplace(ProcessedInput, '-', '', [rfReplaceAll]); // Remove dashes
  ProcessedInput := StringReplace(ProcessedInput, '''', '', [rfReplaceAll]); // Remove apostrophes

  // Reverse the processed input string
  for i := Length(ProcessedInput) downto 1 do
    ReversedInput := ReversedInput + ProcessedInput[i];

  // Compare the processed string with the reversed string (case insensitive by design)
  Result := ProcessedInput = ReversedInput;
end;

end.

