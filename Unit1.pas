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
    Button5: TButton;
    RadioButton3: TRadioButton;
    RadioButton4: TRadioButton;
    Label9: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
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
InputNumber := StrToInt(Edit1.Text);

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
begin
  InputNumber := StrToInt(Edit3.Text);
  IsPrime := CheckIfPrimeNumber(InputNumber);

  if IsPrime then
    Label5.Caption := 'Prime Number'
  else
    Label5.Caption := 'Not a Prime Number';
end;

// Text to Speech
procedure TForm1.Button4Click(Sender: TObject);
var
  InputText: String;
  Success: Boolean;
begin
  InputText := Edit4.Text;
  Success := ConvertTextToSpeech(InputText, 'Default');

  if Success then
    Label6.Caption := 'Speech Played'
  else
    Label6.Caption := 'Failed to Play Speech';
end;

// Prime Number Checker
end.
