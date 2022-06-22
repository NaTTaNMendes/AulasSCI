program ExercicioMaior;

uses
  Vcl.Forms,
  uExercicioMaior in 'uExercicioMaior.pas' {frExercicioMaior};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrExercicioMaior, frExercicioMaior);
  Application.Run;
end.
