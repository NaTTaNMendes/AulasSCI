object frExercicio1: TfrExercicio1
  Left = 0
  Top = 0
  Caption = 'Exercicio 1.2'
  ClientHeight = 155
  ClientWidth = 407
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object lbNumero: TLabel
    Left = 16
    Top = 48
    Width = 151
    Height = 20
    Caption = 'Informe um n'#250'mero:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 20
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object edNumero: TEdit
    Left = 184
    Top = 51
    Width = 193
    Height = 21
    TabOrder = 0
  end
  object btAdicionar: TButton
    Left = 108
    Top = 112
    Width = 75
    Height = 25
    Caption = 'Adicionar'
    TabOrder = 1
    OnClick = btAdicionarClick
  end
  object btMostrar: TButton
    Left = 224
    Top = 112
    Width = 89
    Height = 25
    Caption = 'Mostrar maior'
    TabOrder = 2
    OnClick = btMostrarClick
  end
end
