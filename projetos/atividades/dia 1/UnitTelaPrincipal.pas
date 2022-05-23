unit UnitTelaPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  wNumero1: Integer;
  wNumero2: Integer;
  wNumero3: Integer;
  wMaiorNumero: Integer;
  wMenorNumero: Integer;
  wMedioNumero: Integer;
  wTotal : Integer;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin

  wNumero1 := 40;
  wNumero2 := 20;
  wNumero3 := 30;

  wMaiorNumero:= wNumero1;
  if wNumero2 > wMaiorNumero then
    begin
      wMaiorNumero:= wNumero2;
    end;
  if wNumero3 > wMaiorNumero  then
    begin
      wMaiorNumero:= wNumero3;
    end;

  showMessage('O maior n�mero �:' + IntToStr(wMaiorNumero));

end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  wNumero1:= 40;
  wNumero2:= 20;
  wNumero3:= 30;

  wTotal:= wNumero1 + wNumero2 + wNumero3;

  if (wNumero1 > wNumero2) and (wNumero1 > wNumero3) then
    begin
      wmaiorNumero:= wNumero1;
    end
  else if (wNumero2 > wNumero1) and (wNumero2 > wNumero3) then
    begin
      wMaiorNumero:= wNumero2;
    end
  else
    begin
      wMaiorNumero:= wNumero3;
    end;

  if (wNumero1 < wNumero2) and (wNumero1 < wNumero3) then
    begin
      wmaiorNumero:= wNumero1;
    end
  else if (wNumero2 < wNumero1) and (wNumero2 < wNumero3) then
    begin
      wMaiorNumero:= wNumero2;
    end
  else
    begin
      wMaiorNumero:= wNumero3;
    end;

  wMedioNumero:= wTotal - wMaiorNumero - wMenorNumero;

  showMessage(IntToStr(wMenorNumero) +  ' ' + IntToStr(wMedioNumero) + ' ' + IntToStr(wMaiorNumero));
end;

end.
