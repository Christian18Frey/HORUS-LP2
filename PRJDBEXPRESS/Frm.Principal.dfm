object FrmPrincipal: TFrmPrincipal
  Left = 0
  Top = 0
  Caption = 'FrmPrincipal'
  ClientHeight = 202
  ClientWidth = 447
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 13
  object MainMenu1: TMainMenu
    Left = 32
    Top = 40
    object Cadastros1: TMenuItem
      Caption = 'Cadastros'
      object Localizao1: TMenuItem
        Caption = 'Localiza'#231#227'o'
        object Pas1: TMenuItem
          Caption = 'Pa'#237's'
          OnClick = Pas1Click
        end
        object Estado1: TMenuItem
          Caption = 'Estado'
          OnClick = Estado1Click
        end
        object Cidade1: TMenuItem
          Caption = 'Cidade'
        end
      end
    end
    object Sair1: TMenuItem
      Caption = 'Sair'
      OnClick = Sair1Click
    end
  end
end
