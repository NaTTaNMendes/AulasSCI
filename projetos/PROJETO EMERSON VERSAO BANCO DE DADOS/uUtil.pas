unit uUtil;

interface

type
  TEmpresa = class
  public
    wCodigo : Integer;
    wCNPJ : String;
    wNome : String;
    wUF : Integer;
    wTelefone : String;
    function fConsultarEmpresa(prCodigo : Integer) : TEmpresa;
    function fDeletarEmpresa(prCodigo : Integer) : Boolean;
  end;

implementation

{ TEmpresa }

function TEmpresa.fConsultarEmpresa(prCodigo: Integer): TEmpresa;
begin
  // COLOCAR AQUI A IMPLEMENTAÇÃO DO MÉTODO
end;

function TEmpresa.fDeletarEmpresa(prCodigo: Integer): Boolean;
begin
  // COLOCAR AQUI A IMPLEMENTAÇÃO DO MÉTODO
end;

end.
