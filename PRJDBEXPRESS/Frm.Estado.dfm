object FrmEstado: TFrmEstado
  Left = 0
  Top = 0
  Caption = 'Cadastro de Estados'
  ClientHeight = 370
  ClientWidth = 671
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 88
    Width = 33
    Height = 13
    Caption = 'C'#243'digo'
  end
  object Label2: TLabel
    Left = 256
    Top = 88
    Width = 27
    Height = 13
    Caption = 'Nome'
  end
  object Label3: TLabel
    Left = 607
    Top = 88
    Width = 22
    Height = 13
    Caption = 'Sigla'
  end
  object Label4: TLabel
    Left = 18
    Top = 152
    Width = 19
    Height = 13
    Caption = 'Pais'
  end
  object DBNavigator1: TDBNavigator
    Left = 0
    Top = 0
    Width = 670
    Height = 73
    DataSource = DsEstado
    TabOrder = 0
  end
  object DBEdit1: TDBEdit
    Left = 16
    Top = 107
    Width = 185
    Height = 21
    DataField = 'EST_CODIGO'
    DataSource = DsEstado
    TabOrder = 1
  end
  object DBEdit2: TDBEdit
    Left = 256
    Top = 107
    Width = 345
    Height = 21
    DataField = 'EST_NOME'
    DataSource = DsEstado
    TabOrder = 2
  end
  object DBEdit3: TDBEdit
    Left = 607
    Top = 107
    Width = 56
    Height = 21
    DataField = 'EST_SIGLA'
    DataSource = DsEstado
    TabOrder = 3
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 18
    Top = 171
    Width = 645
    Height = 21
    DataField = 'EST_PAI_CODIGO'
    DataSource = DsEstado
    KeyField = 'PAI_CODIGO'
    ListField = 'PAI_NOME'
    ListSource = DsPais
    TabOrder = 4
  end
  object DBGrid1: TDBGrid
    Left = -7
    Top = 211
    Width = 670
    Height = 158
    DataSource = DsEstado
    TabOrder = 5
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'EST_CODIGO'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'EST_NOME'
        Width = 215
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'EST_SIGLA'
        Width = 118
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'EST_PAI_CODIGO'
        Width = 108
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PAI_NOME'
        Width = 110
        Visible = True
      end>
  end
  object DsEstado: TDataSource
    DataSet = DmCadastroLocalizacao.CdsEstado
    Left = 472
    Top = 136
  end
  object DsPais: TDataSource
    DataSet = DmCadastroLocalizacao.CdsPais
    Left = 536
    Top = 136
  end
end
