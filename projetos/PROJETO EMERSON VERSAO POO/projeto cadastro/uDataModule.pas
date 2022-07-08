unit uDataModule;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Datasnap.DBClient;

type
  TdmModulo = class(TDataModule)
    dsDados: TDataSource;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    cdsDados : TClientDataSet;
  end;

var
  dmModulo: TdmModulo;

implementation
  uses uPessoa;

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TdmModulo.DataModuleCreate(Sender: TObject);
begin
  // Cria o CDS
  cdsDados := TClientDataSet.Create(Self);

  // Adiciona as colunas
  cdsDados.FieldDefs.Add('bdCODIGO', ftInteger);
  cdsDados.FieldDefs.Add('bdNOME', ftString, 255);
  cdsDados.FieldDefs.Add('bdTIPO', ftInteger);
  cdsDados.FieldDefs.Add('bdCPF', ftString, 30);
  cdsDados.FieldDefs.Add('bdENDERECO', ftString, 255);
  cdsDados.FieldDefs.Add('bdISENTO', ftBoolean);

  // Adiciona os índices
  cdsDados.IndexDefs.Add('iCODIGO', 'bdCODIGO', [ixPrimary,ixUnique]);
  cdsDados.IndexDefs.Add('iNOME', 'bdNOME', [ixCaseInsensitive]);
  cdsDados.IndexDefs.Add('iTIPO', 'bdTIPO', [ixCaseInsensitive]);
  cdsDados.IndexDefs.Add('iCPF', 'bdCPF', [ixCaseInsensitive]);
  cdsDados.IndexDefs.Add('iENDERECO', 'bdENDERECO', [ixCaseInsensitive]);
  cdsDados.IndexDefs.Add('iISENTO', 'bdISENTO', [ixCaseInsensitive]);

  // Ativa e abre o CDS
  cdsDados.CreateDataSet;
  cdsDados.Open;

  // Conecta DS ao CDS
  dsDados.DataSet := cdsDados;
end;

end.
