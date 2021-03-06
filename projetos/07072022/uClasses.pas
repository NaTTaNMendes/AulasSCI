unit uClasses;

interface

type
  TVeiculo = class
  public
    wModelo : String;
    wCor : String;
    wPeso : Integer;
    procedure pLigar(prChave : Boolean); Virtual; Abstract;
  end;

type
  TCarro = class(TVeiculo)
  public
    wPortas : Integer;
    wRodas : Integer;
    wPlaca : String;
  end;

type
  TMoto = class(TVeiculo)
  public
    wPlaca : String
  end;

implementation

end.
