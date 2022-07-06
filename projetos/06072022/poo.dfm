object frCadastro: TfrCadastro
  Left = 0
  Top = 0
  Caption = 'Cadastro'
  ClientHeight = 250
  ClientWidth = 323
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
  object lbCodigo: TLabel
    Left = 56
    Top = 29
    Width = 37
    Height = 13
    Caption = 'C'#243'digo:'
  end
  object lbNome: TLabel
    Left = 62
    Top = 56
    Width = 31
    Height = 13
    Caption = 'Nome:'
  end
  object lbCNPJ: TLabel
    Left = 64
    Top = 83
    Width = 29
    Height = 13
    Caption = 'CNPJ:'
  end
  object lbDono: TLabel
    Left = 64
    Top = 110
    Width = 29
    Height = 13
    Caption = 'Dono:'
  end
  object lbEndereco: TLabel
    Left = 44
    Top = 137
    Width = 49
    Height = 13
    Caption = 'Endere'#231'o:'
  end
  object lbReceita: TLabel
    Left = 24
    Top = 164
    Width = 69
    Height = 13
    Caption = 'Receita di'#225'ria:'
  end
  object edCodigo: TEdit
    Left = 107
    Top = 26
    Width = 182
    Height = 21
    TabOrder = 0
    TextHint = 'Insira o c'#243'digo'
  end
  object edNome: TEdit
    Left = 107
    Top = 53
    Width = 182
    Height = 21
    TabOrder = 1
    TextHint = 'Insira o nome'
  end
  object edCNPJ: TEdit
    Left = 107
    Top = 80
    Width = 182
    Height = 21
    TabOrder = 2
    TextHint = 'Insira o CNPJ'
  end
  object edDono: TEdit
    Left = 107
    Top = 107
    Width = 182
    Height = 21
    TabOrder = 3
    TextHint = 'Insira o nome do dono'
  end
  object edEndereco: TEdit
    Left = 107
    Top = 134
    Width = 182
    Height = 21
    TabOrder = 4
    TextHint = 'Insira o endere'#231'o'
  end
  object edReceita: TEdit
    Left = 107
    Top = 161
    Width = 182
    Height = 21
    TabOrder = 5
    TextHint = 'Insira a receita'
  end
  object btCadastrar: TButton
    Left = 115
    Top = 204
    Width = 75
    Height = 25
    Caption = 'Cadastrar'
    TabOrder = 6
  end
end
