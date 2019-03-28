unit UCadAluno;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Vcl.ComCtrls, Data.DB, Vcl.Buttons, Vcl.Grids, Vcl.DBGrids, Vcl.WinXPickers,
  Vcl.WinXCalendars, Vcl.WinXCtrls, Vcl.Samples.Gauges, Vcl.ColorGrd,
  Vcl.OleCtrls, SHDocVw;

type
  TFCadAluno = class(TForm)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    BtNovo: TButton;
    BtSalvar: TButton;
    PCAlunos: TPageControl;
    TCadastro: TTabSheet;
    TConsulta: TTabSheet;
    BtEditar: TButton;
    BtCancelar: TButton;
    BtExcluir: TButton;
    DBGAlunos: TDBGrid;
    EPesquisar: TEdit;
    BPesquisar: TBitBtn;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    procedure BtNovoClick(Sender: TObject);
    procedure BtSalvarClick(Sender: TObject);
    procedure BtEditarClick(Sender: TObject);
    procedure BtExcluirClick(Sender: TObject);
    procedure BtCancelarClick(Sender: TObject);
    procedure BPesquisarClick(Sender: TObject);
    procedure DBGAlunosDblClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCadAluno: TFCadAluno;

implementation

{$R *.dfm}

uses UConexao;

procedure TFCadAluno.BPesquisarClick(Sender: TObject);
begin
  with DMConexao do
  begin
      FDQAlunos.Close;
      FDQAlunos.SQL.Clear;
      FDQAlunos.SQL.Add('select * from aluno where nome like :PNome');
     // FDQAlunos.ParamByName('PNome').AsString := EPesquisar.Text;          // especificando o tipo do valor recebido
      FDQAlunos.ParamByName('PNome').AsString := '%' + EPesquisar.Text + '%';
      FDQAlunos.Open();
  end;
end;

procedure TFCadAluno.BtCancelarClick(Sender: TObject);
begin
  DMConexao.FDQAlunos.Cancel;
end;

procedure TFCadAluno.BtEditarClick(Sender: TObject);
begin
     DMConexao.FDQAlunos.Edit;
end;

procedure TFCadAluno.BtExcluirClick(Sender: TObject);
begin
  DMConexao.FDQAlunos.Delete;
end;

procedure TFCadAluno.BtNovoClick(Sender: TObject);
begin
  DMConexao.FDQAlunos.Insert;

end;

procedure TFCadAluno.BtSalvarClick(Sender: TObject);
begin
  DMConexao.FDQAlunos.Post;
end;



procedure TFCadAluno.DBGAlunosDblClick(Sender: TObject);
begin
    PCAlunos.ActivePage := TCadastro;
end;

procedure TFCadAluno.FormActivate(Sender: TObject);
begin
  DMConexao.FDQAlunos.Open('select * from aluno');
  PCAlunos.ActivePage := TCadastro;
end;

end.
