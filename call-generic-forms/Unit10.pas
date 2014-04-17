unit Unit10;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Unit1, Call.Forms, Unit2;

type
  TForm10 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form10: TForm10;

implementation

{$R *.dfm}

procedure TForm10.Button1Click(Sender: TObject);
begin
  // created and assigned variable
  TCallForms.ShowModal<TForm1>(Form1);
end;

procedure TForm10.Button2Click(Sender: TObject);
begin
  // created and NOT assigned varible
  TCallForms.ShowModal<TForm2>();
end;

end.
