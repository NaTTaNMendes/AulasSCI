inherited frCadastroRestaurante: TfrCadastroRestaurante
  Caption = 'Cadastro restaurante'
  ClientHeight = 293
  ExplicitHeight = 332
  PixelsPerInch = 96
  TextHeight = 13
  object lbQuantidadeFuncionario: TLabel [6]
    Left = 21
    Top = 196
    Width = 136
    Height = 13
    Caption = 'Quantidade de funcion'#225'rios:'
  end
  object lbPrincipalPrato: TLabel [7]
    Left = 21
    Top = 231
    Width = 72
    Height = 13
    Caption = 'Principal prato:'
  end
  inherited btCadastrar: TButton
    Left = 131
    Top = 260
    TabOrder = 8
    OnClick = btCadastrarClick
    ExplicitLeft = 131
    ExplicitTop = 260
  end
  object edQuantidadeFuncionario: TEdit
    Left = 176
    Top = 190
    Width = 113
    Height = 21
    TabOrder = 6
    TextHint = 'Insira a quantidade'
  end
  object edPrincipalPrato: TEdit
    Left = 107
    Top = 223
    Width = 182
    Height = 21
    TabOrder = 7
    TextHint = 'Insira o prato'
  end
end
