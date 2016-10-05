object DmCadastroLocalizacao: TDmCadastroLocalizacao
  OldCreateOrder = False
  Height = 270
  Width = 466
  object SdsPais: TSQLDataSet
    CommandText = 'SELECT PAI_CODIGO, PAI_NOME, PAI_SIGLA,'#13#10'PAI_BACEN FROM PAIS'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DmDatabase.Conexao
    Left = 64
    Top = 48
    object SdsPaisPAI_CODIGO: TIntegerField
      DisplayLabel = 'CODIGO'
      FieldName = 'PAI_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object SdsPaisPAI_NOME: TStringField
      DisplayLabel = 'NOME'
      FieldName = 'PAI_NOME'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 60
    end
    object SdsPaisPAI_SIGLA: TStringField
      DisplayLabel = 'SIGLA'
      FieldName = 'PAI_SIGLA'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 3
    end
    object SdsPaisPAI_BACEN: TIntegerField
      DisplayLabel = 'BACEN'
      FieldName = 'PAI_BACEN'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
  end
  object DspPais: TDataSetProvider
    DataSet = SdsPais
    Options = [poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    Left = 64
    Top = 112
  end
  object CdsPais: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspPais'
    AfterPost = CdsPaisAfterPost
    AfterDelete = CdsPaisAfterDelete
    Left = 64
    Top = 176
    object CdsPaisPAI_CODIGO: TIntegerField
      DisplayLabel = 'CODIGO'
      FieldName = 'PAI_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CdsPaisPAI_NOME: TStringField
      DisplayLabel = 'NOME'
      FieldName = 'PAI_NOME'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 60
    end
    object CdsPaisPAI_SIGLA: TStringField
      DisplayLabel = 'SIGLA'
      FieldName = 'PAI_SIGLA'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 3
    end
    object CdsPaisPAI_BACEN: TIntegerField
      DisplayLabel = 'BACEN'
      FieldName = 'PAI_BACEN'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
  end
  object SdsEstado: TSQLDataSet
    CommandText = 
      'select EST_CODIGO, EST_NOME, EST_SIGLA, EST_PAI_CODIGO'#13#10'from EST' +
      'ADO'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DmDatabase.Conexao
    Left = 120
    Top = 48
    object SdsEstadoEST_CODIGO: TIntegerField
      FieldName = 'EST_CODIGO'
      Required = True
    end
    object SdsEstadoEST_NOME: TStringField
      FieldName = 'EST_NOME'
      Required = True
      Size = 60
    end
    object SdsEstadoEST_SIGLA: TStringField
      FieldName = 'EST_SIGLA'
      Required = True
      Size = 2
    end
    object SdsEstadoEST_PAI_CODIGO: TIntegerField
      FieldName = 'EST_PAI_CODIGO'
      Required = True
    end
  end
  object DspEstado: TDataSetProvider
    DataSet = SdsEstado
    UpdateMode = upWhereKeyOnly
    Left = 120
    Top = 112
  end
  object CdsEstado: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspEstado'
    AfterPost = CdsEstadoAfterPost
    Left = 128
    Top = 176
    object CdsEstadoEST_CODIGO: TIntegerField
      FieldName = 'EST_CODIGO'
      Required = True
    end
    object CdsEstadoEST_NOME: TStringField
      FieldName = 'EST_NOME'
      Required = True
      Size = 60
    end
    object CdsEstadoEST_SIGLA: TStringField
      FieldName = 'EST_SIGLA'
      Required = True
      Size = 2
    end
    object CdsEstadoEST_PAI_CODIGO: TIntegerField
      FieldName = 'EST_PAI_CODIGO'
      Required = True
    end
    object CdsEstadoPAI_NOME: TStringField
      FieldKind = fkLookup
      FieldName = 'PAI_NOME'
      LookupDataSet = CdsPais
      LookupKeyFields = 'PAI_CODIGO'
      LookupResultField = 'PAI_NOME'
      KeyFields = 'EST_PAI_CODIGO'
      Size = 60
      Lookup = True
    end
  end
  object CdsCidade: TClientDataSet
    Aggregates = <>
    Params = <>
    AfterPost = CdsCidadeAfterPost
    AfterDelete = CdsCidadeAfterDelete
    Left = 192
    Top = 176
    object CdsCidadeCID_CODIGO: TIntegerField
      FieldName = 'CID_CODIGO'
      Required = True
    end
    object CdsCidadeCID_NOME: TStringField
      FieldName = 'CID_NOME'
      Required = True
      Size = 60
    end
    object CdsCidadeCID_IBGE: TIntegerField
      FieldName = 'CID_IBGE'
      Required = True
    end
  end
  object SdsCidade: TSQLDataSet
    CommandText = 'select CID_CODIGO, CID_NOME, CID_IBGE'#13#10'from CIDADE'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DmDatabase.Conexao
    Left = 184
    Top = 48
    object SdsCidadeCID_CODIGO: TIntegerField
      FieldName = 'CID_CODIGO'
      Required = True
    end
    object SdsCidadeCID_NOME: TStringField
      FieldName = 'CID_NOME'
      Required = True
      Size = 60
    end
    object SdsCidadeCID_IBGE: TIntegerField
      FieldName = 'CID_IBGE'
      Required = True
    end
  end
  object DspCidade: TDataSetProvider
    DataSet = SdsCidade
    UpdateMode = upWhereKeyOnly
    Left = 192
    Top = 112
  end
end
