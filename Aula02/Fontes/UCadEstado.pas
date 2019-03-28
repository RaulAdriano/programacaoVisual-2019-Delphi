unit UCadEstado;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Data.DB, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.Grids, Vcl.DBGrids, Vcl.Mask, Vcl.DBCtrls;

type
  TFCadEstado = class(TForm)
    PCadastro: TPageControl;
    Cadastro: TTabSheet;
    Consulta: TTabSheet;
    DBGEstado: TDBGrid;
    EPesquisar: TEdit;
    BPesquisar: TBitBtn;
    BtEditar: TButton;
    BtNovo: TButton;
    BtSalvar: TButton;
    BtCancelar: TButton;
    BtExcluir: TButton;
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
    procedure DBGEstadoDblClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCadEstado: TFCadEstado;

implementation

{$R *.dfm}

uses UConexao;

procedure TFCadEstado.BPesquisarClick(Sender: TObject);
begin
   with DMConexao do
  begin
      FDQEstado.Close;
      FDQEstado.SQL.Clear;
      FDQEstado.SQL.Add('select * from estado where nome like :PEstado');
     // FDQAlunos.ParamByName('PNome').AsString := EPesquisar.Text;          // especificando o tipo do valor recebido
      FDQEstado.ParamByName('PEstado').AsString := '%' + EPesquisar.Text + '%';
      FDQEstado.Open();
  end;
end;

procedure TFCadEstado.BtCancelarClick(Sender: TObject);
begin
  DMConexao.FDQEstado.Cancel;
end;

procedure TFCadEstado.BtEditarClick(Sender: TObject);
begin
    DMConexao.FDQEstado.Edit;
end;

procedure TFCadEstado.BtExcluirClick(Sender: TObject);
begin
  DMConexao.FDQEstado.Delete;
end;

procedure TFCadEstado.BtNovoClick(Sender: TObject);
begin
    DMConexao.FDQEstado.Insert;
end;

procedure TFCadEstado.BtSalvarClick(Sender: TObject);
begin
    DMConexao.FDQEstado.Post;
end;

procedure TFCadEstado.DBGEstadoDblClick(Sender: TObject);
begin
   PCadastro.ActivePage := Cadastro;
end;

procedure TFCadEstado.FormActivate(Sender: TObject);
begin
  DMConexao.FDQEstado.Open('select * from estado');
  PCadastro.ActivePage := Cadastro;
end;

end.
