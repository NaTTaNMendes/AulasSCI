object frCadastro: TfrCadastro
  Left = 0
  Top = 0
  Caption = 'Cadastro'
  ClientHeight = 165
  ClientWidth = 312
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
    Left = 34
    Top = 32
    Width = 48
    Height = 20
    Caption = 'Nome:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 20
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbGenero: TLabel
    Left = 25
    Top = 70
    Width = 57
    Height = 20
    Caption = 'G'#234'nero:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 20
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object edNome: TEdit
    Left = 88
    Top = 29
    Width = 193
    Height = 28
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 20
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    TextHint = 'Insira o nome'
  end
  object cbGenero: TComboBox
    Left = 88
    Top = 67
    Width = 193
    Height = 28
    Style = csDropDownList
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 20
    Font.Name = 'Tahoma'
    Font.Style = []
    ItemIndex = 0
    ParentFont = False
    TabOrder = 1
    Text = 'Masculino'
    Items.Strings = (
      'Masculino'
      'Feminino'
      'Outro')
  end
  object ckEstrangeiro: TCheckBox
    Left = 34
    Top = 116
    Width = 97
    Height = 25
    Caption = 'Estrangeiro'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 20
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
  end
  object btAdicionar: TButton
    Left = 192
    Top = 112
    Width = 89
    Height = 33
    Caption = 'Adicionar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 20
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    OnClick = btAdicionarClick
  end
end
