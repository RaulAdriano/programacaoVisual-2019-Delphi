program PAula01;

uses
  Vcl.Forms,
  UFPrimeiraTela in 'UFPrimeiraTela.pas' {FPrimeiraTela};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFPrimeiraTela, FPrimeiraTela);
  Application.Run;
end.
