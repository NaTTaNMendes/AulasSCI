object frSistemaVeiculos: TfrSistemaVeiculos
  Left = 0
  Top = 0
  Caption = 'Sistema ve'#237'culos'
  ClientHeight = 295
  ClientWidth = 408
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
  object lbVeiculosCadastrados: TLabel
    Left = 147
    Top = 72
    Width = 100
    Height = 13
    Caption = 'Ve'#237'culos cadastrados'
  end
  object btCadCarro: TButton
    Left = 48
    Top = 24
    Width = 121
    Height = 25
    Caption = 'Cadastrar Carro'
    TabOrder = 0
    OnClick = btCadCarroClick
  end
  object btCadMoto: TButton
    Left = 232
    Top = 24
    Width = 121
    Height = 25
    Caption = 'Cadastrar Moto'
    TabOrder = 1
    OnClick = btCadMotoClick
  end
  object grVeiculos: TDBGrid
    Left = 0
    Top = 102
    Width = 409
    Height = 193
    DataSource = dsVeiculos
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object btAtualizar: TButton
    Left = 301
    Top = 71
    Width = 75
    Height = 25
    Caption = 'Atualizar'
    TabOrder = 3
  end
  object dsVeiculos: TDataSource
    Left = 24
    Top = 56
  end
  object cdsVeiculos: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 72
    Top = 56
    object cdsVeiculosbdMODELO: TStringField
      FieldName = 'bdMODELO'
    end
    object cdsVeiculosbdCOR: TStringField
      FieldName = 'bdCOR'
    end
    object cdsVeiculosbdPESO: TIntegerField
      FieldName = 'bdPESO'
    end
    object cdsVeiculosbdPORTAS: TIntegerField
      FieldName = 'bdPORTAS'
    end
    object cdsVeiculosbdRODAS: TIntegerField
      FieldName = 'bdRODAS'
    end
    object cdsVeiculosbdPLACA: TStringField
      FieldName = 'bdPLACA'
    end
  end
end
