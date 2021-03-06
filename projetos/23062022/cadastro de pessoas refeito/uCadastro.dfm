object frCadastro: TfrCadastro
  Left = 0
  Top = 0
  Caption = 'Cadastro'
  ClientHeight = 237
  ClientWidth = 546
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
  object lbNome: TLabel
    Left = 24
    Top = 56
    Width = 31
    Height = 13
    Caption = 'Nome:'
  end
  object lbIdade: TLabel
    Left = 23
    Top = 83
    Width = 32
    Height = 13
    Caption = 'Idade:'
  end
  object lbCodigo: TLabel
    Left = 18
    Top = 29
    Width = 37
    Height = 13
    Caption = 'C'#243'digo:'
  end
  object lbGenero: TLabel
    Left = 16
    Top = 115
    Width = 39
    Height = 13
    Caption = 'G'#234'nero:'
  end
  object edNome: TEdit
    Left = 72
    Top = 53
    Width = 121
    Height = 21
    TabOrder = 1
    TextHint = 'Insira o nome'
  end
  object edIdade: TEdit
    Left = 72
    Top = 80
    Width = 121
    Height = 21
    TabOrder = 2
    TextHint = 'Insira a idade'
  end
  object ckEstudante: TCheckBox
    Left = 25
    Top = 139
    Width = 97
    Height = 17
    Caption = 'Estudante'
    TabOrder = 4
  end
  object btAdicionar: TButton
    Left = 119
    Top = 139
    Width = 75
    Height = 25
    Caption = 'Adicionar'
    TabOrder = 5
    OnClick = btAdicionarClick
  end
  object btMostrar: TButton
    Left = 49
    Top = 193
    Width = 121
    Height = 25
    Caption = 'Mostrar cadastrados'
    TabOrder = 7
    OnClick = btMostrarClick
  end
  object edCodigo: TEdit
    Left = 72
    Top = 26
    Width = 121
    Height = 21
    TabOrder = 0
    TextHint = 'Insira o c'#243'digo'
    OnExit = edCodigoExit
  end
  object ckNome: TCheckBox
    Left = 24
    Top = 170
    Width = 115
    Height = 17
    Caption = 'Ordenar por nome'
    TabOrder = 6
    OnClick = ckNomeClick
  end
  object cbGenero: TComboBox
    Left = 72
    Top = 112
    Width = 121
    Height = 21
    Style = csDropDownList
    ItemIndex = 0
    TabOrder = 3
    Text = 'Masculino'
    Items.Strings = (
      'Masculino'
      'Feminino'
      'Outro')
  end
  object grDados: TDBGrid
    Left = 200
    Top = 13
    Width = 338
    Height = 216
    DataSource = dsCadastro
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 8
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'bdCODIGO'
        Title.Caption = 'C'#243'digo'
        Width = 39
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'bdNOME'
        Title.Caption = 'Nome'
        Width = 95
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'bdIDADE'
        Title.Caption = 'Idade'
        Width = 40
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'bdGENERO'
        Title.Caption = 'G'#234'nero'
        Width = 74
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'bdESTUDANTE'
        Title.Caption = 'Estudante'
        Width = 102
        Visible = True
      end>
  end
  object dsCadastro: TDataSource
    Left = 184
    Top = 184
  end
end
