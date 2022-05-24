unit UnitTelaPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TFormPrincipal = class(TForm)
    btnNmr1: TButton;
    btnNmr2: TButton;
    btnNmr3: TButton;
    btnNmr4: TButton;
    procedure btnNmr1Click(Sender: TObject);
    procedure btnNmr2Click(Sender: TObject);
    procedure btnNmr3Click(Sender: TObject);
    procedure btnNmr4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPrincipal: TFormPrincipal;

implementation

{$R *.dfm}

procedure TFormPrincipal.btnNmr1Click(Sender: TObject);
var
  wMaiorNumero: Integer;
  wNumero1: Integer;
  wNumero2: Integer;
  wNumero3: Integer;
begin

  // Instanciando vari�veis
  wNumero1:= 51;
  wNumero2:= 73;
  wNumero3:= -512;

  // Encontra o maior n�mero
  wMaiorNumero:= wNumero1;
  if wNumero2 > wMaiorNumero then
    begin
      wMaiorNumero:= wNumero2;
    end;
  if wNumero3 > wMaiorNumero then
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
  wTemporario: Integer;
  wTemporario2: Integer;
  wNumero1: Integer;
  wNumero2: Integer;
  wNumero3: Integer;
begin

  // Instanciando vari�veis
  wNumero1:= 1002;
  wNumero2:= 0;
  wNumero3:= 7649;

  // Verifica se o primeiro valor � maior que o segundo
  if (wNumero2 < wNumero1) then
    begin
      wTemporario:= wNumero1;
      wNumero1:= wNumero2;
      wNumero2:= wTemporario;
    end;

  // Verifica se o terceiro valor � menor que o primeiro
  if (wNumero3 < wNumero1) then
    begin
      wTemporario:= wNumero1;
      wTemporario2:= wNumero2;
      wNumero1:= wNumero3;
      wNumero2:= wTemporario;
      wNumero3:= wTemporario2;
    end;

  // Verifica se o terceiro valor � menor que o segundo
  if (wNumero3 < wNumero2) then
    begin
      wTemporario:= wNumero3;
      wNumero3:= wNumero2;
      wNumero2:= wTemporario;
    end;

  // Retorna para o usu�rio
  showMessage(IntToStr(wNumero1) + ', ' + IntToStr(wNumero2) + ', ' + IntToStr(wNumero3));

  end;

procedure TFormPrincipal.btnNmr3Click(Sender: TObject);
var
  wStringList: TStringList;
  wMaiorNumero: Integer;
  I: Integer;
begin

  // Instanciando vari�veis
  wStringList:= TstringList.Create;
  wStringList.Add('98');
  wStringList.Add('5');
  wStringList.Add('2041');
  wMaiorNumero:= StrToInt(wStringList[0]);

  // Encontra o maior n�mero
  for I := 0 to wStringList.Count-1 do
    begin
      if StrToInt(wStringList[I]) > wMaiorNumero then
        begin
          wMaiorNumero:= StrToInt(wStringList[I]);
        end;
    end;

  // Retorna o maior n�mero para o usu�rio
  ShowMessage('O maior n�mero �: ' + IntToStr(wMaiorNumero));

end;

procedure TFormPrincipal.btnNmr4Click(Sender: TObject);
var
  wVetor: array[0..9] of Integer;
  wMenorNumero: Integer;
  wMenorQuantidade: Integer;
  I: Integer;
begin

  // Instanciando vari�veis
  wVetor[0]:= 2;
  wVetor[1]:= 2;
  wVetor[2]:= 1;
  wVetor[3]:= 0;
  wVetor[4]:= 2;
  wVetor[5]:= 2;
  wVetor[6]:= 2;
  wVetor[7]:= 2;
  wVetor[8]:= 2;
  wVetor[9]:= 4;
  wMenorNumero:= wVetor[0];
  wMenorQuantidade:= 0;

  // Encontra o menor n�mero e a quantidade de vezes que ele aparece
  for I := 0 to 9 do
    begin
      if wVetor[I] < wMenorNumero then
        begin
          wMenorNumero:= wVetor[I];
          wMenorQuantidade:= 1;
        end
      else if wVetor[I] = wMenorNumero then
         begin
          wMenorQuantidade:= wMenorQuantidade + 1;
         end;
    end;

  // Retorna o menor n�mero e a quantidade para o usu�rio
  ShowMessage('O menor n�mero �: ' + IntToStr(wMenorNumero)
              + ' e os menores n�meros foram lidos '
              + IntToStr(wMenorQuantidade) + ' vezes');

end;

end.
