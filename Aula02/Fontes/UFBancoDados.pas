unit UFBancoDados;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Data.DB,
  Vcl.Grids, Vcl.DBGrids, Vcl.Buttons, Vcl.DBCtrls;

type
  TFBancoDados = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Portalb: TLabel;
    EDPorta: TEdit;
    EDServidor: TEdit;
    Panel2: TPanel;
    Label3: TLabel;
    EDUser: TEdit;
    Label4: TLabel;
    EDSenha: TEdit;
    Label5: TLabel;
    EDBanco: TEdit;
    Panel3: TPanel;
    BTConectar: TBitBtn;
    BTDesconectar: TBitBtn;
    LBStatus: TLabel;
    Panel4: TPanel;
    EDPesquisa: TEdit;
    BTBuscar: TBitBtn;
    DBGAlunos: TDBGrid;
    DBNavigator1: TDBNavigator;
    BTCadAluno: TButton;
    Button1: TButton;
    Button2: TButton;
    procedure BTBuscarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BTDesconectarClick(Sender: TObject);
    procedure BTConectarClick(Sender: TObject);
    procedure BTCadAlunoClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FBancoDados: TFBancoDados;

implementation

{$R *.dfm}

uses UConexao, UCadAluno, UCadCidade, UCadEstado;

procedure TFBancoDados.BTBuscarClick(Sender: TObject);
begin
  {
  DMConexao.FDQAlunos.Close;
  DMConexao.FDQAlunos.SQL.Clear;
  DMConexao.FDQAlunos.SQL.Add(EDPesquisa.Text);
  DMConexao.FDQAlunos.Open();
  }

  DMConexao.FDQAlunos.Open(EDPesquisa.Text);

end;

procedure TFBancoDados.BTCadAlunoClick(Sender: TObject);
begin
  FCadAluno.Show;
end;

procedure TFBancoDados.BTConectarClick(Sender: TObject);
begin
     with DMConexao do
     begin
       FDConexao.Params.Values['Server'] := EDServidor.Text;
       FDConexao.Params.Values['Port'] := EDPorta.Text;
       FDConexao.Params.Database := EDBanco.Text;
       FDConexao.Params.Password := EDSenha.Text;

       try
          FDConexao.Connected := true;
          LBStatus.Caption := ' Conectado';
          LBStatus.Color := clLime;
          BTDesconectar.Enabled:= true;
          BTConectar.Enabled:= false;
          EDPesquisa.Enabled := true;
       Except on  E: Exception do
        showmessage(e.ClassName + ' nao foi possivel conectar');

       end;
     end;
end;

procedure TFBancoDados.BTDesconectarClick(Sender: TObject);
begin
    with DMConexao do
    begin
      FDConexao.Connected := False;
      LBStatus.Caption := ' Desconectado';
      LBStatus.Color := clRed;
      BTDesconectar.Enabled:= false;
      BTConectar.Enabled:= true;
      EDPesquisa.Enabled := false;
    end;
end;

procedure TFBancoDados.Button1Click(Sender: TObject);
begin
  FCadCidade.Show;
end;

procedure TFBancoDados.Button2Click(Sender: TObject);
begin
  FCadEstado.Show;
end;

procedure TFBancoDados.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    DMConexao.FDConexao.Connected := false;
end;

procedure TFBancoDados.FormCreate(Sender: TObject);
begin
    EDServidor.Text :='localhost';
    EDPorta.Text := '5432';
    EDBanco.Text := 'aula02';
    EDUser.Text:= 'postgres';
    EDSenha.Text :='root';
    BTDesconectar.Enabled := false;
    EDPesquisa.Enabled := False;
end;

end.
