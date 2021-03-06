inherited frCadastro: TfrCadastro
  Caption = 'Cadastro'
  ClientHeight = 240
  ClientWidth = 558
  OnShow = FormShow
  ExplicitWidth = 574
  ExplicitHeight = 279
  PixelsPerInch = 96
  TextHeight = 13
  object lbCodigo: TLabel
    Left = 50
    Top = 24
    Width = 48
    Height = 18
    Caption = 'C'#243'digo:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 18
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbCPF: TLabel
    Left = 276
    Top = 64
    Width = 30
    Height = 18
    Caption = 'CPF:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 18
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbNome: TLabel
    Left = 54
    Top = 109
    Width = 44
    Height = 18
    Caption = 'Nome:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 18
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbEndereco: TLabel
    Left = 32
    Top = 149
    Width = 65
    Height = 18
    Caption = 'Endere'#231'o:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 18
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object edCodigo: TEdit
    Left = 116
    Top = 21
    Width = 121
    Height = 26
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 18
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    TextHint = 'Insira o c'#243'digo'
    OnExit = edCodigoExit
  end
  object cbPessoa: TComboBox
    Left = 116
    Top = 61
    Width = 145
    Height = 26
    Style = csDropDownList
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 18
    Font.Name = 'Tahoma'
    Font.Style = []
    ItemIndex = 0
    ParentFont = False
    TabOrder = 1
    Text = 'Pessoa f'#237'sica'
    OnChange = cbPessoaChange
    Items.Strings = (
      'Pessoa f'#237'sica'
      'Pessoa jur'#237'dica')
  end
  object edCPF: TEdit
    Left = 324
    Top = 61
    Width = 193
    Height = 26
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 18
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    TextHint = 'Insira o CPF'
  end
  object edNome: TEdit
    Left = 116
    Top = 106
    Width = 401
    Height = 26
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 18
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    TextHint = 'Insira o nome'
  end
  object edEndereco: TEdit
    Left = 116
    Top = 146
    Width = 401
    Height = 26
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 18
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    TextHint = 'Insira o endere'#231'o'
  end
  object ckIsento: TCheckBox
    Left = 40
    Top = 65
    Width = 70
    Height = 17
    Caption = 'Isento'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 18
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
  end
  object btSalvar: TButton
    Left = 98
    Top = 192
    Width = 75
    Height = 25
    Caption = 'Salvar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 18
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
    OnClick = btSalvarClick
  end
  object btExcluir: TButton
    Left = 199
    Top = 192
    Width = 75
    Height = 25
    Caption = 'Excluir'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 18
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 7
    OnClick = btExcluirClick
  end
  object btExportar: TButton
    Left = 304
    Top = 192
    Width = 75
    Height = 25
    Caption = 'Exportar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 18
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 8
    OnClick = btExportarClick
  end
  object btLimpar: TButton
    Left = 408
    Top = 192
    Width = 75
    Height = 25
    Caption = 'Limpar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 18
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 9
    OnClick = btLimparClick
  end
  object btTelaConsulta: TButton
    Left = 424
    Top = 8
    Width = 126
    Height = 25
    Caption = 'Tela de consulta'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 18
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 10
    OnClick = btTelaConsultaClick
  end
end
