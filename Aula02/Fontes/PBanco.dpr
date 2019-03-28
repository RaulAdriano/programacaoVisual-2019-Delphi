program PBanco;

uses
  Vcl.Forms,
  UFBancoDados in 'UFBancoDados.pas' {FBancoDados},
  UConexao in 'UConexao.pas' {DMConexao: TDataModule},
  UCadAluno in 'UCadAluno.pas' {FCadAluno},
  UCadEstado in 'UCadEstado.pas' {FCadEstado},
  UCadCidade in 'UCadCidade.pas' {FCadCidade};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFBancoDados, FBancoDados);
  Application.CreateForm(TDMConexao, DMConexao);
  Application.CreateForm(TFCadAluno, FCadAluno);
  Application.CreateForm(TFCadEstado, FCadEstado);
  Application.CreateForm(TFCadCidade, FCadCidade);
  Application.Run;
end.
