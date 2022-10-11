unit uLogin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.Imaging.pngimage, Vcl.Buttons;

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
    pnlBotão: TPanel;
    btnAbort: TSpeedButton;
    Panel2: TPanel;
    lblSenha: TLabel;
    Edit1: TEdit;
    procedure btnAbortClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
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

end.
