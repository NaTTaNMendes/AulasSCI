object frRelatorio: TfrRelatorio
  Left = 0
  Top = 0
  Caption = 'Relat'#243'rio'
  ClientHeight = 259
  ClientWidth = 626
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
  object lbEmpresasCadastradas: TLabel
    Left = 240
    Top = 24
    Width = 129
    Height = 13
    Caption = 'EMPRESAS CADASTRADAS'
  end
  object grDados: TDBGrid
    Left = 0
    Top = 131
    Width = 625
    Height = 120
    DataSource = dsDados
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        Visible = True
      end>
  end
  object btCadEmpresa: TButton
    Left = 160
    Top = 77
    Width = 121
    Height = 25
    Caption = 'Cadastrar empresa'
    TabOrder = 1
    OnClick = btCadEmpresaClick
  end
  object btCadRestaurante: TButton
    Left = 320
    Top = 77
    Width = 121
    Height = 25
    Caption = 'Cadastrar restaurante'
    TabOrder = 2
    OnClick = btCadRestauranteClick
  end
  object dsDados: TDataSource
    Left = 576
    Top = 16
  end
end
