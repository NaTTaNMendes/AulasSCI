object frMaior: TfrMaior
  Left = 0
  Top = 0
  Caption = 'Maior n'#250'mero'
  ClientHeight = 147
  ClientWidth = 256
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
    Left = 65
    Top = 35
    Width = 41
    Height = 13
    Caption = 'N'#250'mero:'
  end
  object lbQuantidade: TLabel
    Left = 46
    Top = 59
    Width = 60
    Height = 13
    Caption = 'Quantidade:'
  end
  object lbQuantidadeTexto: TLabel
    Left = 8
    Top = 119
    Width = 114
    Height = 13
    Caption = 'Quantidade adicionada:'
  end
  object lbQuantidadeAdicionada: TLabel
    Left = 128
    Top = 119
    Width = 6
    Height = 13
    Caption = '0'
  end
  object edNumero: TEdit
    Left = 112
    Top = 27
    Width = 121
    Height = 21
    TabOrder = 0
    TextHint = 'Insira o n'#250'mero'
  end
  object cbQuantidade: TComboBox
    Left = 112
    Top = 54
    Width = 121
    Height = 21
    Style = csDropDownList
    ItemIndex = 0
    TabOrder = 1
    Text = '5 n'#250'meros'
    OnChange = cbQuantidadeChange
    Items.Strings = (
      '5 n'#250'meros'
      '10 n'#250'meros'
      '15 n'#250'meros')
  end
  object ckPersonalizada: TCheckBox
    Left = 21
    Top = 83
    Width = 84
    Height = 17
    Caption = 'Personalizada'
    TabOrder = 2
    OnClick = ckPersonalizadaClick
  end
  object edQuantidade: TEdit
    Left = 111
    Top = 81
    Width = 121
    Height = 21
    TabOrder = 3
    TextHint = 'Insira a quantidade'
  end
  object btAdicionar: TButton
    Left = 158
    Top = 114
    Width = 75
    Height = 25
    Caption = 'Adicionar'
    TabOrder = 4
    OnClick = btAdicionarClick
  end
end
