unit CadastroRestaurante;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, poo, Vcl.StdCtrls;

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
  TfrCadastroRestaurante = class(TfrCadastro)
    lbQuantidadeFuncionario: TLabel;
    edQuantidadeFuncionario: TEdit;
    lbPrincipalPrato: TLabel;
    edPrincipalPrato: TEdit;
    procedure btCadastrarClick(Sender: TObject);
  private
    { Private declarations }
    wRestaurante : TRestaurante;
    function fVerificarCNPJ(prEntrada : String) : Boolean;
    function fCalcularCNPJ(prEntrada : String) : Integer;
    procedure pLimparRestaurante();
    procedure pLimparTela();
  public
    { Public declarations }
    wVariavel : String;
  end;

var
  frCadastroRestaurante: TfrCadastroRestaurante;

implementation

{$R *.dfm}

procedure TfrCadastroRestaurante.btCadastrarClick(Sender: TObject);
begin
  inherited;
  wRestaurante := TRestaurante.Create;
  try
    wRestaurante.wCodigo := StrToInt(edCodigo.text);
    wRestaurante.wNome := edNome.Text;
    wRestaurante.wCNPJ := edCNPJ.Text;
    wRestaurante.wDono := edDono.Text;
    wRestaurante.wEndereco := edEndereco.Text;
    wRestaurante.wReceitaDiaria := StrToCurr(edReceita.Text);
    wRestaurante.wQuantidadeFuncionario := StrToInt(edQuantidadeFuncionario.Text);
    wRestaurante.wPrincipalPrato := edPrincipalPrato.Text;

    if (wRestaurante.wNome = '') or (wRestaurante.wDono = '') or (wRestaurante.wEndereco = '') or (fVerificarCNPJ(wRestaurante.wCNPJ) = False) or (wRestaurante.wPrincipalPrato = '') then
       begin
         ShowMessage('Dados incorretos');
         pLimparRestaurante;
       end;
  except
    ShowMessage('Dados incorretos');
    pLimparRestaurante;
  end;
end;

function TfrCadastroRestaurante.fCalcularCNPJ(prEntrada: String): Integer;
var
  wIncrementador, wSoma, wCount, wNumeroTemporario, wResto : Integer;
begin
  wIncrementador := 2;
  wSoma := 0;
  for wCount := Length(prEntrada) downto 1 do
    begin
      if (wIncrementador = 10) then
         wIncrementador := 2;
      wNumeroTemporario := StrToInt(prEntrada[wCount]) * wIncrementador;
      wSoma := wSoma + wNumeroTemporario;
      wIncrementador := wIncrementador + 1;
    end;
  wResto := wSoma mod 11;
  if (wResto < 2) then
     Result := 0
  else
     Result := 11 - wResto;
end;

function TfrCadastroRestaurante.fVerificarCNPJ(prEntrada: String): Boolean;
var
  wValorCalculado : String;
begin
  if (Length(prEntrada) <> 14) then
     Result := False
  else
     begin
       wValorCalculado := Copy(prEntrada, 1,12);
       wValorCalculado := wValorCalculado + IntToStr(fCalcularCNPJ(wValorCalculado));
       wValorCalculado := wValorCalculado + IntToStr(fCalcularCNPJ(wValorCalculado));
       if (wValorCalculado = prEntrada) then
          Result := True
       else
          Result := False;
     end;
end;

procedure TfrCadastroRestaurante.pLimparRestaurante;
begin
  wRestaurante.wCodigo := 0;
  wRestaurante.wCNPJ := '';
  wRestaurante.wDono := '';
  wRestaurante.wNome := '';
  wRestaurante.wEndereco := '';
  wRestaurante.wReceitaDiaria := 0;
  wRestaurante.wQuantidadeFuncionario := 0;
  wRestaurante.wPrincipalPrato := '';
end;

procedure TfrCadastroRestaurante.pLimparTela;
begin
  edCodigo.Text := '';
  edNome.Text := '';
  edCNPJ.Text := '';
  edDono.Text := '';
  edEndereco.Text := '';
  edReceita.Text := '';
  edQuantidadeFuncionario.Text := '';
  edPrincipalPrato.Text := '';
end;

end.
