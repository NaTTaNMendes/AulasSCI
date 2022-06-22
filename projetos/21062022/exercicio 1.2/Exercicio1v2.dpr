program Exercicio1v2;

uses
  Vcl.Forms,
  uExercicio1v2 in 'uExercicio1v2.pas' {frExercicio1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrExercicio1, frExercicio1);
  Application.Run;
end.
