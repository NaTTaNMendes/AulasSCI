unit uConsulta;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uConsultaPadrao, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, uDatamodule;

type
  TfrConsulta = class(TfrConsultaPadrao)
    grDados: TDBGrid;
    btTelaCadastro: TButton;
    procedure btTelaCadastroClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure grDadosTitleClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frConsulta: TfrConsulta;

implementation
  uses uCadastro;
{$R *.dfm}

procedure TfrConsulta.btTelaCadastroClick(Sender: TObject);
begin
  inherited;
  frCadastro.Enabled := True;
  Close;
end;

procedure TfrConsulta.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  frCadastro.Enabled := True;
end;

procedure TfrConsulta.FormShow(Sender: TObject);
begin
  inherited;
  frCadastro.Enabled := False;
end;

procedure TfrConsulta.grDadosTitleClick(Column: TColumn);
begin
  inherited;
  if (Column.FieldName = 'bdCODIGO') then
     dmModulo.cdsDados.IndexFieldNames := 'bdCODIGO'
  else if (Column.FieldName = 'bdNOME') then
     dmModulo.cdsDados.IndexFieldNames := 'bdNOME';
end;

end.
