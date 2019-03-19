unit UCadAluno;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  TFCadAluno = class(TForm)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
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
  FCadAluno: TFCadAluno;

implementation

{$R *.dfm}

uses UConexao;

procedure TFCadAluno.Button1Click(Sender: TObject);
begin
  DMConexao.FDQAlunos.Insert;

end;

procedure TFCadAluno.Button2Click(Sender: TObject);
begin
  DMConexao.FDQAlunos.Post;
end;

end.
