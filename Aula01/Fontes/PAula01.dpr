program PAula01;

uses
  Vcl.Forms,
  UAula01 in 'UAula01.pas' {FAula01};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFAula01, FAula01);
  Application.Run;
end.
