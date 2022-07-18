unit uDataModule;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Datasnap.DBClient, Datasnap.Provider,
  Data.FMTBcd, Data.SqlExpr;

type
  TDataModule2 = class(TDataModule)
    SQLQueryFiltros: TSQLQuery;
    dsQueryFiltros: TDataSource;
    dsEmpresas: TSQLDataSet;
    dspEmpresas: TDataSetProvider;
    tbEmpresas: TClientDataSet;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule2: TDataModule2;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
