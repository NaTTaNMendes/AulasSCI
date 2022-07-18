inherited uCadEmpresa: TuCadEmpresa
  Caption = 'Cadastro Empresa'
  PixelsPerInch = 96
  TextHeight = 13
  object lbCodigo: TLabel [0]
    Left = 41
    Top = 51
    Width = 37
    Height = 13
    Caption = 'C'#243'digo:'
  end
  object lbCNPJ: TLabel [1]
    Left = 49
    Top = 83
    Width = 29
    Height = 13
    Caption = 'CNPJ:'
  end
  object lbNome: TLabel [2]
    Left = 47
    Top = 115
    Width = 31
    Height = 13
    Caption = 'Nome:'
  end
  object lbUF: TLabel [3]
    Left = 41
    Top = 147
    Width = 37
    Height = 13
    Caption = 'Estado:'
  end
  object lbTelefone: TLabel [4]
    Left = 32
    Top = 179
    Width = 46
    Height = 13
    Caption = 'Telefone:'
  end
  inherited btSalvar: TButton
    Left = 352
    Top = 51
    ExplicitLeft = 352
    ExplicitTop = 51
  end
  inherited btDeletar: TButton
    Left = 352
    Top = 90
    ExplicitLeft = 352
    ExplicitTop = 90
  end
  inherited btLimpar: TButton
    Left = 352
    Top = 129
    ExplicitLeft = 352
    ExplicitTop = 129
  end
  inherited btConsultar: TButton
    Left = 352
    Top = 168
    ExplicitLeft = 352
    ExplicitTop = 168
  end
  object edCodigo: TEdit [9]
    Left = 115
    Top = 48
    Width = 158
    Height = 21
    TabOrder = 4
    TextHint = 'Insira o c'#243'digo'
  end
  object edCNPJ: TEdit [10]
    Left = 115
    Top = 80
    Width = 158
    Height = 21
    TabOrder = 5
    TextHint = 'Insira o CNPJ'
  end
  object edNome: TEdit [11]
    Left = 115
    Top = 112
    Width = 158
    Height = 21
    TabOrder = 6
    TextHint = 'Insira o nome'
  end
  object edTelefone: TEdit [12]
    Left = 115
    Top = 176
    Width = 158
    Height = 21
    TabOrder = 7
    TextHint = 'Insira o telefone'
  end
  object cbUF: TComboBox [13]
    Left = 115
    Top = 144
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
    Left = 472
    Top = 8
  end
  inherited imBotaoDesabilitado: TImageList
    Left = 473
    Top = 64
  end
end
