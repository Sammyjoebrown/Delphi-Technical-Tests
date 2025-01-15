unit PrimeNumberChecker;

interface

function CheckIfPrimeNumber(Input: Integer): Boolean;

implementation

uses
  Math;

function CheckIfPrimeNumber(Input: Integer): Boolean;
var
  i: Integer;
  Limit: Integer;
begin
  if Input <= 1 then
  begin
    Result := False;
    Exit;
  end;

  Limit := Trunc(Sqrt(Double(Input)));

  for i := 2 to Limit do
  begin
    if Input mod i = 0 then
    begin
      Result := False;
      Exit;
    end;
  end;

  Result := True;
end;

end.

