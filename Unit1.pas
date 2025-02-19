unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ButtonGroup, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, Vcl.StdCtrls, Vcl.ComCtrls;

type
  TForm1 = class(TForm)
    Image1: TImage;
    Label1: TLabel;
    Shape1: TShape;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    Label3: TLabel;
    TabSheet5: TTabSheet;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    Edit1: TEdit;
    Button1: TButton;
    Label2: TLabel;
    Shape2: TShape;
    Label4: TLabel;
    Edit2: TEdit;
    Shape3: TShape;
    Label5: TLabel;
    Button2: TButton;
    Button3: TButton;
    Edit3: TEdit;
    Label6: TLabel;
    Shape4: TShape;
    Label7: TLabel;
    Label8: TLabel;
    Edit4: TEdit;
    Button4: TButton;
    Label9: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    //procedure PageControl1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses
  NumbersToWords, PalindromeChecker, PrimeNumberChecker, TextToSpeech;

{$R *.dfm}

// Numbers to Words App
procedure TForm1.Button1Click(Sender: TObject);
var
InputNumber: Double;
ConversionType: String;
OutputText: String;

begin
InputNumber := StrToFloat(Edit1.Text);

if RadioButton1.checked then
  ConversionType :='Dollar'
else
  ConversionType := 'Number';

OutputText := ConvertNumbersToWords(FloatToStr(InputNumber), ConversionType);
Label2.Caption := OutputText;
end;

// Palindrome Checker
procedure TForm1.Button2Click(Sender: TObject);
var
  InputText: String;
  IsPalindrome: Boolean;
begin
  InputText := Edit2.Text;
  IsPalindrome := CheckIfPalindrome(InputText);

  if IsPalindrome then
    Label4.Caption := 'Palindrome'
  else
    Label4.Caption := 'Not a Palindrome';
end;

// Prime Number Checker
procedure TForm1.Button3Click(Sender: TObject);
var
  InputNumber: Integer;
  IsPrime: Boolean;
  InputText: String;
begin
  try
    InputText := Trim(Edit3.Text);
    if InputText = '' then
      raise Exception.Create('Input cannot be empty.');

    InputNumber := StrToInt(InputText);

    IsPrime := CheckIfPrimeNumber(InputNumber);

    if IsPrime then
      Label7.Caption := IntToStr(InputNumber) + ' is a prime number'
    else
      Label7.Caption := IntToStr(InputNumber) + ' is not a prime number';
  except
    on E: EConvertError do
      Label7.Caption := 'Invalid input. Please enter a valid integer.';
    on E: Exception do
      Label7.Caption := E.Message;
  end;
end;

// Text to Speech
procedure TForm1.Button4Click(Sender: TObject);
var
  InputText: String;
  Success: Boolean;
  StatusMessage: String;
begin
  InputText := Edit4.Text;

  if InputText = '' then
  begin
    Label6.Caption := 'Please enter text to convert.';
    Exit;
  end;

  Success := ConvertTextToSpeech(InputText, StatusMessage);

  if Success then
    Label6.Caption := 'Text converted to speech and saved!'
  else
    Label6.Caption := 'Failed to convert text to speech.';
end;

end.
