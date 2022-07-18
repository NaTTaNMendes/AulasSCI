object DataModule2: TDataModule2
  OldCreateOrder = False
  Height = 259
  Width = 584
  object SQLQueryFiltros: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    Left = 440
    Top = 32
  end
  object dsQueryFiltros: TDataSource
    DataSet = SQLQueryFiltros
    Left = 528
    Top = 32
  end
  object dsEmpresas: TSQLDataSet
    CommandText = 'select * from TEMPRESA'
    MaxBlobSize = -1
    Params = <>
    Left = 24
    Top = 8
  end
  object dspEmpresas: TDataSetProvider
    DataSet = dsEmpresas
    Left = 92
    Top = 8
  end
  object tbEmpresas: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspEmpresas'
    Left = 160
    Top = 8
  end
end
