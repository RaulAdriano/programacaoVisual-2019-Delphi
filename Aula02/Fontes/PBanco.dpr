program PBanco;

uses
  Vcl.Forms,
  UFBancoDados in 'UFBancoDados.pas' {FBancoDados},
  UConexao in 'UConexao.pas' {DMConexao: TDataModule},
  UCadAluno in 'UCadAluno.pas' {FCadAluno};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFBancoDados, FBancoDados);
  Application.CreateForm(TDMConexao, DMConexao);
  Application.CreateForm(TFCadAluno, FCadAluno);
  Application.Run;
end.
