unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
   
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  procedure Newform (Handle:THandle);export;stdcall;

implementation

{$R *.dfm}
procedure Newform (Handle:THandle);
begin
Application.Handle:=Handle;
Form1:=TForm1.Create(Application);
Form1.ShowModal;//��������
Form1.Free;
end;
procedure TForm1.Button1Click(Sender: TObject);
begin
Form1.Close;
end;



end.
