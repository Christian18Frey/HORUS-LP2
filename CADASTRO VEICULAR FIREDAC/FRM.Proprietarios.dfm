object FrmProprietarios: TFrmProprietarios
  Left = 0
  Top = 0
  Caption = 'PROPRIET'#193'RIOS'
  ClientHeight = 529
  ClientWidth = 779
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 93
    Width = 33
    Height = 13
    Caption = 'C'#243'digo'
  end
  object Nome: TLabel
    Left = 8
    Top = 139
    Width = 27
    Height = 13
    Caption = 'Nome'
  end
  object Endereço: TLabel
    Left = 8
    Top = 185
    Width = 45
    Height = 13
    Caption = 'Endere'#231'o'
  end
  object DBNavigator1: TDBNavigator
    Left = 0
    Top = 0
    Width = 780
    Height = 57
    TabOrder = 0
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 328
    Width = 780
    Height = 201
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object DBEdit1: TDBEdit
    Left = 8
    Top = 112
    Width = 137
    Height = 21
    TabOrder = 2
  end
  object DBEdit2: TDBEdit
    Left = 8
    Top = 158
    Width = 593
    Height = 21
    TabOrder = 3
  end
  object DBEdit3: TDBEdit
    Left = 8
    Top = 204
    Width = 593
    Height = 21
    TabOrder = 4
  end
  object DsProprietario: TDataSource
    Left = 704
    Top = 80
  end
end
