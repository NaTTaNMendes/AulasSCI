program Exercicio1;

uses
  Vcl.Forms,
  uExercicio1 in 'uExercicio1.pas' {frExercicio1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrExercicio1, frExercicio1);
  Application.Run;
end.
