object DM: TDM
  OldCreateOrder = False
  Height = 310
  Width = 586
  object FDConnection1: TFDConnection
    Params.Strings = (
      
        'Database=C:\4'#186' PERIODO\QUARTA - DELPHI\AULA 9- FIREDAC\CADASTRO ' +
        'VEICULAR FIREDAC.FDB'
      'User_Name=SYSDBA'
      'Password=masterkey'
      'DriverID=FB')
    Connected = True
    LoginPrompt = False
    Left = 152
    Top = 24
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 248
    Top = 32
  end
  object FDPhysFBDriverLink1: TFDPhysFBDriverLink
    Left = 336
    Top = 32
  end
  object QryProprietario: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT PROPRIETARIO.PRP_CODIGO, '
      'PROPRIETARIO.PRP_NOME, '
      'PROPRIETARIO.PRP_ENDERECO'
      'FROM PROPRIETARIO')
    Left = 144
    Top = 120
    object QryProprietarioPRP_CODIGO: TIntegerField
      DisplayLabel = 'C'#211'DIGO'
      FieldName = 'PRP_CODIGO'
      Origin = 'PRP_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryProprietarioPRP_NOME: TStringField
      DisplayLabel = 'NOME'
      FieldName = 'PRP_NOME'
      Origin = 'PRP_NOME'
      Required = True
      Size = 60
    end
    object QryProprietarioPRP_ENDERECO: TStringField
      DisplayLabel = 'ENDERE'#199'O'
      FieldName = 'PRP_ENDERECO'
      Origin = 'PRP_ENDERECO'
      Size = 100
    end
  end
end
