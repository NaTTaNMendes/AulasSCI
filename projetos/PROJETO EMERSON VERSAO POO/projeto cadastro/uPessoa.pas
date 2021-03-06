unit uPessoa;

interface

uses uDataModule, System.SysUtils, System.Classes;

type
  TPessoa = class
  public
    wCodigo   : Integer;
    wNome     : String;
    wEndereco : String;
    function fRetornarRelatorio() : TStringList;
    function fDeletarPessoa(prCodigo : Integer) : Boolean;
  end;

type
  TPessoaFisica = class(TPessoa)
  public
    wCPF      : String;
    procedure pInserirPessoaFisica(prPessoa : TPessoaFisica);
    function fCalcularCPF(prEntrada : String) : Integer;
  end;

type
  TPessoaJuridica = class(TPessoa)
  public
    wIsento   : Boolean;
    wCNPJ     : String;
    procedure pInserirPessoaJuridica(prPessoa : TPessoaJuridica);
    function fRetornarPessoa(prCodigo : Integer) : TPessoaJuridica;
    function fCalcularCNPJ(prEntrada : String) : Integer;
  end;

implementation

{ TPessoaJuridica }

function TPessoaJuridica.fCalcularCNPJ(prEntrada: String): Integer;
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

function TPessoaJuridica.fRetornarPessoa(prCodigo: Integer): TPessoaJuridica;
var
  wPessoa : TPessoaJuridica;
begin
  wPessoa := TPessoaJuridica.Create;
  dmModulo.cdsDados.IndexFieldNames := 'bdCODIGO';
  if (dmModulo.cdsDados.FindKey([prCodigo])) then
     begin
       wPessoa.wCNPJ := dmModulo.cdsDados.FieldByName('bdCPF').AsString;
       wPessoa.wNome := dmModulo.cdsDados.FieldByName('bdNOME').AsString;
       wPessoa.wEndereco := dmModulo.cdsDados.FieldByName('bdENDERECO').AsString;
       wPessoa.wIsento := dmModulo.cdsDados.FieldByName('bdISENTO').AsBoolean;
     end;
  Result := wPessoa;
end;

procedure TPessoaJuridica.pInserirPessoaJuridica(prPessoa: TPessoaJuridica);
begin
  // Verifica se ? uma inser??o ou edi??o
  dmModulo.cdsDados.IndexFieldNames := 'bdCODIGO';
  if (dmModulo.cdsDados.FindKey([IntToStr(prPessoa.wCodigo)])) then
     dmModulo.cdsDados.Edit
  else
     dmModulo.cdsDados.Insert;

  // Coloca os dados no CDS
  dmModulo.cdsDados.FieldByName('bdCODIGO').AsInteger := prPessoa.wCodigo;
  dmModulo.cdsDados.FieldByName('bdTIPO').AsInteger := 1;
  dmModulo.cdsDados.FieldByName('bdCPF').AsString := prPessoa.wCNPJ;
  dmModulo.cdsDados.FieldByName('bdNOME').AsString := prPessoa.wNome;
  dmModulo.cdsDados.FieldByName('bdENDERECO').AsString := prPessoa.wEndereco;
  dmModulo.cdsDados.FieldByName('bdISENTO').AsBoolean := prPessoa.wIsento;

  // Salva os dados no CDS
  dmModulo.cdsDados.Post;
end;

{ TPessoaFisica }

function TPessoaFisica.fCalcularCPF(prEntrada: String): Integer;
var
  wIncrementador, wSoma, wCount, wNumeroTemporario, wResto : Integer;
begin
  wIncrementador := 2;
  wSoma := 0;
  for wCount := Length(prEntrada) downto 1 do
    begin
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

procedure TPessoaFisica.pInserirPessoaFisica(prPessoa: TPessoaFisica);
begin
  // Verifica se ? uma inser??o ou edi??o
  dmModulo.cdsDados.IndexFieldNames := 'bdCODIGO';
  if (dmModulo.cdsDados.FindKey([IntToStr(prPessoa.wCodigo)])) then
     dmModulo.cdsDados.Edit
  else
     dmModulo.cdsDados.Insert;

  // Coloca os dados no CDS
  dmModulo.cdsDados.FieldByName('bdCODIGO').AsInteger := prPessoa.wCodigo;
  dmModulo.cdsDados.FieldByName('bdTIPO').AsInteger := 0;
  dmModulo.cdsDados.FieldByName('bdCPF').AsString := prPessoa.wCPF;
  dmModulo.cdsDados.FieldByName('bdNOME').AsString := prPessoa.wNome;
  dmModulo.cdsDados.FieldByName('bdENDERECO').AsString := prPessoa.wEndereco;
  dmModulo.cdsDados.FieldByName('bdISENTO').AsBoolean := False;

  // Salva os dados no CDS
  dmModulo.cdsDados.Post;
end;

{ TPessoa }

function TPessoa.fDeletarPessoa(prCodigo: Integer): Boolean;
begin
  try
    dmModulo.cdsDados.IndexFieldNames := 'bdCODIGO';
    if (dmModulo.cdsDados.FindKey([prCodigo])) then
       dmModulo.cdsDados.Delete;
       Result := True;
  except
    Result := False;
  end;
end;

function TPessoa.fRetornarRelatorio: TStringList;
var
  wSaida, wTipo, wIsento : String;
  wLista : TStringList;
begin
  wSaida := '';
  wLista := TStringList.Create;

  // Adiciona todos os dados do CDS em um arquivo e salva
  dmModulo.cdsDados.IndexFieldNames := 'bdCODIGO';
  dmModulo.cdsDados.First;

  while not(dmModulo.cdsDados.Eof) do
    begin
      if (dmModulo.cdsDados.FieldByName('bdTIPO').AsInteger = 0) then
         wTipo := 'Pessoa F?sica'
      else
         wTipo := 'Pessoa jur?dica';

      if (dmModulo.cdsDados.FieldByName('bdISENTO').AsBoolean) then
         wIsento := 'Sim'
      else
         wIsento := 'N?o';

      wSaida := wSaida + #13 +
      'C?digo: ' + IntToStr(dmModulo.cdsDados.FieldByName('bdCODIGO').AsInteger) + ' | ' +
      'Nome: ' + dmModulo.cdsDados.FieldByName('bdNOME').AsString + ' | ' +
      'CPF/CNPJ: ' + dmModulo.cdsDados.FieldByName('bdCPF').AsString + ' | ' +
      'Tipo: ' + wTipo + ' | ' +
      'Isento: ' + wIsento + ' | ' +
      'Endere?o: ' + dmModulo.cdsDados.FieldByName('bdENDERECO').AsString;

      // Avan?a para a pr?xima linha
      dmModulo.cdsDados.Next;
    end;

  // Adiciona os dados na lista e retorna
  wLista.Add(wSaida);
  Result := wLista;
end;

end.
