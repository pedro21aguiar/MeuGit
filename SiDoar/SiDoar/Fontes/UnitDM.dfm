object DM: TDM
  OldCreateOrder = False
  Height = 317
  Width = 510
  object Conexao: TFDConnection
    ConnectionName = 'Conexao'
    Params.Strings = (
      'ConnectionDef=CONEXAO')
    Connected = True
    LoginPrompt = False
    Left = 40
    Top = 24
  end
  object FDQuery_Doadores: TFDQuery
    Active = True
    Connection = Conexao
    SQL.Strings = (
      'select * from DOADOR')
    Left = 168
    Top = 24
    object FDQuery_DoadoresID_DOADOR: TIntegerField
      FieldName = 'ID_DOADOR'
      Origin = 'ID_DOADOR'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQuery_DoadoresNOME_DOADOR: TStringField
      FieldName = 'NOME_DOADOR'
      Origin = 'NOME_DOADOR'
      Size = 100
    end
    object FDQuery_DoadoresCONTATO_DOADOR: TStringField
      FieldName = 'CONTATO_DOADOR'
      Origin = 'CONTATO_DOADOR'
      Size = 50
    end
    object FDQuery_DoadoresEMAIL: TStringField
      FieldName = 'E-MAIL'
      Origin = '"E-MAIL"'
      Size = 50
    end
  end
  object FDPhysFBDriverLink1: TFDPhysFBDriverLink
    VendorLib = 'C:\Program Files (x86)\Firebird\Firebird_3_0\fbclient.dll'
    Left = 40
    Top = 96
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 40
    Top = 176
  end
  object FDQuery_Destinacao: TFDQuery
    Active = True
    Connection = Conexao
    SQL.Strings = (
      'select * from DESTINO')
    Left = 288
    Top = 24
  end
end
