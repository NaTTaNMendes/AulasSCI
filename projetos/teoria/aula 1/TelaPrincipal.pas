unit TelaPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TformPrincipal = class(TForm)
    btnVariaveis: TButton;
    btnComparacoes: TButton;
    btnIf: TButton;
    btnFor: TButton;
    procedure btnVariaveisClick(Sender: TObject);
    procedure btnComparacoesClick(Sender: TObject);
    procedure btnIfClick(Sender: TObject);
    procedure btnForClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formPrincipal: TformPrincipal;
  wTexto: String;
  wInteiro: Integer;
  wBooleano: Boolean;
  wValor: Currency;   // Poderia ser Real ou Double
  wData: TDateTime;   // Poderia ser Date
  wData2: TDateTime;   // Poderia ser Date

implementation

{$R *.dfm}

procedure TformPrincipal.btnVariaveisClick(Sender: TObject);
begin
  // Inicialização das variáveis
  wInteiro:= 15;
  wValor:= 10.4;
  wTexto:= 'Bom dia';
  wBooleano:= True;
  wData:= EncodeDate(2022, 05, 23);

  // String
  ShowMessage(wTexto + ', sua String armazenada é ' + wTexto);

  // Inteiro
  ShowMessage(wTexto + ', seu número Inteiro é ' + IntToStr(wInteiro));

  // Currency
  ShowMessage(wTexto + ', seu número Currency é ' + CurrToStr(wValor));

  // Booleano
  ShowMessage(wTexto + ', seu valor Booleano é ' + BoolToStr(wBooleano));

  // Datetime
  ShowMessage(wTexto + ', sua data é ' + DateTimeToStr(wData));

end;

procedure TformPrincipal.btnComparacoesClick(Sender: TObject);
begin
  wInteiro:= 10;
  wBooleano:= 10 = wInteiro; // True
  wBooleano:= 10 <> wInteiro; // False

  wValor:= 5;
  wBooleano:= wInteiro > wValor; // True
  wBooleano:= wInteiro < wValor; // False
  wBooleano:= wInteiro >= wValor; // True
  wBooleano:= wInteiro >= wValor; // True

  wValor:= 2 + 5;
  ShowMessage(CurrToStr(wValor));
  wValor:= 10 / 2;
  ShowMessage(CurrToStr(wValor));
  wValor:= 4 * 5;
  ShowMessage(CurrToStr(wValor));

  wData:= EncodeDate(2022, 05, 23);
  wData2:= EncodeDate(2025, 05, 23);
  wBooleano:= wData < wData2; // True
  wBooleano:= wData = wData2; // False

end;

procedure TformPrincipal.btnIfClick(Sender: TObject);
begin
  if 4 > 2 then
    begin
      ShowMessage('Verdadeiro 1');
    end
  else if 3 = 3 then
    begin
      showMessage('Verdadeiro 2');
    end
  else
    begin
      showMessage('Falso');
    end;
end;

procedure TformPrincipal.btnForClick(Sender: TObject);
var
  I: Integer;
begin
  for I := 1 to 4 do
    begin
      showMessage(IntToStr(I));
    end;

  for I := 3 downto 1 do
    begin
      showMessage(IntToStr(I));
    end;

  I:= 15;
  while I > 10 do
    begin
      showMessage(IntToStr(I));
      I := I - 1;
    end;

end;

end.
