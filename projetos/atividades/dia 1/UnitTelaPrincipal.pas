unit UnitTelaPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, DateUtils;

type
  TFormPrincipal = class(TForm)
    btnNmr1: TButton;
    btnNmr2: TButton;
    btnNmr3: TButton;
    btnNmr4: TButton;
    btnNmr5: TButton;
    btnNmr6: TButton;
    btnNmr7: TButton;
    btnNmr8: TButton;
    btnNmr9: TButton;
    btnNmr10: TButton;
    btnNmr11: TButton;
    procedure btnNmr1Click(Sender: TObject);
    procedure btnNmr2Click(Sender: TObject);
    procedure btnNmr3Click(Sender: TObject);
    procedure btnNmr4Click(Sender: TObject);
    procedure btnNmr5Click(Sender: TObject);
    procedure btnNmr6Click(Sender: TObject);
    procedure btnNmr7Click(Sender: TObject);
    procedure btnNmr8Click(Sender: TObject);
    procedure btnNmr9Click(Sender: TObject);
    procedure btnNmr10Click(Sender: TObject);
    procedure btnNmr11Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPrincipal: TFormPrincipal;

implementation

{$R *.dfm}

procedure TFormPrincipal.btnNmr10Click(Sender: TObject);
var
  wDataInformada: TDateTime;
  wDiaSemana: Integer;
  wDiasNaSemana: array [1..7] of String;
begin

  // Instanciando vari�veis
  wDataInformada:= EncodeDate(2022, 05, 30);
  wDiasNaSemana[1]:= 'Domingo';
  wDiasNaSemana[2]:= 'Segunda-Feira';
  wDiasNaSemana[3]:= 'Ter�a-Feira';
  wDiasNaSemana[4]:= 'Quarta-Feira';
  wDiasNaSemana[5]:= 'Quinta-Feira';
  wDiasNaSemana[6]:= 'Sexta-Feira';
  wDiasNaSemana[7]:= 'S�bado';

  // Coleta o dia da semana
  wDiaSemana:= DayOfWeek(wDataInformada);

  // Retorna o dia para o usu�rio
  ShowMessage('Dia da semana: ' + wDiasNaSemana[wDiaSemana]);

end;

procedure TFormPrincipal.btnNmr11Click(Sender: TObject);
var
  wDataComparada: TDate;
  wAnoInicial: Integer;
  WAnoFinal: Integer;
  WDiferencaAnos: Integer;
  wI: Integer;
  wI2: Integer;
  wAnoAtual: Integer;
  wDiaMesRequisitado: Integer;
  wDiaSemanaRequisitado: Integer;
  wRetorno: String;
  wListaData: TStringList;
begin

  // Instanciando vari�veis
  wAnoInicial:= 2000;
  wAnoFinal:= 2010;
  wDiaMesRequisitado:= 13;                          // Aqui � informado o dia do m�s em que se deseja procurar
  wDiaSemanaRequisitado:= 5;                        // Aqui � informado o dia da semana que se deseja procurar (0 - Domingo, 1 -  Segunda, ..., 6 - S�bado)
  wDiferencaAnos:= WAnoFinal - wAnoInicial;
  wListaData:= TStringList.Create;

  // Encontra a quantidade de dias procurados naquelas determinadas datas do ano
  for wI := 0 to WDiferencaAnos do
     begin
       wAnoAtual:= wAnoInicial + wI;
       for wI2 := 1 to 12 do
          begin
            wDataComparada:= EncodeDate(wAnoAtual, wI2, wDiaMesRequisitado);
            if DayOfTheWeek(wDataComparada) = wDiaSemanaRequisitado then
               begin
                 wListaData.Add(DateToStr(wDataComparada));
               end;
          end;
     end;

  // Gera a String para o retorno
  for wI := 0 to wListaData.Count-1 do
     begin
       if wI = 0 then
          begin
            wRetorno:= wListaData[wI];
          end
       else
          begin
            wRetorno:= wRetorno + '  ' + wListaData[wI];
          end;
     end;
  wRetorno:= 'Quantidade de dias encontrados: ' + IntToStr(wListaData.Count)
             + #10 + #10 + 'Datas:' + #10 + #10 + wRetorno;

  // Retorna os dados para o usu�rio
  ShowMessage(wRetorno);

end;

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
  ShowMessage(IntToStr(wNumero1) + ', ' + IntToStr(wNumero2) + ', ' + IntToStr(wNumero3));

  end;

procedure TFormPrincipal.btnNmr3Click(Sender: TObject);
var
  wStringList: TStringList;
  wMaiorNumero: Integer;
  wI: Integer;
begin

  // Instanciando vari�veis
  wStringList:= TstringList.Create;
  wStringList.Add('2342');
  wStringList.Add('5');
  wStringList.Add('2041');
  wMaiorNumero:= StrToInt(wStringList[0]);

  // Encontra o maior n�mero
  for wI := 0 to wStringList.Count-1 do
     begin
       if StrToInt(wStringList[wI]) > wMaiorNumero then
         begin
          wMaiorNumero:= StrToInt(wStringList[wI]);
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
  wI: Integer;
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
  for wI := 0 to 9 do
     begin
       if wVetor[wI] < wMenorNumero then
         begin
          wMenorNumero:= wVetor[wI];
          wMenorQuantidade:= 1;
         end
       else if wVetor[wI] = wMenorNumero then
         begin
          wMenorQuantidade:= wMenorQuantidade + 1;
         end;
     end;

  // Retorna o menor n�mero e a quantidade para o usu�rio
  ShowMessage('O menor n�mero �: ' + IntToStr(wMenorNumero)
              + ' e os menores n�meros foram lidos '
              + IntToStr(wMenorQuantidade) + ' vezes');

end;

procedure TFormPrincipal.btnNmr5Click(Sender: TObject);
var
  wStringList: TStringList;
  wMaiorNumero: Integer;
  wMenorNumero: Integer;
  wI: Integer;
  wMedia: Currency;
  wTotal: Integer;
begin

  // Instanciando vari�veis
  wStringList:= TStringList.Create;
  wStringList.Add('5');
  wStringList.Add('3');
  wStringList.Add('1');
  wStringList.Add('7');
  wStringList.Add('9');
  wStringList.Add('12');
  wStringList.Add('12');
  wStringList.Add('12');
  wStringList.Add('12');
  wStringList.Add('12');
  wMenorNumero:= StrToInt(wStringList[0]);
  wMaiorNumero:= StrToInt(wStringList[0]);

  // Encontra o maior e o menor n�mero
  for wI := 0 to wStringList.Count-1 do
     begin
       if StrToInt(wStringList[wI]) > wMaiorNumero then
         begin
           wMaiorNumero:= StrToInt(wStringList[wI]);
         end
       else if StrToInt(wStringList[wI]) < wMenorNumero then
         begin
           wMenorNumero:= StrToInt(wStringList[wI]);
         end;
       wTotal:= wTotal + StrToInt(wStringList[wI]);
     end;

  // Calcula a m�dia dos n�meros sem o maior e o menor
  wMedia:= (wTotal - (wMaiorNumero + wMenorNumero)) / (wStringList.Count - 2);

  // Retorna os dados para o usu�rio
  ShowMessage('Maior n�mero: ' + IntToStr(wMaiorNumero) + #10 
              + 'Menor n�mero: ' + IntToStr(wMenorNumero) + #10 
              + 'M�dia dos valores: ' + CurrToStr(wMedia));
    
end;

procedure TFormPrincipal.btnNmr6Click(Sender: TObject);
var
  wNumero: Integer;
  wString: String;
begin

  // Instanciando vari�veis
  wNumero:= 550;
  wString:= IntToStr(wNumero);

  // Retorna os algarismos para o usu�rio
  ShowMessage('O n�mero: ' + IntToStr(wNumero)
              + ' possui os seguintes algarismos: '
              + wString[1] + ', ' + wString[2] + ', ' + wString[3]);

end;

procedure TFormPrincipal.btnNmr7Click(Sender: TObject);
var
  wValorHora: Currency;
  wValorHoraExtra: Currency;
  wQtdHorasNormais: Integer;
  wQtdHorasExtras: Integer;
  wSalarioAnual: Currency;
begin

  // Instanciando vari�veis
  wValorHora:= 15.0;
  wValorHoraExtra:= 30.0;
  wQtdHorasNormais:= 2000;
  wQtdHorasExtras:= 300;

  // Calculando o sal�rio anual
  wSalarioAnual:= (wValorHora * wQtdHorasNormais) + (wValorHoraExtra * wQtdHorasExtras);

  // Retorna o sal�rio anual para o usu�rio
  ShowMessage('Sal�rio anual: ' + CurrToStrF(wSalarioAnual, ffCurrency, 2));
  
end;

procedure TFormPrincipal.btnNmr8Click(Sender: TObject);
var
  wValorHora: Currency;
  wValorHoraExtra: Currency;
  wQtdHorasNormais: Integer;
  wQtdHorasExtras: Integer;
  wSalarioAnual: Currency;
  wAdicionalHorasExtras: Currency;
  wAdicionalExtra: Currency;
  wQtdHorasExtrasBonus: Integer;
  wQtdHorasNormaisBonus: Integer;
  wAdicionalNormal: Currency;
  wImpostoAnual: Currency;
  wSalarioTotal: Currency;
  wImpostoPago: Currency;
  wTotalHoraExtra: Currency;
begin

  // Instanciando vari�veis
  wValorHora:= 15.0;
  wValorHoraExtra:= 30.0;
  wQtdHorasNormais:= 2000;
  wQtdHorasExtras:= 300;
  wAdicionalExtra:= 0.10;
  wQtdHorasExtrasBonus:= 100;
  wQtdHorasNormaisBonus:= 1500;
  wAdicionalNormal:= 2.0;
  wImpostoAnual:= 18.0;
  wAdicionalHorasExtras:= 0;
  wSalarioTotal:= 0;
  wImpostoPago:= 0;
  wTotalHoraExtra:= wValorHoraExtra * wQtdHorasExtras;

  // Calcula o valor adicional caso a quantidade de horas extras passe a meta
  if wQtdHorasExtras > wQtdHorasExtrasBonus then
     begin
       wAdicionalHorasExtras:= wTotalHoraExtra * wAdicionalExtra;
     end;

  // Calcula o valor recebido em horas extras
  wTotalHoraExtra:= wTotalHoraExtra + wAdicionalHorasExtras;

  // Calcula o adicional por hora normal e o imposto do usu�rio
  if wQtdHorasNormais > wQtdHorasNormaisBonus then
     begin
       wValorHora:= wValorHora + wAdicionalNormal;
       wSalarioAnual:= (wValorHora * wQtdHorasNormais);
       wImpostoPago:= (wSalarioAnual * (wImpostoAnual/100));
     end;

  // Calcula o valor do sal�rio anual e total do funcion�rio
  wSalarioAnual:= (wValorHora * wQtdHorasNormais);
  wSalarioTotal:= (wSalarioAnual + wTotalHoraExtra) - wImpostoPago;

  // Retorna os dados para o usu�rio
  ShowMessage('Sal�rio anual normal: ' + CurrToStrF(wSalarioAnual, ffCurrency, 2) + #10
              + 'Valor horas extras: ' + CurrToStrF(wTotalHoraExtra, ffCurrency, 2) + #10
              + 'Valor imposto pago: '  + CurrToStrF(wImpostoPago, ffCurrency, 2) + #10
              + 'Sal�rio total: ' + CurrToStrF(wSalarioTotal, ffCurrency, 2));

end;

procedure TFormPrincipal.btnNmr9Click(Sender: TObject);
var
  wDataInformada: TDateTime;
  wDias: Integer;
begin

  // Instanciando vari�veis
  wDataInformada:= EncodeDateTime(2022, 05, 26, 0, 0, 0, 0);

  // Calcula entre a data atual e a informada pelo usu�rio
  wDias:= DaysBetween(Today, wDataInformada);

  // Retorna a diferen�a para o usu�rio
  ShowMessage('Diferen�a de dias: ' + IntToStr(wDias));

end;

end.
