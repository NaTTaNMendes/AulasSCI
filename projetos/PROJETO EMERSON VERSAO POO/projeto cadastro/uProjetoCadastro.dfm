object frCadastroAntigo: TfrCadastroAntigo
  Left = 0
  Top = 0
  Caption = 'Cadastro'
  ClientHeight = 367
  ClientWidth = 514
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
    Left = 30
    Top = 16
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
    Left = 256
    Top = 56
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
    Left = 34
    Top = 101
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
    Left = 12
    Top = 141
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
    Left = 96
    Top = 13
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
    Left = 96
    Top = 53
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
    Left = 304
    Top = 53
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
    Left = 96
    Top = 98
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
    Left = 96
    Top = 138
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
    Left = 20
    Top = 57
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
    Left = 70
    Top = 176
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
    Left = 171
    Top = 176
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
    Left = 276
    Top = 176
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
  object grDados: TDBGrid
    Left = 8
    Top = 216
    Width = 498
    Height = 139
    DataSource = dsDados
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 10
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnTitleClick = grDadosTitleClick
    Columns = <
      item
        Expanded = False
        FieldName = 'bdCODIGO'
        Title.Caption = 'C'#243'digo'
        Width = 41
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'bdTIPO'
        Title.Caption = 'Tipo'
        Width = 61
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'bdCPF'
        Title.Caption = 'CPF ou CNPJ'
        Width = 114
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'bdNOME'
        Title.Caption = 'Nome'
        Width = 138
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'bdENDERECO'
        Title.Caption = 'Endere'#231'o'
        Width = 159
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'bdISENTO'
        Title.Caption = 'Isento'
        Width = 185
        Visible = True
      end>
  end
  object btLimpar: TButton
    Left = 380
    Top = 176
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
  object dsDados: TDataSource
    Left = 448
  end
end
