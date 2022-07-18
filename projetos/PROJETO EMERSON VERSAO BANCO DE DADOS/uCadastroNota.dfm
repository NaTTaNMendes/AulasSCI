inherited uCadNota: TuCadNota
  Caption = 'Lan'#231'amento Nota Fiscal'
  ClientHeight = 338
  ClientWidth = 609
  ExplicitWidth = 625
  ExplicitHeight = 377
  PixelsPerInch = 96
  TextHeight = 13
  object lbCodigoNota: TLabel [0]
    Left = 9
    Top = 17
    Width = 62
    Height = 13
    Caption = 'C'#243'digo nota:'
  end
  object lbData: TLabel [1]
    Left = 40
    Top = 139
    Width = 27
    Height = 13
    Caption = 'Data:'
  end
  object lbCliente: TLabel [2]
    Left = 153
    Top = 17
    Width = 71
    Height = 13
    Caption = 'C'#243'digo cliente:'
  end
  object lbCodEmpresa: TLabel [3]
    Left = 301
    Top = 17
    Width = 81
    Height = 13
    Caption = 'C'#243'digo empresa:'
  end
  object lbCodProd: TLabel [4]
    Left = 461
    Top = 20
    Width = 78
    Height = 13
    Caption = 'C'#243'digo produto:'
  end
  object lbQuantidade: TLabel [5]
    Left = 332
    Top = 139
    Width = 60
    Height = 13
    Caption = 'Quantidade:'
  end
  object lbTotal: TLabel [6]
    Left = 252
    Top = 201
    Width = 75
    Height = 13
    Caption = 'Total: R$ ----,--'
  end
  inherited btSalvar: TButton
    Left = 82
    Top = 248
    ExplicitLeft = 82
    ExplicitTop = 248
  end
  inherited btDeletar: TButton
    Left = 200
    Top = 248
    ExplicitLeft = 200
    ExplicitTop = 248
  end
  inherited btLimpar: TButton
    Left = 317
    Top = 248
    ExplicitLeft = 317
    ExplicitTop = 248
  end
  inherited btConsultar: TButton
    Left = 432
    Top = 248
    ExplicitLeft = 432
    ExplicitTop = 248
  end
  object edCodigoNota: TEdit [11]
    Left = 82
    Top = 14
    Width = 55
    Height = 21
    TabOrder = 4
    TextHint = 'Insira o c'#243'digo'
  end
  object edCodCliente: TEdit [12]
    Left = 235
    Top = 14
    Width = 55
    Height = 21
    TabOrder = 5
  end
  object edCodEmpresa: TEdit [13]
    Left = 394
    Top = 14
    Width = 55
    Height = 21
    TabOrder = 6
  end
  object edCodProd: TEdit [14]
    Left = 545
    Top = 17
    Width = 55
    Height = 21
    TabOrder = 7
  end
  object dtpData: TDateTimePicker [15]
    Left = 82
    Top = 131
    Width = 186
    Height = 21
    Date = 44760.000000000000000000
    Time = 0.639012939813255800
    TabOrder = 8
  end
  object edQuantidade: TEdit [16]
    Left = 408
    Top = 136
    Width = 121
    Height = 21
    TabOrder = 9
    TextHint = 'Insira a quantidade'
  end
  inherited imBotao: TImageList
    Left = 576
    Top = 304
  end
  inherited imBotaoDesabilitado: TImageList
    Left = 1
    Top = 312
  end
end
