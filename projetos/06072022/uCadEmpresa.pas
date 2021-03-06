unit uCadEmpresa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, poo, Vcl.StdCtrls, uRelatorio;

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
  TfrCadastroEmpresa = class(TfrCadastro)
    procedure btCadastrarClick(Sender: TObject);
  private
    { Private declarations }
    wEmpresa : TEmpresa;
    function fVerificarCNPJ(prEntrada : String) : Boolean;
    function fCalcularCNPJ(prEntrada : String) : Integer;
    procedure pLimparEmpresa();
    procedure pLimparTela();
  public
    { Public declarations }
    wRelatorio : TfrRelatorio;
    function fRetornarEmpresa(): TEmpresa;

  end;

var
  frCadastroEmpresa: TfrCadastroEmpresa;

implementation
{$R *.dfm}

procedure TfrCadastroEmpresa.btCadastrarClick(Sender: TObject);
begin
  inherited;
  wEmpresa := TEmpresa.Create;
  try
    wEmpresa.wCodigo := StrToInt(edCodigo.text);
    wEmpresa.wNome := edNome.Text;
    wEmpresa.wCNPJ := edCNPJ.Text;
    wEmpresa.wDono := edDono.Text;
    wEmpresa.wEndereco := edEndereco.Text;
    wEmpresa.wReceitaDiaria := StrToCurr(edReceita.Text);

    if (wEmpresa.wNome = '') or (wEmpresa.wDono = '') or (wEmpresa.wEndereco = '') or (fVerificarCNPJ(wEmpresa.wCNPJ) = False) then
       begin
         ShowMessage('Dados incorretos');
         pLimparEmpresa;
       end
    else
       begin
       end;
  except
    ShowMessage('Dados incorretos');
    pLimparEmpresa;
  end;
end;

function TfrCadastroEmpresa.fCalcularCNPJ(prEntrada: String): Integer;
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

function TfrCadastroEmpresa.fRetornarEmpresa: TEmpresa;
begin
  Result:= self.wEmpresa;
end;

function TfrCadastroEmpresa.fVerificarCNPJ(prEntrada: String): Boolean;
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

procedure TfrCadastroEmpresa.pLimparEmpresa;
begin
  wEmpresa.wCodigo := 0;
  wEmpresa.wCNPJ := '';
  wEmpresa.wDono := '';
  wEmpresa.wNome := '';
  wEmpresa.wEndereco := '';
  wEmpresa.wReceitaDiaria := 0;
end;

procedure TfrCadastroEmpresa.pLimparTela;
begin
  edCodigo.Text := '';
  edNome.Text := '';
  edCNPJ.Text := '';
  edDono.Text := '';
  edEndereco.Text := '';
  edReceita.Text := '';
end;

end.
