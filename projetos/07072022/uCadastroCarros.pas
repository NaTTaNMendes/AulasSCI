unit uCadastroCarros;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uCadastro, Vcl.StdCtrls, uClasses;

type
  TfrCadastroCarro = class(TfrCadastro)
    lbPortas: TLabel;
    edPortas: TEdit;
    lbRodas: TLabel;
    edRodas: TEdit;
    ckEmplacado: TCheckBox;
    edEmplacado: TEdit;
    procedure FormShow(Sender: TObject);
    procedure btCadastrarClick(Sender: TObject);
    procedure ckEmplacadoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    wCarro : TCarro;
    procedure pLimparCampos();
  end;

var
  frCadastroCarro: TfrCadastroCarro;

implementation
uses uSistemaVeiculos;

{$R *.dfm}

procedure TfrCadastroCarro.btCadastrarClick(Sender: TObject);
begin
  inherited;
  try
    wCarro.wPortas := StrToInt(edPortas.Text);
    wCarro.wRodas := StrToInt(edRodas.Text);

    if (edEmplacado.Text <> '') then
       wCarro.wPlaca := edEmplacado.Text
    else
       wCarro.wPlaca := 'Sem placa';

    wCarro.wModelo := edModelo.Text;
    wCarro.wCor := edCor.Text;
    wCarro.wPeso := StrToInt(edPeso.Text);
    if (wCarro.wPlaca = '') or (wCarro.wModelo = '') or (wCarro.wCor = '') then
       ShowMessage('Cadastro inv?lido: Informa??es incorretas nos campos')
    else
       begin
         // COLOCAR AQUI A L?GICA DE ENVIAR PARA A TELA PRINCIPAL
       end;
  except
    ShowMessage('Cadastro inv?lido: Informa??es incorretas nos campos')
  end;
  frSistemaVeiculos.p;
  close;
end;

procedure TfrCadastroCarro.ckEmplacadoClick(Sender: TObject);
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

procedure TfrCadastroCarro.FormShow(Sender: TObject);
begin
  inherited;
  // Cria o objeto que ser? cadastrado
  wCarro := TCarro.Create;

  // Desativa o edEmplacado
  ckEmplacado.Checked := False;
  edEmplacado.Enabled := False;
end;

procedure TfrCadastroCarro.pLimparCampos;
begin
  edPortas.Text := '';
  edRodas.Text := '';
  edEmplacado.Text := '';
  edModelo.Text := '';
  edCor.Text := '';
  edPeso.Text := '';
end;

end.
