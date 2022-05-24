unit UnitTelaPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TFormPrincipal = class(TForm)
    btnNmr1: TButton;
    btnNmr2: TButton;
    procedure btnNmr1Click(Sender: TObject);
    procedure btnNmr2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPrincipal: TFormPrincipal;
  wNumero1: Integer;
  wNumero2: Integer;
  wNumero3: Integer;

implementation

{$R *.dfm}

procedure TFormPrincipal.btnNmr1Click(Sender: TObject);
var
  wMaiorNumero: Integer;
begin

  wNumero1:= 1;
  wNumero2:= 2;
  wNumero3:= 45;

  // Encontra o maior n�mero
  wMaiorNumero:= wNumero1;
  if wNumero2 > wMaiorNumero then
    begin
      wMaiorNumero:= wNumero2;
    end;
  if wNumero3 > wMaiorNumero  then
    begin
      wMaiorNumero:= wNumero3;
    end;

  // Retorna o maior para o usu�rio
  showMessage('O maior n�mero entre ' + IntToStr(wNumero1) + ', '
              + IntToStr(wNumero2) + ' e '  + IntToStr(wNumero3)
              + ' �: ' + IntToStr(wMaiorNumero));

end;

procedure TFormPrincipal.btnNmr2Click(Sender: TObject);
var
  wMaiorNumero: Integer;
  wMenorNumero: Integer;
  wMedioNumero: Integer;
begin
  wNumero1:= 451;
  wNumero2:= 62436;
  wNumero3:= 63;

  // Encontra o maior n�mero
  if (wNumero1 > wNumero2) and (wNumero1 > wNumero3) then
    begin
      wMaiorNumero:= wNumero1;
    end
  else if (wNumero2 > wNumero1) and (wNumero2 > wNumero3) then
    begin
      wMaiorNumero:= wNumero2;
    end
  else
    begin
      wMaiorNumero:= wNumero3;
    end;

  // Encontra o menor n�mero
  if (wNumero1 < wNumero2) and (wNumero1 < wNumero3) then
    begin
      wMenorNumero:= wNumero1;
    end
  else if (wNumero2 < wNumero1) and (wNumero2 < wNumero3) then
    begin
      wMenorNumero:= wNumero2;
    end
  else
    begin
      wMenorNumero:= wNumero3;
    end;

  // Encontra o n�mero m�dio
  wMedioNumero:= (wNumero1 + wNumero2 + wNumero3) - (wMaiorNumero + wMenorNumero);

  // Retorna a ordem para o usu�rio
  showMessage(IntToStr(wMenorNumero) +  ', ' + IntToStr(wMedioNumero) + ', ' + IntToStr(wMaiorNumero));
end;

end.
