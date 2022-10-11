unit uLogin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.Imaging.pngimage, Vcl.Buttons, Data.DB, ZAbstractRODataset,uMenuPrincipal,
  ZAbstractDataset, ZDataset, ZAbstractConnection, ZConnection;

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
    edtNome: TEdit;
    Label7: TLabel;
    pnlBot�o: TPanel;
    btnAbort: TSpeedButton;
    Panel2: TPanel;
    lblSenha: TLabel;
    edtSenha: TEdit;
    ConexaoBD: TZConnection;
    qryLogin: TZQuery;
    procedure btnAbortClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure pnlBot�oClick(Sender: TObject);
  private
    { Private declarations }

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

procedure TfrmLogin.FormActivate(Sender: TObject);
begin
  pnlFundo.Left:= Round((frmLogin.Width-pnlFundo.Width )/ 2);
  pnlFundo.Top:= Round((frmLogin.Height -pnlFundo.Height )/ 2);
end;


procedure TfrmLogin.pnlBot�oClick(Sender: TObject);

begin
  qryLogin.Active:=false;
  qryLogin.SQL.Clear;
  qryLogin.SQL.Add('select senha from usuario where senha ='''+ edtNome.text+ '''');
 qryLogin.ExecSQL;
  qryLogin.Active:=true;
    if edtSenha.text = qryLogin.FieldByName('senha').Value then
      begin
       form1.show;
      end
    else
      begin

       ShowMessage('Erro');
      end;
end;


end.
