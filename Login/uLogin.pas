unit uLogin;
interface
uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.Imaging.pngimage, Vcl.Buttons, Vcl.Imaging.jpeg;
type
  TfrmLogin = class(TForm)
    pnlFundo: TPanel;
    pnlLateral: TPanel;
    lblMfhLocadora: TLabel;
    lblDesenvovedor: TLabel;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    lblVersao: TLabel;
    Image1: TImage;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    lblDigiteUsuario: TLabel;
    pnlNome: TPanel;
    edtUsuario: TEdit;
    lblNme: TLabel;
    btnAbort: TSpeedButton;
    Panel2: TPanel;
    lblSenha: TLabel;
    edtSenha: TEdit;
    Image2: TImage;
    btnEntrar: TBitBtn;
    btnSair: TBitBtn;
    procedure btnAbortClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);

    procedure btnSairClick(Sender: TObject);
    procedure btnEntrarClick(Sender: TObject);
  private
    { Private declarations }
     tentativas: Smallint;

  public
    { Public declarations }
  end;
var
  frmLogin: TfrmLogin;
implementation
{$R *.dfm}
procedure TfrmLogin.btnAbortClick(Sender: TObject);
begin
    Close;
end;

procedure TfrmLogin.btnEntrarClick(Sender: TObject);
var
  sql: string;
begin

end;

procedure TfrmLogin.btnSairClick(Sender: TObject);
begin
 close;
end;

procedure TfrmLogin.FormActivate(Sender: TObject);
begin
  pnlFundo.Left:= Round((frmLogin.Width-pnlFundo.Width )/ 2);
  pnlFundo.Top:= Round((frmLogin.Height -pnlFundo.Height )/ 2);
end;


end.
