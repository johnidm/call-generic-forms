program Project7;

uses
  Vcl.Forms,
  Unit10 in 'Unit10.pas' {Form10},
  Call.Forms in 'Call.Forms.pas',
  Unit1 in 'Unit1.pas' {Form1},
  Unit2 in 'Unit2.pas' {Form2};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm10, Form10);

  Application.Run;
end.
