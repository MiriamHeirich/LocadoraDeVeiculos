unit uDTMConexao;

interface

uses
  System.SysUtils, System.Classes, ZAbstractConnection, ZConnection, Data.DB,
  Datasnap.DBClient, ZAbstractRODataset, ZAbstractDataset, ZDataset;

type
  TDataModule1 = class(TDataModule)
    conexao: TZConnection;
    qryConexao: TZQuery;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule1: TDataModule1;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
