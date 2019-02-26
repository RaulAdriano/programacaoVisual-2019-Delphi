unit UFPrimeiraTela;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TFPrimeiraTela = class(TForm)
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FPrimeiraTela: TFPrimeiraTela;

implementation

{$R *.dfm}

procedure TFPrimeiraTela.Button1Click(Sender: TObject);
begin
      showmessage('Hello World');
end;

end.
