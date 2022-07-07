object frCadastro: TfrCadastro
  Left = 0
  Top = 0
  Caption = 'Cadastro'
  ClientHeight = 197
  ClientWidth = 308
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lbModelo: TLabel
    Left = 48
    Top = 32
    Width = 38
    Height = 13
    Caption = 'Modelo:'
  end
  object lbCor: TLabel
    Left = 48
    Top = 59
    Width = 21
    Height = 13
    Caption = 'Cor:'
  end
  object lbPeso: TLabel
    Left = 48
    Top = 86
    Width = 27
    Height = 13
    Caption = 'Peso:'
  end
  object edModelo: TEdit
    Left = 104
    Top = 29
    Width = 153
    Height = 21
    TabOrder = 0
    TextHint = 'Informe o modelo'
  end
  object edCor: TEdit
    Left = 104
    Top = 56
    Width = 153
    Height = 21
    TabOrder = 1
    TextHint = 'Informe a cor'
  end
  object edPeso: TEdit
    Left = 104
    Top = 83
    Width = 153
    Height = 21
    TabOrder = 2
    TextHint = 'Informe o peso'
  end
  object btCadastrar: TButton
    Left = 112
    Top = 136
    Width = 75
    Height = 25
    Caption = 'Cadastrar'
    TabOrder = 3
  end
end
