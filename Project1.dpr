program Project1;

uses
  Vcl.Forms,
  Unit1 in 'Unit1.pas' {Form1},
  NumbersToWords in 'NumbersToWords.pas',
  PalindromeChecker in 'PalindromeChecker.pas',
  PrimeNumberChecker in 'PrimeNumberChecker.pas',
  TextToSpeech in 'TextToSpeech.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
