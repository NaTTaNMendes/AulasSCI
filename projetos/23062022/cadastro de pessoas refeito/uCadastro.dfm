object frCadastro: TfrCadastro
  Left = 0
  Top = 0
  Caption = 'Cadastro'
  ClientHeight = 157
  ClientWidth = 219
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object lbNome: TLabel
    Left = 24
    Top = 32
    Width = 31
    Height = 13
    Caption = 'Nome:'
  end
  object lbIdade: TLabel
    Left = 23
    Top = 59
    Width = 32
    Height = 13
    Caption = 'Idade:'
  end
  object edNome: TEdit
    Left = 72
    Top = 29
    Width = 121
    Height = 21
    TabOrder = 0
    TextHint = 'Insira o nome'
  end
  object edIdade: TEdit
    Left = 72
    Top = 56
    Width = 121
    Height = 21
    TabOrder = 1
    TextHint = 'Insira a idade'
  end
  object ckEstudante: TCheckBox
    Left = 24
    Top = 83
    Width = 97
    Height = 17
    Caption = 'Estudante'
    TabOrder = 2
  end
  object btAdicionar: TButton
    Left = 118
    Top = 83
    Width = 75
    Height = 25
    Caption = 'Adicionar'
    TabOrder = 3
    OnClick = btAdicionarClick
  end
  object btMostrar: TButton
    Left = 48
    Top = 114
    Width = 121
    Height = 25
    Caption = 'Mostrar cadastrados'
    TabOrder = 4
    OnClick = btMostrarClick
  end
end
