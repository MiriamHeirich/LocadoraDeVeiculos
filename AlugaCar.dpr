program AlugaCar;

uses
  Vcl.Forms,
  uMenuPrincipal in 'Units\uMenuPrincipal.pas' {Form1},
  uLogin in 'Login\uLogin.pas' {frmLogin};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  frmLogin:=TfrmLogin.Create(nil);
  frmLogin.ShowModal;
  Application.CreateForm(TfrmLogin, frmLogin);
  frmLogin.Hide;
  frmLogin.Free;
  Application.Run;
end.
