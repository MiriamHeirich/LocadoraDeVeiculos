object DataModule1: TDataModule1
  OldCreateOrder = False
  Height = 242
  Width = 423
  object conexao: TZConnection
    ControlsCodePage = cCP_UTF16
    Catalog = ''
    Properties.Strings = (
      'controls_cp=CP_UTF16')
    Connected = True
    SQLHourGlass = True
    HostName = 'localhost'
    Port = 3306
    Database = 'cadastroveiculos'
    User = 'root'
    Password = ''
    Protocol = 'mysql'
    LibraryLocation = 'C:\Componentes\libmysql.dll'
    Left = 88
    Top = 48
  end
  object qryConexao: TZQuery
    Connection = conexao
    Params = <>
    Left = 200
    Top = 104
  end
end
