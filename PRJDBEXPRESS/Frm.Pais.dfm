﻿object FrmPais: TFrmPais
  Left = 0
  Top = 0
  Caption = 'Cadastros de Paises'
  ClientHeight = 369
  ClientWidth = 668
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
  object Nome: TLabel
    Left = 256
    Top = 94
    Width = 27
    Height = 13
    Caption = 'Nome'
  end
  object BACEN: TLabel
    Left = 256
    Top = 149
    Width = 33
    Height = 13
    Caption = 'BACEN'
  end
  object Sigla: TLabel
    Left = 16
    Top = 149
    Width = 22
    Height = 13
    Caption = 'Sigla'
  end
  object Código: TLabel
    Left = 16
    Top = 86
    Width = 33
    Height = 13
    Caption = 'C'#243'digo'
  end
  object DBEdit1: TDBEdit
    Left = 16
    Top = 105
    Width = 185
    Height = 21
    DataField = 'PAI_CODIGO'
    DataSource = DsPais
    TabOrder = 0
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 216
    Width = 669
    Height = 155
    DataSource = DsPais
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'PAI_CODIGO'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PAI_NOME'
        Width = 325
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PAI_SIGLA'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PAI_BACEN'
        Width = 100
        Visible = True
      end>
  end
  object DBNavigator1: TDBNavigator
    Left = -1
    Top = 0
    Width = 670
    Height = 73
    DataSource = DsPais
    TabOrder = 2
  end
  object DBEdit2: TDBEdit
    Left = 16
    Top = 168
    Width = 185
    Height = 21
    DataField = 'PAI_SIGLA'
    DataSource = DsPais
    TabOrder = 3
  end
  object DBEdit3: TDBEdit
    Left = 256
    Top = 168
    Width = 121
    Height = 21
    DataField = 'PAI_BACEN'
    DataSource = DsPais
    TabOrder = 4
  end
  object DBEdit4: TDBEdit
    Left = 256
    Top = 113
    Width = 413
    Height = 21
    DataField = 'PAI_NOME'
    DataSource = DsPais
    TabOrder = 5
  end
  object DsPais: TDataSource
    DataSet = DmCadastroLocalizacao.CdsPais
    Left = 584
    Top = 152
  end
end
