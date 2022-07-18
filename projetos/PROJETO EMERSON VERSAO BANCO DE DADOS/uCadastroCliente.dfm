inherited uCadCliente: TuCadCliente
  Caption = 'Cadastro Cliente'
  PixelsPerInch = 96
  TextHeight = 13
  object lbCodigo: TLabel [0]
    Left = 57
    Top = 56
    Width = 37
    Height = 13
    Caption = 'C'#243'digo:'
  end
  object lbCPF: TLabel [1]
    Left = 71
    Top = 88
    Width = 23
    Height = 13
    Caption = 'CPF:'
  end
  object lbNome: TLabel [2]
    Left = 63
    Top = 120
    Width = 31
    Height = 13
    Caption = 'Nome:'
  end
  object lbUF: TLabel [3]
    Left = 57
    Top = 152
    Width = 37
    Height = 13
    Caption = 'Estado:'
  end
  object lbTelefone: TLabel [4]
    Left = 48
    Top = 184
    Width = 46
    Height = 13
    Caption = 'Telefone:'
  end
  inherited btSalvar: TButton
    Left = 352
    Top = 58
    ExplicitLeft = 352
    ExplicitTop = 58
  end
  inherited btDeletar: TButton
    Left = 352
    Top = 97
    ExplicitLeft = 352
    ExplicitTop = 97
  end
  inherited btLimpar: TButton
    Left = 352
    Top = 136
    ExplicitLeft = 352
    ExplicitTop = 136
  end
  inherited btConsultar: TButton
    Left = 352
    Top = 175
    ExplicitLeft = 352
    ExplicitTop = 175
  end
  object edCodigo: TEdit [9]
    Left = 131
    Top = 53
    Width = 158
    Height = 21
    TabOrder = 4
    TextHint = 'Insira o c'#243'digo'
  end
  object edCPF: TEdit [10]
    Left = 131
    Top = 85
    Width = 158
    Height = 21
    TabOrder = 5
    TextHint = 'Insira o CPF'
  end
  object edNome: TEdit [11]
    Left = 131
    Top = 117
    Width = 158
    Height = 21
    TabOrder = 6
    TextHint = 'Insira o nome'
  end
  object edTelefone: TEdit [12]
    Left = 131
    Top = 181
    Width = 158
    Height = 21
    TabOrder = 7
    TextHint = 'Insira o telefone'
  end
  object cbUF: TComboBox [13]
    Left = 131
    Top = 149
    Width = 158
    Height = 21
    TabOrder = 8
    Text = 'Selecione o estado'
    Items.Strings = (
      'ACRE'
      'ALAGOAS'
      'AMAZONAS'
      'AMAP'#193
      'BAHIA'
      'CEAR'#193
      'DISTRITO FEDERAL'
      'ESP'#205'RITO SANTO'
      'GOI'#193'S'
      'MARANH'#195'O'
      'MINAS GERAIS'
      'MATO GROSSO DO SUL'
      'MATO GROSSO'
      'PAR'#193
      'PARA'#205'BA'
      'PERNAMBUCO'
      'PIAU'#205
      'PARAN'#193
      'RIO DE JANEIRO'
      'RIO GRANDE DO NORTE'
      'ROND'#212'NIA'
      'RORAIMA'
      'RIO GRANDE DO SUL'
      'SANTA CATARINA'
      'SERGIPE'
      'S'#195'O PAULO'
      'TOCANTINS'
      'ZONA FRANCA'
      'EXTERIOR')
  end
  inherited imBotao: TImageList
    Left = 456
    Top = 16
  end
  inherited imBotaoDesabilitado: TImageList
    Left = 457
    Top = 72
  end
end
