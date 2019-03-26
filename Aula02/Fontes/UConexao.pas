unit UConexao;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.VCLUI.Wait,
  FireDAC.Phys.PGDef, FireDAC.Phys.PG, Data.DB, FireDAC.Comp.Client,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  FireDAC.Comp.DataSet;

type
  TDMConexao = class(TDataModule)
    FDConexao: TFDConnection;
    FDDriver: TFDPhysPgDriverLink;
    FDQAlunos: TFDQuery;
    DSAlunos: TDataSource;
    FDQAlunosid: TIntegerField;
    FDQAlunosnome: TWideStringField;
    FDQAlunosdataNasc: TDateField;
    FDQAlunoscpf: TWideStringField;
    FDQAlunosfone: TWideStringField;
    FDQAlunoscel: TWideStringField;
    FDQAlunoscep: TWideStringField;
    procedure DSAlunosStateChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMConexao: TDMConexao;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses UCadAluno;

{$R *.dfm}

procedure TDMConexao.DSAlunosStateChange(Sender: TObject);
begin
  with FCadAluno do
  begin
      BtNovo.Enabled := DSAlunos.State in [dsBrowse];
      BtSalvar.Enabled := DSAlunos.State in [dsInsert , dsEdit];
      BtCancelar.Enabled := BtSalvar.Enabled;
      BtEditar.Enabled := (BtNovo.Enabled) and (not(FDQAlunos.IsEmpty));
      BtExcluir.Enabled := BtEditar.Enabled;
  end;
end;

end.
