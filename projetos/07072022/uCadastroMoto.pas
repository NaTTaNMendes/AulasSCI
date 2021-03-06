unit uCadastroMoto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uCadastro, Vcl.StdCtrls, uClasses;

type
  TfrCadastroMoto = class(TfrCadastro)
    ckEmplacado: TCheckBox;
    edEmplacado: TEdit;
    procedure FormShow(Sender: TObject);
    procedure ckEmplacadoClick(Sender: TObject);
    procedure btCadastrarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    wMoto : TMoto;
    procedure pLimparCampos();
  end;

var
  frCadastroMoto: TfrCadastroMoto;

implementation
uses uSistemaVeiculos;
{$R *.dfm}

{ TfrCadastroMoto }

procedure TfrCadastroMoto.btCadastrarClick(Sender: TObject);
begin
  inherited;
  try

    if (edEmplacado.Text <> '') then
       wMoto.wPlaca := edEmplacado.Text
    else
       wMoto.wPlaca := 'Sem placa';

    wMoto.wModelo := edModelo.Text;
    wMoto.wCor := edCor.Text;
    wMoto.wPeso := StrToInt(edPeso.Text);
    if (wMoto.wPlaca = '') or (wMoto.wModelo = '') or (wMoto.wCor = '') then
       ShowMessage('Cadastro inv?lido: Informa??es incorretas nos campos')
    else
       begin
         // COLOCAR AQUI A L?GICA DE ENVIAR PARA A TELA PRINCIPAL
       end;
  except
    ShowMessage('Cadastro inv?lido: Informa??es incorretas nos campos')
  end;
end;

procedure TfrCadastroMoto.ckEmplacadoClick(Sender: TObject);
begin
  inherited;
  if (edEmplacado.Enabled = False) then
     begin
       edEmplacado.Enabled := True;
       edEmplacado.Text := '';
     end
  else
     begin
       edEmplacado.Enabled := False;
       edEmplacado.Text := '';
     end;
end;

procedure TfrCadastroMoto.FormShow(Sender: TObject);
begin
  inherited;
  // Cria o objeto moto
  wMoto := TMoto.Create;

  // Desativa o edEmplacado
  ckEmplacado.Checked := False;
  edEmplacado.Enabled := False;

end;

procedure TfrCadastroMoto.pLimparCampos;
begin
  edEmplacado.Text := '';
  edModelo.Text := '';
  edCor.Text := '';
  edPeso.Text := '';
end;

end.
