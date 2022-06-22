program ExercicioCadastro;

uses
  Vcl.Forms,
  uExercicioCadastro in 'uExercicioCadastro.pas' {frCadastro};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrCadastro, frCadastro);
  Application.Run;
end.
