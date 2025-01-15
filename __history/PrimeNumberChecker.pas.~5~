unit PrimeNumberChecker;

interface

function CheckIfPrimeNumber(Input: Integer): Boolean;

implementation

function CheckIfPrimeNumber(Input: Integer): Boolean;
var
  i: Integer;
begin
  if Input <= 1 then
  begin
    Result := False; // Numbers <= 1 are not prime
    Exit;
  end;

  // Check divisors from 2 to sqrt(Input)
  for i := 2 to Trunc(Sqrt(Input)) do
  begin
    if Input mod i = 0 then
    begin
      Result := False; // Divisible, not prime
      Exit;
    end;
  end;

  Result := True; // No divisors found, it is prime
end;

end.

