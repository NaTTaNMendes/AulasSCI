object frExercicio1: TfrExercicio1
  Left = 0
  Top = 0
  Caption = 'Exerc'#237'cio 1'
  ClientHeight = 201
  ClientWidth = 337
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
  object lbNumero1: TLabel
    Left = 24
    Top = 40
    Width = 126
    Height = 20
    Caption = 'Primeiro n'#250'mero:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 20
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbNumero2: TLabel
    Left = 24
    Top = 74
    Width = 128
    Height = 20
    Caption = 'Segundo n'#250'mero:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 20
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbNumero3: TLabel
    Left = 28
    Top = 112
    Width = 124
    Height = 20
    Caption = 'Terceiro n'#250'mero:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 20
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object edNumero1: TEdit
    Left = 176
    Top = 43
    Width = 137
    Height = 21
    TabOrder = 0
    OnExit = edNumero1Exit
  end
  object edNumero2: TEdit
    Left = 176
    Top = 77
    Width = 137
    Height = 21
    TabOrder = 1
    OnExit = edNumero1Exit
  end
  object edNumero3: TEdit
    Left = 176
    Top = 115
    Width = 137
    Height = 21
    TabOrder = 2
    OnExit = edNumero1Exit
  end
  object btIniciar: TButton
    Left = 128
    Top = 160
    Width = 75
    Height = 25
    Caption = 'Iniciar'
    TabOrder = 3
    OnClick = btIniciarClick
  end
end
