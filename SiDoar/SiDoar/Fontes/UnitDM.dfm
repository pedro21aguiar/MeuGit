object DM: TDM
  OldCreateOrder = False
  Height = 397
  Width = 609
  object Conexao: TFDConnection
    ConnectionName = 'Conexao'
    Params.Strings = (
      'ConnectionDef=CONEXAO')
    Connected = True
    LoginPrompt = False
    Left = 40
    Top = 24
  end
  object TB_Doador: TFDTable
    Active = True
    IndexFieldNames = 'ID_DOADOR'
    Connection = Conexao
    UpdateOptions.UpdateTableName = 'DOADOR'
    TableName = 'DOADOR'
    Left = 128
    Top = 24
    object TB_DoadorID_DOADOR: TIntegerField
      FieldName = 'ID_DOADOR'
      Origin = 'ID_DOADOR'
      Required = True
    end
    object TB_DoadorNOME_DOADOR: TStringField
      FieldName = 'NOME_DOADOR'
      Origin = 'NOME_DOADOR'
      Size = 100
    end
    object TB_DoadorCONTATO_DOADOR: TStringField
      FieldName = 'CONTATO_DOADOR'
      Origin = 'CONTATO_DOADOR'
      EditMask = '!\(99\) 0000-0000;1;_'
      Size = 50
    end
    object TB_DoadorEMAIL: TStringField
      FieldName = 'E-MAIL'
      Origin = '"E-MAIL"'
      Size = 50
    end
  end
  object DataSDoador: TDataSource
    DataSet = TB_Doador
    Left = 128
    Top = 96
  end
  object TB_Destino: TFDTable
    Active = True
    IndexFieldNames = 'ID_DESTINO'
    Connection = Conexao
    UpdateOptions.UpdateTableName = 'DESTINO'
    TableName = 'DESTINO'
    Left = 216
    Top = 24
    object TB_DestinoID_DESTINO: TIntegerField
      FieldName = 'ID_DESTINO'
      Origin = 'ID_DESTINO'
      Required = True
    end
    object TB_DestinoNOME_DESTINO: TStringField
      FieldName = 'NOME_DESTINO'
      Origin = 'NOME_DESTINO'
      Required = True
      Size = 60
    end
  end
  object DataSDestino: TDataSource
    DataSet = TB_Destino
    Left = 216
    Top = 96
  end
  object TB_Doacao: TFDTable
    Active = True
    IndexFieldNames = 'ID_DOACAO;ID_DOADOR;IDDESTINO'
    Connection = Conexao
    UpdateOptions.UpdateTableName = 'DOACAO'
    TableName = 'DOACAO'
    Left = 304
    Top = 24
    object TB_DoacaoID_DOACAO: TIntegerField
      FieldName = 'ID_DOACAO'
      Origin = 'ID_DOACAO'
      Required = True
    end
    object TB_DoacaoID_DOADOR: TStringField
      FieldName = 'ID_DOADOR'
      Origin = 'ID_DOADOR'
      Required = True
      Size = 100
    end
    object TB_DoacaoIDDESTINO: TStringField
      FieldName = 'IDDESTINO'
      Origin = 'IDDESTINO'
      Required = True
      Size = 60
    end
    object TB_DoacaoVALOR_DOACAO: TBCDField
      FieldName = 'VALOR_DOACAO'
      Origin = 'VALOR_DOACAO'
      Required = True
      Precision = 18
      Size = 2
    end
    object TB_DoacaoDATA_HORA: TSQLTimeStampField
      FieldName = 'DATA_HORA'
      Origin = 'DATA_HORA'
      Required = True
    end
  end
  object DataSDoacao: TDataSource
    DataSet = TB_Doacao
    Left = 304
    Top = 96
  end
  object SQLSomaDoacao: TFDCommand
    Connection = Conexao
    ParamData = <
      item
        Name = 'IDDoacao'
      end
      item
        Name = 'SomaDoacao'
      end>
    Left = 64
    Top = 192
  end
  object SQLSubtraiDoacao: TFDCommand
    Connection = Conexao
    ParamData = <
      item
        Name = 'IDDoacao'
      end
      item
        Name = 'SubtracaoDoacao'
      end>
    Left = 64
    Top = 256
  end
  object FDQuery_Doador: TFDQuery
    Active = True
    Connection = Conexao
    SQL.Strings = (
      'SELECT * FROM DOADOR')
    Left = 208
    Top = 176
  end
  object FDQuery_Destino: TFDQuery
    Active = True
    Connection = Conexao
    SQL.Strings = (
      'SELECT * FROM DESTINO')
    Left = 312
    Top = 176
  end
end
