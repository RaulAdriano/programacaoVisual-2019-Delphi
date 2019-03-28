unit UCadCidade;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.ComCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  TFCadCidade = class(TForm)
    PageControl1: TPageControl;
    Cadastro: TTabSheet;
    Consulta: TTabSheet;
    BtEditar: TButton;
    BtNovo: TButton;
    BtSalvar: TButton;
    BtCancelar: TButton;
    BtExcluir: TButton;
    DBGCidade: TDBGrid;
    EPesquisar: TEdit;
    BPesquisar: TBitBtn;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    procedure BPesquisarClick(Sender: TObject);
    procedure BtNovoClick(Sender: TObject);
    procedure BtEditarClick(Sender: TObject);
    procedure BtSalvarClick(Sender: TObject);
    procedure BtCancelarClick(Sender: TObject);
    procedure BtExcluirClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCadCidade: TFCadCidade;

implementation

{$R *.dfm}

uses UConexao;

procedure TFCadCidade.BPesquisarClick(Sender: TObject);
begin
  with DMConexao do
  begin
      FDQCidade.Close;
      FDQCidade.SQL.Clear;
      FDQCidade.SQL.Add('select * from cidade where nome like :PCidade');
     // FDQAlunos.ParamByName('PNome').AsString := EPesquisar.Text;          // especificando o tipo do valor recebido
      FDQCidade.ParamByName('PCidade').AsString := '%' + EPesquisar.Text + '%';
      FDQCidade.Open();
  end;
end;

procedure TFCadCidade.BtCancelarClick(Sender: TObject);
begin
   DMConexao.FDQCidade.Cancel;
end;

procedure TFCadCidade.BtEditarClick(Sender: TObject);
begin
    DMConexao.FDQCidade.Edit;
end;

procedure TFCadCidade.BtExcluirClick(Sender: TObject);
begin
    DMConexao.FDQCidade.Delete;
end;

procedure TFCadCidade.BtNovoClick(Sender: TObject);
begin
  DMConexao.FDQCidade.Insert;
end;

procedure TFCadCidade.BtSalvarClick(Sender: TObject);
begin
  DMConexao.FDQCidade.Post;
end;

procedure TFCadCidade.FormActivate(Sender: TObject);
begin
  DMConexao.FDQCidade.Open('select * from cidade');
  PageControl1.ActivePage := Cadastro;
end;

end.
