inherited uCadProduto: TuCadProduto
  Caption = 'Cadastro produto'
  ClientHeight = 209
  ClientWidth = 467
  ExplicitWidth = 483
  ExplicitHeight = 248
  PixelsPerInch = 96
  TextHeight = 13
  object lbCodigo: TLabel [0]
    Left = 49
    Top = 61
    Width = 37
    Height = 13
    Caption = 'C'#243'digo:'
  end
  object lbDescricao: TLabel [1]
    Left = 36
    Top = 93
    Width = 50
    Height = 13
    Caption = 'Descri'#231#227'o:'
  end
  object lbNCM: TLabel [2]
    Left = 60
    Top = 125
    Width = 26
    Height = 13
    Caption = 'NCM:'
  end
  inherited btSalvar: TButton
    Left = 336
    Top = 32
    ExplicitLeft = 336
    ExplicitTop = 32
  end
  inherited btDeletar: TButton
    Left = 336
    Top = 71
    ExplicitLeft = 336
    ExplicitTop = 71
  end
  inherited btLimpar: TButton
    Left = 336
    Top = 110
    ExplicitLeft = 336
    ExplicitTop = 110
  end
  inherited btConsultar: TButton
    Left = 336
    Top = 149
    ExplicitLeft = 336
    ExplicitTop = 149
  end
  object edCodigo: TEdit [7]
    Left = 123
    Top = 58
    Width = 158
    Height = 21
    TabOrder = 4
    TextHint = 'Insira o c'#243'digo'
  end
  object edDescricao: TEdit [8]
    Left = 123
    Top = 90
    Width = 158
    Height = 21
    TabOrder = 5
    TextHint = 'Insira a descri'#231#227'o'
  end
  object edNCM: TEdit [9]
    Left = 123
    Top = 122
    Width = 158
    Height = 21
    TabOrder = 6
    TextHint = 'Insira o NCM'
  end
  inherited imBotao: TImageList
    Left = 456
    Top = 72
  end
  inherited imBotaoDesabilitado: TImageList
    Left = 457
    Top = 128
  end
end
