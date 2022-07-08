inherited frConsulta: TfrConsulta
  Caption = 'Consulta'
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object grDados: TDBGrid
    Left = 0
    Top = 48
    Width = 601
    Height = 273
    DataSource = dmModulo.dsDados
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 0
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
  object btTelaCadastro: TButton
    Left = 224
    Top = 17
    Width = 126
    Height = 25
    Caption = 'Tela de cadastro'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 18
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = btTelaCadastroClick
  end
end
