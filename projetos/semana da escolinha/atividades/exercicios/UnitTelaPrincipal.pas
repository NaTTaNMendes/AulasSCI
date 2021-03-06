unit UnitTelaPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, DateUtils, StrUtils;

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
    btnNmr12: TButton;
    btnNmr131: TButton;
    btnNmr132: TButton;
    btnNmr14: TButton;
    btnNmr15: TButton;
    btnNmr16: TButton;
    btnNmr17: TButton;
    btnNmr18: TButton;
    Edit1: TEdit;
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
    procedure btnNmr12Click(Sender: TObject);
    procedure btnNmr131Click(Sender: TObject);
    procedure btnNmr132Click(Sender: TObject);
    procedure btnNmr14Click(Sender: TObject);
    procedure btnNmr15Click(Sender: TObject);
    procedure btnNmr16Click(Sender: TObject);
    procedure btnNmr17Click(Sender: TObject);
    procedure btnNmr18Click(Sender: TObject);
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

  // Instanciando vari?veis
  wDataInformada:= EncodeDate(2030, 06, 15);
  wDiasNaSemana[1]:= 'Domingo';
  wDiasNaSemana[2]:= 'Segunda-Feira';
  wDiasNaSemana[3]:= 'Ter?a-Feira';
  wDiasNaSemana[4]:= 'Quarta-Feira';
  wDiasNaSemana[5]:= 'Quinta-Feira';
  wDiasNaSemana[6]:= 'Sexta-Feira';
  wDiasNaSemana[7]:= 'S?bado';

  // Coleta o dia da semana
  wDiaSemana:= DayOfWeek(wDataInformada);

  // Retorna o dia para o usu?rio
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

  // Instanciando vari?veis
  wAnoInicial:= 2000;
  wAnoFinal:= 2010;
  wDiaMesRequisitado:= 13;                          // Aqui ? informado o dia do m?s em que se deseja procurar
  wDiaSemanaRequisitado:= 5;                        // Aqui ? informado o dia da semana que se deseja procurar (0 - Domingo, 1 -  Segunda, ..., 6 - S?bado)
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

  // Retorna os dados para o usu?rio
  ShowMessage(wRetorno);

end;

procedure TFormPrincipal.btnNmr12Click(Sender: TObject);
var
  wTextoEntrada, wTextoSaida: String;
  wI: Integer;
begin

  // Instanciando vari?veis
  wTextoEntrada:= 'SCI Sistemas Cont?beis';
  wTextoSaida:= '';

  // inverte o texto
  for wI := Length(wTextoEntrada) downto 1 do
     begin
       wTextoSaida:= wTextoSaida + wTextoEntrada[wI];
     end;

  // Retorna os textos para o usu?rio
  ShowMessage('Texto original: ' + wTextoEntrada + #10
              + 'Texto invertido: ' + wTextoSaida);

end;

procedure TFormPrincipal.btnNmr131Click(Sender: TObject);
var
  wTextoInformado, wTextoSaida: String;
begin

  // Instanciando vari?veis
  wTextoInformado:= 'Vou ficar grande';

  // Coloca todas as letras em upperCase
  wTextoSaida:= AnsiUpperCase(wTextoInformado);

  //Retorna para o usu?rio
  ShowMessage('Texto informado: ' + wTextoInformado
              + #10 + 'Texto em mai?sculas: ' + wTextoSaida);

end;

procedure TFormPrincipal.btnNmr132Click(Sender: TObject);
var
  wTextoInformado, wTextoSaida: String;
begin

   // Instanciando vari?veis
   wTextoInformado:= 'VOU FICAR PEQUENO';

   // Coloca todas as letras em upperCase
   wTextoSaida:= AnsiLowerCase(wTextoInformado);

   //Retorna para o usu?rio
   ShowMessage('Texto informado: ' + wTextoInformado
               + #10 + 'Texto em min?sculas: ' + wTextoSaida);

end;

procedure TFormPrincipal.btnNmr14Click(Sender: TObject);
var
  wTexto: String;
  wTextoSaida: String;
  wI: Integer;
begin

  // Instanciando vari?veis
  wTexto:= 'sci sistemas cont?beis';

  // Transforma em mai?scula todas as letras ap?s um espa?o
  for wI := 1 to Length(wtexto) do
     begin
       if wI = 1 then
          begin
            wTextoSaida:= AnsiUpperCase(wTexto[wI]);
          end
       else if wTexto[wI - 1] = ' ' then
          begin
            wTextoSaida:= wTextoSaida + AnsiUpperCase(wTexto[wI]);
          end
       else
          begin
            wTextoSaida:= wTextoSaida + wTexto[wI];
          end;
     end;

  // Retorna os textos para o usu?rio
  ShowMessage('Texto informado: ' + wTexto + #10
              + 'Texto convetido: ' + wTextoSaida);

end;

procedure TFormPrincipal.btnNmr15Click(Sender: TObject);
var
  wTexto, wTextoMaiuscula: String;
  wQtdLetras: Integer;
  wQtdConsoantes: Integer;
  wQtdVogais: Integer;
  wI: Integer;
  wVogais : String;
  wConsoantes: String;
begin

  // Instanciando vari?veis
  wTexto:= 'SCI Sistemas Cont?beis ? uma empresa de tecnologia';
  wTextoMaiuscula:= AnsiUpperCase(wTexto);
  wVogais:= 'AEIOU?????';
  wConsoantes:= 'BCDFGHJKLMNPQRSTVWXYZ';

  // Coleta a quantidade de vogais e consoantes
  for wI := 1 to Length(wTextoMaiuscula) do
     begin
       if Pos(wTextoMaiuscula[wI], wVogais) > 0 then
          begin
            wQtdVogais:= wQtdVogais + 1;
          end;

       if Pos(wTextoMaiuscula[wI], wConsoantes) > 0 then
          begin
            wQtdConsoantes:= wQtdConsoantes + 1;
          end;
     end;

  // Calcula a quantidade de letras
  wQtdLetras:= wQtdVogais + wQtdConsoantes;

  // Retorna os dados para o usu?rio
  ShowMessage('Texto informado: ' + wTexto + #10
              + 'Quantidade de letras: ' + IntToStr(wQtdLetras)
              + #10 + 'Quantidade de vogais: ' + IntToStr(wQtdVogais)
              + #10 + 'Quantidade de consoantes: ' + IntToStr(wQtdConsoantes));

end;

procedure TFormPrincipal.btnNmr16Click(Sender: TObject);
var
  wTexto, wTextoMaiuscula: String;
  wQtdLetras: Integer;
  wI: Integer;
  wVogais: String;
  wConsoantes: String;
  wSaida: String;
begin

  // Instanciando vari?veis
  wTexto:= 'SCI Sistemas Cont?beis ? uma empresa de tecnologia';
  wTextoMaiuscula:= AnsiUpperCase(wTexto);
  wVogais:= 'AEIOU?????';
  wConsoantes:= 'BCDFGHJKLMNPQRSTVWXYZ';

  // Coleta a quantidade de letras
  for wI := 1 to Length(wTextoMaiuscula) do
     begin
       if (Pos(wTextoMaiuscula[wI], wVogais) > 0) or (Pos(wTextoMaiuscula[wI], wConsoantes) > 0) then
          begin
            wQtdLetras:= wQtdLetras + 1;
          end;
     end;

  // Retorna os dados para o usu?rio
  if wQtdLetras = 50 then
     begin
       wSaida:= 'A frase chegou ao limite de letras';
     end
  else if wQtdLetras > 50 then
     begin
       wSaida:= 'A frase n?o ser? aceita pois superou o limite de caracteres.';
     end
  else
     begin
       wSaida:= 'Texto aprovado';
     end;
  ShowMessage('Texto informado: ' + wTexto + #10 + IntToStr(wQtdLetras) + #10 + wSaida);

end;

procedure TFormPrincipal.btnNmr17Click(Sender: TObject);
var
  wListaCedulas: array [0..6] of Integer;
  wListaSaidaCedulas: array [0..6] of Integer;
  wValor, wValorSaida, wI: Integer;
  wTextoSaida: String;
begin

  // Instanciando vari?veis
  wListaCedulas[0]:= 1;
  wListaCedulas[1]:= 2;
  wListaCedulas[2]:= 5;
  wListaCedulas[3]:= 10;
  wListaCedulas[4]:= 20;
  wListaCedulas[5]:= 50;
  wListaCedulas[6]:= 100;
  wValor:= 993;
  wValorSaida:= wValor;

  // Calcula a quantidade de c?dulas
  for wI := 6 downto 0 do
     begin
       wListaSaidaCedulas[wI]:= trunc(wValor / wListaCedulas[wI]);
       wValor:= wValor - wListaSaidaCedulas[wI] * wListaCedulas[wI];
       wTextoSaida:= wTextoSaida + IntToStr(wListaSaidaCedulas[wI]) + ' notas de ' + IntToStr(wListaCedulas[wI]) + #10;
     end;

  // Retorna os valores para o usu?rio
  ShowMessage('Valor informado: ' + IntToStr(wValorSaida) + #10 + #10 + wTextoSaida);

end;

procedure TFormPrincipal.btnNmr18Click(Sender: TObject);
var
  w101a900: array [0..8] of String;
  w20a90: array [0..7] of String;
  w10a19: array [0..9] of String;
  w0a9: array [0..9] of String;
  wEntrada: String;
  wSaida: String;
  wNumeroTemp, wI, wI2: Integer;
begin

  // Instanciando vari?veis
  w0a9[1]:= 'um';
  w0a9[2]:= 'dois';
  w0a9[3]:= 'tr?s';
  w0a9[4]:= 'quatro';
  w0a9[5]:= 'cinco';
  w0a9[6]:= 'seis';
  w0a9[7]:= 'sete';
  w0a9[8]:= 'oito';
  w0a9[9]:= 'nove';
  w10a19[0]:= 'dez';
  w10a19[1]:= 'onze';
  w10a19[2]:= 'doze';
  w10a19[3]:= 'treze';
  w10a19[4]:= 'quatorze';
  w10a19[5]:= 'quinze';
  w10a19[6]:= 'dezesseis';
  w10a19[7]:= 'dezesete';
  w10a19[8]:= 'dezoito';
  w10a19[9]:= 'dezenove';
  w20a90[0]:= 'vinte';
  w20a90[1]:= 'trinta';
  w20a90[2]:= 'quarenta';
  w20a90[3]:= 'cinquenta';
  w20a90[4]:= 'sessenta';
  w20a90[5]:= 'setenta';
  w20a90[6]:= 'oitenta';
  w20a90[7]:= 'noventa';
  w101a900[0]:= 'cento';
  w101a900[1]:= 'duzentos';
  w101a900[2]:= 'trezentos';
  w101a900[3]:= 'quatrocentos';
  w101a900[4]:= 'quinhentos';
  w101a900[5]:= 'seiscentos';
  w101a900[6]:= 'setecentos';
  w101a900[7]:= 'oitocentos';
  w101a900[8]:= 'novecentos';
  wEntrada:= Edit1.Text;

  // Transforma os n?meros para extenso
  if Length(wEntrada) = 3 then
     begin
       for wI := 1 to Length(wEntrada) do
           begin
             wNumeroTemp:= StrToInt(wEntrada[wI]);
             if (wI = 1) then
                begin
                  wSaida:= wSaida + w101a900[wNumeroTemp - 1] + ' ';
                end
             else if (wI = 2) then
                begin
                  if wNumeroTemp = 1 then
                     begin
                       for wI2 := 0 to 9 do
                          begin
                            if StrToInt(wEntrada[wI + 1]) = wI2 then
                               begin
                                 wSaida:= wSaida + ' e ' + w10a19[wI2];
                               end;
                          end;
                     end
                  else
                     begin
                       if wNumeroTemp <> 0 then
                          begin
                            wSaida:= wSaida + ' e ' + w20a90[wNumeroTemp - 2];
                          end
                     end;
                end
             else if (wI = 3) and (StrToInt(wEntrada[wI - 1]) <> 1) then
                begin
                  if wNumeroTemp <> 0 then
                     begin
                       wSaida:= wSaida + ' e ' + w0a9[wNumeroTemp];
                     end;
                end;
           end;
     end
  else if Length(wEntrada) = 2 then
     begin
       for wI := 1 to Length(wEntrada) do
           begin
             wNumeroTemp:= StrToInt(wEntrada[wI]);
             if (wI = 1) then
                begin
                  if wNumeroTemp = 1 then
                     begin
                       for wI2 := 0 to 9 do
                          begin
                            if StrToInt(wEntrada[wI + 1]) = wI2 then
                               begin
                                 wSaida:= wSaida + w10a19[wI2];
                               end;
                          end;
                     end
                  else
                     begin
                       if wNumeroTemp = 0 then
                          begin
                            wSaida:= wSaida + w20a90[wNumeroTemp];
                          end
                       else
                          begin
                            wSaida:= wSaida + w20a90[wNumeroTemp - 2];
                          end;
                     end;
                end
             else if (wI = 2) and (StrToInt(wEntrada[wI - 1]) <> 1) then
                begin
                  if wNumeroTemp <> 0 then
                     begin
                       wSaida:= wSaida + ' e ' + w0a9[wNumeroTemp];
                     end;
                end;
           end;
     end
  else if Length(wEntrada) = 1 then
     begin
       wNumeroTemp:= StrToInt(wEntrada);
       wSaida:= w0a9[wNumeroTemp];
     end;

  // Verifica os n?meros especiais
  if wEntrada = '100' then
     begin
       wSaida:= 'Cem';
     end
  else if wEntrada = '0' then
     begin
       wSaida:= 'Zero';
     end;

  // Retorna o n?mero para o usu?rio
  ShowMessage('N?mero informado: ' + wEntrada + #10 + 'N?mero escrito: ' + wSaida);

end;

procedure TFormPrincipal.btnNmr1Click(Sender: TObject);
var
  wMaiorNumero: Integer;
  wNumero1: Integer;
  wNumero2: Integer;
  wNumero3: Integer;
begin

  // Instanciando vari?veis
  wNumero1:= 51;
  wNumero2:= 73;
  wNumero3:= -512;

  // Encontra o maior n?mero
  wMaiorNumero:= wNumero1;
  if wNumero2 > wMaiorNumero then
     begin
       wMaiorNumero:= wNumero2;
     end;
  if wNumero3 > wMaiorNumero then
     begin
       wMaiorNumero:= wNumero3;
     end;

  // Retorna o maior para o usu?rio
  showMessage('O maior n?mero entre ' + IntToStr(wNumero1) + ', '
              + IntToStr(wNumero2) + ' e '  + IntToStr(wNumero3)
              + ' ?: ' + IntToStr(wMaiorNumero));

end;

procedure TFormPrincipal.btnNmr2Click(Sender: TObject);
var
  wTemporario: Integer;
  wTemporario2: Integer;
  wNumero1: Integer;
  wNumero2: Integer;
  wNumero3: Integer;
begin

  // Instanciando vari?veis
  wNumero1:= 1002;
  wNumero2:= 0;
  wNumero3:= 7649;

  // Verifica se o primeiro valor ? maior que o segundo
  if (wNumero2 < wNumero1) then
     begin
       wTemporario:= wNumero1;
       wNumero1:= wNumero2;
       wNumero2:= wTemporario;
     end;

  // Verifica se o terceiro valor ? menor que o primeiro
  if (wNumero3 < wNumero1) then
     begin
       wTemporario:= wNumero1;
       wTemporario2:= wNumero2;
       wNumero1:= wNumero3;
       wNumero2:= wTemporario;
       wNumero3:= wTemporario2;
     end;

  // Verifica se o terceiro valor ? menor que o segundo
  if (wNumero3 < wNumero2) then
     begin
       wTemporario:= wNumero3;
       wNumero3:= wNumero2;
       wNumero2:= wTemporario;
     end;

  // Retorna para o usu?rio
  ShowMessage(IntToStr(wNumero1) + ', ' + IntToStr(wNumero2) + ', ' + IntToStr(wNumero3));

  end;

procedure TFormPrincipal.btnNmr3Click(Sender: TObject);
var
  wStringList: TStringList;
  wMaiorNumero: Integer;
  wI: Integer;
begin

  // Instanciando vari?veis
  wStringList:= TstringList.Create;
  wStringList.Add('2342');
  wStringList.Add('5');
  wStringList.Add('2041');
  wMaiorNumero:= StrToInt(wStringList[0]);

  // Encontra o maior n?mero
  for wI := 0 to wStringList.Count-1 do
     begin
       if StrToInt(wStringList[wI]) > wMaiorNumero then
         begin
          wMaiorNumero:= StrToInt(wStringList[wI]);
         end;
     end;

  // Retorna o maior n?mero para o usu?rio
  ShowMessage('O maior n?mero ?: ' + IntToStr(wMaiorNumero));

end;

procedure TFormPrincipal.btnNmr4Click(Sender: TObject);
var
  wVetor: array[0..9] of Integer;
  wMenorNumero: Integer;
  wMenorQuantidade: Integer;
  wI: Integer;
begin

  // Instanciando vari?veis
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

  // Encontra o menor n?mero e a quantidade de vezes que ele aparece
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

  // Retorna o menor n?mero e a quantidade para o usu?rio
  ShowMessage('O menor n?mero ?: ' + IntToStr(wMenorNumero)
              + ' e os menores n?meros foram lidos '
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

  // Instanciando vari?veis
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

  // Encontra o maior e o menor n?mero
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

  // Calcula a m?dia dos n?meros sem o maior e o menor
  wMedia:= (wTotal - (wMaiorNumero + wMenorNumero)) / (wStringList.Count - 2);

  // Retorna os dados para o usu?rio
  ShowMessage('Maior n?mero: ' + IntToStr(wMaiorNumero) + #10 
              + 'Menor n?mero: ' + IntToStr(wMenorNumero) + #10 
              + 'M?dia dos valores: ' + CurrToStr(wMedia));
    
end;

procedure TFormPrincipal.btnNmr6Click(Sender: TObject);
var
  wNumero: Integer;
  wString: String;
begin

  // Instanciando vari?veis
  wNumero:= 550;
  wString:= IntToStr(wNumero);

  // Retorna os algarismos para o usu?rio
  ShowMessage('O n?mero: ' + IntToStr(wNumero)
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

  // Instanciando vari?veis
  wValorHora:= 15.0;
  wValorHoraExtra:= 30.0;
  wQtdHorasNormais:= 2000;
  wQtdHorasExtras:= 300;

  // Calculando o sal?rio anual
  wSalarioAnual:= (wValorHora * wQtdHorasNormais) + (wValorHoraExtra * wQtdHorasExtras);

  // Retorna o sal?rio anual para o usu?rio
  ShowMessage('Sal?rio anual: ' + CurrToStrF(wSalarioAnual, ffCurrency, 2));
  
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

  // Instanciando vari?veis
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

  // Calcula o adicional por hora normal e o imposto do usu?rio
  if wQtdHorasNormais > wQtdHorasNormaisBonus then
     begin
       wValorHora:= wValorHora + wAdicionalNormal;
       wSalarioAnual:= (wValorHora * wQtdHorasNormais);
       wImpostoPago:= (wSalarioAnual * (wImpostoAnual/100));
     end;

  // Calcula o valor do sal?rio anual e total do funcion?rio
  wSalarioAnual:= (wValorHora * wQtdHorasNormais);
  wSalarioTotal:= (wSalarioAnual + wTotalHoraExtra) - wImpostoPago;

  // Retorna os dados para o usu?rio
  ShowMessage('Sal?rio anual normal: ' + CurrToStrF(wSalarioAnual, ffCurrency, 2) + #10
              + 'Valor horas extras: ' + CurrToStrF(wTotalHoraExtra, ffCurrency, 2) + #10
              + 'Valor imposto pago: '  + CurrToStrF(wImpostoPago, ffCurrency, 2) + #10
              + 'Sal?rio total: ' + CurrToStrF(wSalarioTotal, ffCurrency, 2));

end;

procedure TFormPrincipal.btnNmr9Click(Sender: TObject);
var
  wDataInformada: TDateTime;
  wDias: Integer;
begin

  // Instanciando vari?veis
  wDataInformada:= EncodeDateTime(2022, 05, 26, 0, 0, 0, 0);

  // Calcula entre a data atual e a informada pelo usu?rio
  wDias:= DaysBetween(Today, wDataInformada);

  // Retorna a diferen?a para o usu?rio
  ShowMessage('Diferen?a de dias: ' + IntToStr(wDias));

end;

end.
