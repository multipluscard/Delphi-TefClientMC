program ExemploDLLDelphi;

uses
  Vcl.Forms,
  FormPrincipal in 'FormPrincipal.pas' {FormPrincipalIni};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormPrincipalIni, FormPrincipalIni);
  Application.Run;
end.
