object FormPrincipal: TFormPrincipal
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'Atividade 1'
  ClientHeight = 210
  ClientWidth = 262
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
  object btnNmr1: TButton
    Left = 88
    Top = 64
    Width = 75
    Height = 25
    Caption = 'N'#250'mero 1'
    TabOrder = 0
    OnClick = btnNmr1Click
  end
  object btnNmr2: TButton
    Left = 88
    Top = 95
    Width = 75
    Height = 25
    Caption = 'N'#250'mero 2'
    TabOrder = 1
    OnClick = btnNmr2Click
  end
end
