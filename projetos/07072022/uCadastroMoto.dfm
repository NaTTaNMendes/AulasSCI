inherited frCadastroMoto: TfrCadastroMoto
  Caption = 'Cadastro de motos'
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited btCadastrar: TButton
    OnClick = btCadastrarClick
  end
  object ckEmplacado: TCheckBox
    Left = 25
    Top = 112
    Width = 73
    Height = 17
    Caption = 'Emplacado'
    TabOrder = 4
    OnClick = ckEmplacadoClick
  end
  object edEmplacado: TEdit
    Left = 104
    Top = 110
    Width = 153
    Height = 21
    TabOrder = 5
    TextHint = 'Informe a placa'
  end
end
