inherited frCadastroCarro: TfrCadastroCarro
  Caption = 'Cadastro de carros'
  ClientHeight = 244
  ClientWidth = 285
  Position = poScreenCenter
  OnShow = FormShow
  ExplicitWidth = 301
  ExplicitHeight = 283
  PixelsPerInch = 96
  TextHeight = 13
  inherited lbModelo: TLabel
    Left = 40
    ExplicitLeft = 40
  end
  inherited lbCor: TLabel
    Left = 40
    ExplicitLeft = 40
  end
  inherited lbPeso: TLabel
    Left = 40
    ExplicitLeft = 40
  end
  object lbPortas: TLabel [3]
    Left = 40
    Top = 113
    Width = 35
    Height = 13
    Caption = 'Portas:'
  end
  object lbRodas: TLabel [4]
    Left = 40
    Top = 140
    Width = 34
    Height = 13
    Caption = 'Rodas:'
  end
  inherited edModelo: TEdit
    Left = 96
    ExplicitLeft = 96
  end
  inherited edCor: TEdit
    Left = 96
    ExplicitLeft = 96
  end
  inherited edPeso: TEdit
    Left = 96
    ExplicitLeft = 96
  end
  inherited btCadastrar: TButton
    Left = 96
    Top = 199
    OnClick = btCadastrarClick
    ExplicitLeft = 96
    ExplicitTop = 199
  end
  object edPortas: TEdit
    Left = 96
    Top = 110
    Width = 153
    Height = 21
    TabOrder = 4
    TextHint = 'Quantidade de portas'
  end
  object edRodas: TEdit
    Left = 96
    Top = 137
    Width = 153
    Height = 21
    TabOrder = 5
    TextHint = 'Quantidade de rodas'
  end
  object ckEmplacado: TCheckBox
    Left = 17
    Top = 166
    Width = 73
    Height = 17
    Caption = 'Emplacado'
    TabOrder = 6
    OnClick = ckEmplacadoClick
  end
  object edEmplacado: TEdit
    Left = 96
    Top = 164
    Width = 153
    Height = 21
    TabOrder = 7
    TextHint = 'Informe a placa'
  end
end
