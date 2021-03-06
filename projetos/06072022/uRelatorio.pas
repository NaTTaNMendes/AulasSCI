unit uRelatorio;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Datasnap.DBClient, CadastroRestaurante, uCadEmpresa;

type
  TEmpresa = class
    private
      wCodigo : Integer;
      wCNPJ : String;
      wDono : String;
      wNome : String;
      wEndereco : String;
      wReceitaDiaria : Currency;
  end;

type
  TRestaurante = class(TEmpresa)
    private
      wQuantidadeFuncionario : Integer;
      wPrincipalPrato : String;
  end;

type
  TfrRelatorio = class(TForm)
    lbEmpresasCadastradas: TLabel;
    grDados: TDBGrid;
    dsDados: TDataSource;
    btCadEmpresa: TButton;
    btCadRestaurante: TButton;
    procedure FormShow(Sender: TObject);
    procedure btCadEmpresaClick(Sender: TObject);
    procedure btCadRestauranteClick(Sender: TObject);
  private
    { Private declarations }
    cdsDados : TClientDataSet;
    wEmpresa : TEmpresa;
    wRestaurante : TRestaurante;
  public
    { Public declarations }
  end;

var
  frRelatorio: TfrRelatorio;

implementation
{$R *.dfm}

procedure TfrRelatorio.btCadEmpresaClick(Sender: TObject);
var
  wEmpresa : TfrCadastroEmpresa;
begin
  wEmpresa := TfrCadastroEmpresa.Create(self);
  wEmpresa.Show;
end;

procedure TfrRelatorio.btCadRestauranteClick(Sender: TObject);
var
  wRestaurante : TfrCadastroRestaurante;
begin
  wRestaurante := TfrCadastroRestaurante.Create(self);
  wRestaurante.Show;
end;

procedure TfrRelatorio.FormShow(Sender: TObject);
begin
  cdsDados := TClientDataSet.Create(self);

  cdsDados.FieldDefs.Add('bdCODIGO', ftInteger);
  cdsDados.FieldDefs.Add('bdCNPJ', ftString, 30);
  cdsDados.FieldDefs.Add('bdDONO', ftString, 150);
  cdsDados.FieldDefs.Add('bdNOME', ftString, 150);
  cdsDados.FieldDefs.Add('bdENDERECO', ftString, 255);
  cdsDados.FieldDefs.Add('bdRECEITADIARIA', ftCurrency);
  cdsDados.FieldDefs.Add('bdQUANTIDADEFUNCIONARIO', ftInteger);
  cdsDados.FieldDefs.Add('bdPRINCIPALPRATO', ftString, 75);

  cdsDados.IndexDefs.Add('iCODIGO', 'bdCODIGO', [ixPrimary, ixUnique]);
  cdsDados.IndexDefs.Add('iNOME', 'bdNOME', [ixCaseInsensitive]);

  cdsDados.CreateDataSet;
  cdsDados.Open;

  dsDados.DataSet := cdsDados;

end;

end.
