object frTelaCadastro: TfrTelaCadastro
  Left = 0
  Top = 0
  Caption = 'Tela de cadastro'
  ClientHeight = 143
  ClientWidth = 345
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
  object lbNome: TLabel
    Left = 8
    Top = 21
    Width = 118
    Height = 20
    Caption = 'Nome completo:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 20
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbGenero: TLabel
    Left = 69
    Top = 54
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
  object cbGenero: TComboBox
    Left = 140
    Top = 57
    Width = 197
    Height = 21
    TabOrder = 0
    Items.Strings = (
      'Masculino'
      'Feminino'
      'Outro')
  end
  object edNomeCompleto: TEdit
    Left = 140
    Top = 24
    Width = 197
    Height = 21
    TabOrder = 1
  end
  object ckMenorDeIdade: TCheckBox
    Left = 29
    Top = 96
    Width = 97
    Height = 17
    Caption = 'Menor de idade'
    TabOrder = 2
  end
  object btCadastrar: TButton
    Left = 140
    Top = 92
    Width = 75
    Height = 25
    Caption = 'Cadastrar'
    TabOrder = 3
    OnClick = btCadastrarClick
  end
end
