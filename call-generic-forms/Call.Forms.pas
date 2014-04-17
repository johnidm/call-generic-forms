unit Call.Forms;

interface

uses
  Vcl.Forms, System.SysUtils;

type
  TCallForms = class
    class procedure ShowModal<F: TForm>;  overload; static;
    class procedure ShowModal<F: TForm>( var pForm: F );  overload; static;
  end;


implementation


class procedure TCallForms.ShowModal<F>(var pForm: F);
begin
  pForm := F( TFormClass(F).Create( nil ) );
  try
    pForm.ShowModal
  finally
    FreeAndNil(pForm);
  end;
end;

class procedure TCallForms.ShowModal<F>;
var
  Form: F;
begin
  TCallForms.ShowModal<F>(Form);
end;

end.
