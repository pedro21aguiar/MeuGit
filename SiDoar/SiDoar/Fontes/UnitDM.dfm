object DM: TDM
  OldCreateOrder = False
  Height = 317
  Width = 510
  object ConexaoConnection: TFDConnection
    Params.Strings = (
      'ConnectionDef=CONEXAO')
    Connected = True
    LoginPrompt = False
    Left = 58
    Top = 50
  end
  object DoadorTable: TFDQuery
    Connection = ConexaoConnection
    SQL.Strings = (
      'SELECT * FROM DOADOR')
    Left = 58
    Top = 122
  end
  object Dt: TDataSource
    DataSet = DoadorTable
    Left = 56
    Top = 184
  end
end
