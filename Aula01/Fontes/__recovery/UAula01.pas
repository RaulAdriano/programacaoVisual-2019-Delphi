unit UAula01;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TFAula01 = class(TForm)
    EResultado: TEdit;
    B1: TButton;
    Button1: TButton;
    B3: TButton;
    B4: TButton;
    B6: TButton;
    B5: TButton;
    B8: TButton;
    B9: TButton;
    B7: TButton;
    BVirgula: TButton;
    B0: TButton;
    BMais: TButton;
    BLimpar: TButton;
    BMenos: TButton;
    BInverter: TButton;
    BDiv: TButton;
    BIgual: TButton;
    BMult: TButton;
    procedure BHelloClick(Sender: TObject);
    procedure B1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FAula01: TFAula01;
  valor1 , valor2 : Real;
  operador : integer;

implementation

{$R *.dfm}

procedure TFAula01.B1Click(Sender: TObject);
begin
  EResultado.Text := EResultado.Text + (Sender as TButton).Caption;
end;

procedure TFAula01.BHelloClick(Sender: TObject);
  //var  v1,v2,total:integer;
begin

{  v1:= StrToInt(EV1.Text);
  v2:= StrToInt(EV2.Text);
  total:= v1 + v2;
  showmessage('O resultado é   ' + IntToStr(total));
  }

end;

end.
