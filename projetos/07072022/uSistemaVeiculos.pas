unit uSistemaVeiculos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, uClasses, uCadastroMoto, uCadastroCarros,
  Data.DB, Vcl.Grids, Vcl.DBGrids, Datasnap.DBClient;

type
  TfrSistemaVeiculos = class(TForm)
    btCadCarro: TButton;
    btCadMoto: TButton;
    grVeiculos: TDBGrid;
    lbVeiculosCadastrados: TLabel;
    btAtualizar: TButton;
    dsVeiculos: TDataSource;
    cdsVeiculos: TClientDataSet;
    cdsVeiculosbdMODELO: TStringField;
    cdsVeiculosbdCOR: TStringField;
    cdsVeiculosbdPESO: TIntegerField;
    cdsVeiculosbdPORTAS: TIntegerField;
    cdsVeiculosbdRODAS: TIntegerField;
    cdsVeiculosbdPLACA: TStringField;
    procedure FormShow(Sender: TObject);
    procedure btCadCarroClick(Sender: TObject);
    procedure btCadMotoClick(Sender: TObject);
  private
    { Private declarations }
    cdsDados : ;
  public
    { Public declarations }
    wCarro : TCarro;
    wMoto : TMoto;
  end;

var
  frSistemaVeiculos: TfrSistemaVeiculos;

implementation

{$R *.dfm}

procedure TfrSistemaVeiculos.btCadCarroClick(Sender: TObject);
var
  wTelaCarro : TfrCadastroCarro;
begin
   wTelaCarro := TfrCadastroCarro.Create(Self);
   wTelaCarro.Show;
end;

procedure TfrSistemaVeiculos.btCadMotoClick(Sender: TObject);
var
  wTelaMoto : TfrCadastroMoto;
begin
  wTelaMoto := TfrCadastroMoto.Create(Self);
  wTelaMoto.Show;
end;

procedure TfrSistemaVeiculos.FormShow(Sender: TObject);
begin
  // Cria os dois veiculos
  wCarro := TCarro.Create;
  wMoto := TMoto.Create;
end;

end.
