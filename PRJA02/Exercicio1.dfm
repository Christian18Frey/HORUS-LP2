object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 433
  ClientWidth = 788
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 788
    Height = 433
    Align = alClient
    TabOrder = 0
    ExplicitLeft = -8
    object Label2: TLabel
      Left = 17
      Top = 87
      Width = 160
      Height = 13
      Caption = 'Controle de Navega'#231#227'o e Edi'#231#227'o:'
    end
    object GroupBox1: TGroupBox
      Left = 1
      Top = 1
      Width = 786
      Height = 80
      Align = alTop
      Caption = 'Filtro'
      TabOrder = 0
      ExplicitLeft = 2
      object Label1: TLabel
        Left = 16
        Top = 32
        Width = 70
        Height = 13
        Caption = 'Valor do Filtro:'
      end
      object Edit1: TEdit
        Left = 92
        Top = 29
        Width = 293
        Height = 21
        TabOrder = 0
      end
      object Button1: TButton
        Left = 400
        Top = 27
        Width = 113
        Height = 25
        Caption = 'Adicionar Filtro'
        TabOrder = 1
      end
      object Button2: TButton
        Left = 528
        Top = 27
        Width = 113
        Height = 25
        Caption = 'Remover Filtro'
        TabOrder = 2
      end
    end
    object DBNavigator1: TDBNavigator
      Left = 370
      Top = 104
      Width = 410
      Height = 41
      DataSource = DataSource1
      TabOrder = 1
    end
    object Button3: TButton
      Left = 8
      Top = 334
      Width = 105
      Height = 25
      Caption = 'Limpar Dados'
      TabOrder = 2
      OnClick = Button3Click
    end
    object Button4: TButton
      Left = 8
      Top = 365
      Width = 105
      Height = 25
      Caption = 'Indexar por Id'
      TabOrder = 3
      OnClick = Button4Click
    end
    object Button5: TButton
      Left = 8
      Top = 396
      Width = 105
      Height = 25
      Caption = 'Indexar por Nome'
      TabOrder = 4
      OnClick = Button5Click
    end
    object Button6: TButton
      Left = 136
      Top = 396
      Width = 105
      Height = 25
      Caption = 'Percorrer'
      TabOrder = 5
      OnClick = Button6Click
    end
    object Edit2: TEdit
      Left = 136
      Top = 369
      Width = 105
      Height = 21
      TabOrder = 6
      Text = 'Edit2'
    end
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 151
    Width = 772
    Height = 177
    DataSource = DataSource1
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object ClientDataSet1: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    Params = <>
    OnCalcFields = ClientDataSet1CalcFields
    Left = 624
    Top = 344
    object ClientDataSet1Id: TIntegerField
      FieldName = 'Id'
    end
    object ClientDataSet1Nome: TStringField
      FieldName = 'Nome'
      Size = 50
    end
    object ClientDataSet1Valor: TCurrencyField
      FieldName = 'Valor'
    end
    object ClientDataSet1Quantidade: TFloatField
      FieldName = 'Quantidade'
    end
    object ClientDataSet1Total: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'Total'
      Calculated = True
    end
    object ClientDataSet1ProdutosTotal: TAggregateField
      FieldName = 'ProdutosTotal'
      Visible = True
      Active = True
      DisplayName = ''
      Expression = 'SUM(Quantidade*Valor)'
    end
  end
  object DataSource1: TDataSource
    DataSet = ClientDataSet1
    Left = 696
    Top = 344
  end
end
