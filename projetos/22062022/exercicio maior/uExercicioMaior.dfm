object frExercicioMaior: TfrExercicioMaior
  Left = 0
  Top = 0
  Caption = 'Exercicio maior'
  ClientHeight = 181
  ClientWidth = 292
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
    Left = 32
    Top = 27
    Width = 63
    Height = 20
    Caption = 'N'#250'mero:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 20
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbQuantidade: TLabel
    Left = 8
    Top = 62
    Width = 87
    Height = 20
    Caption = 'Quantidade:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 20
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbNumerosInformados: TLabel
    Left = 8
    Top = 135
    Width = 115
    Height = 15
    Caption = 'N'#250'meros informados:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbQuantidadeInformada: TLabel
    Left = 129
    Top = 135
    Width = 7
    Height = 15
    Caption = '0'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object edNumero: TEdit
    Left = 112
    Top = 24
    Width = 161
    Height = 28
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 20
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    TextHint = 'Insira o seu n'#250'mero'
  end
  object btAdicionar: TButton
    Left = 184
    Top = 125
    Width = 89
    Height = 33
    Caption = 'Adicionar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 20
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    OnClick = btAdicionarClick
  end
  object cbQuantidade: TComboBox
    Left = 112
    Top = 58
    Width = 161
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
    Text = '5 n'#250'meros'
    OnChange = cbQuantidadeChange
    Items.Strings = (
      '5 n'#250'meros'
      '10 n'#250'meros'
      '15 n'#250'meros'
      '20 n'#250'meros'
      '25 n'#250'meros'
      '30 n'#250'meros'
      '35 n'#250'meros'
      '40 n'#250'meros'
      '45 n'#250'meros'
      '50 n'#250'meros'
      '55 n'#250'meros'
      '60 n'#250'meros'
      '65 n'#250'meros'
      '70 n'#250'meros'
      '75 n'#250'meros'
      '80 n'#250'meros'
      '85 n'#250'meros'
      '90 n'#250'meros'
      '95 n'#250'meros'
      '100 n'#250'meros')
  end
  object ckPersonalizado: TCheckBox
    Left = 8
    Top = 104
    Width = 143
    Height = 17
    Caption = 'Quantidade personalizada'
    TabOrder = 2
    OnClick = ckPersonalizadoClick
  end
  object edQuantidadePersonalizada: TEdit
    Left = 157
    Top = 102
    Width = 116
    Height = 21
    TabOrder = 3
    OnChange = edQuantidadePersonalizadaChange
  end
end
