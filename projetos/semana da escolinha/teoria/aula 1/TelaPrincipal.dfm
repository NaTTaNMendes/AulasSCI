object formPrincipal: TformPrincipal
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'Primeiro Programa'
  ClientHeight = 159
  ClientWidth = 363
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object btnVariaveis: TButton
    Left = 121
    Top = 24
    Width = 121
    Height = 25
    Caption = 'Mostrar vari'#225'veis'
    TabOrder = 0
    OnClick = btnVariaveisClick
  end
  object btnComparacoes: TButton
    Left = 121
    Top = 55
    Width = 121
    Height = 25
    Caption = 'Mostrar compara'#231#245'es'
    TabOrder = 1
    OnClick = btnComparacoesClick
  end
  object btnIf: TButton
    Left = 121
    Top = 86
    Width = 121
    Height = 25
    Caption = 'If'
    TabOrder = 2
    OnClick = btnIfClick
  end
  object btnFor: TButton
    Left = 121
    Top = 117
    Width = 121
    Height = 25
    Caption = 'For e While'
    TabOrder = 3
    OnClick = btnForClick
  end
end
