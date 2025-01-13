unit PageControl1;

interface

uses
  System.SysUtils, System.Classes, Vcl.Controls, Vcl.ComCtrls;

type
  TPageControl1 = class(TPageControl)
  private
    { Private declarations }
  protected
    { Protected declarations }
  public
    { Public declarations }
  published
    { Published declarations }
  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('Samples', [TPageControl1]);
end;

end.
