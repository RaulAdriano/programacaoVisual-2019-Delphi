unit UAula01;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TFAula01 = class(TForm)
    EResultado: TEdit;
    B1: TButton;
    B2: TButton;
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
    procedure BMaisClick(Sender: TObject);
    procedure BMenosClick(Sender: TObject);
    procedure BDivClick(Sender: TObject);
    procedure BMultClick(Sender: TObject);
    procedure BInverterClick(Sender: TObject);
    procedure BLimparClick(Sender: TObject);
    procedure BIgualClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure B1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
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

procedure TFAula01.B1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

  //ShowMessage('O nº da tecla: '+Char(ORD(Key))+' é => '+IntToStr(key));
  if (Key = VK_NUMPAD1) then
    B1.Click;
  if (Key = VK_NUMPAD2) then
      B2.Click;
  if (Key = VK_NUMPAD3) then
      B3.Click;
  if (Key = VK_NUMPAD4) then
      B4.Click;
  if (Key = VK_NUMPAD5) then
      B5.Click;
  if (Key = VK_NUMPAD6) then
      B6.Click;
  if (Key = VK_NUMPAD7) then
      B7.Click;
  if (Key = VK_NUMPAD8) then
      B8.Click;
  if (Key = VK_NUMPAD9) then
      B9.Click;
  if (Key = VK_NUMPAD0) then
      B0.Click;
  if (Key = VK_ADD) then
      BMais.Click;
  if (Key = VK_SUBTRACT) then
      BMenos.Click;
  if (Key = VK_MULTIPLY) then
      BMult.Click;
  if (Key = VK_DIVIDE) then
      BDiv.Click;
  if (Key = VK_RETURN) then
      BIgual.Click;
  if (Key = VK_DECIMAL) then
      BVirgula.Click;
  if (Key = VK_DELETE) then
      BLimpar.Click;


end;

procedure TFAula01.BDivClick(Sender: TObject);
begin
  valor1 := StrToFloat(EResultado.Text);
  EResultado.Clear;
  operador:= 3;
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

procedure TFAula01.BIgualClick(Sender: TObject);
var
  r:real;
begin
  valor2 := StrToFloat(EResultado.Text);
  case (operador) of
    1:
      begin
         r := valor1 + valor2;
      end;
    2:
      begin
         r := valor1 - valor2;
      end;
    3:
      begin
        if valor2 <>0 then
           r := valor1 / valor2
         else
          showmessage('divisao por zero!');
          r:=0;
      end;
    4:
      begin
         r := valor1 * valor2;
      end;
  end;

  EResultado.Text:= FloatToStr(r);
end;

procedure TFAula01.BInverterClick(Sender: TObject);
var
    temp:integer;
begin
  //EResultado.Text := '-'+EResultado.Text;
  temp := StrToInt(EResultado.Text) * -1;
  EResultado.Text := IntToStr(temp);

end;

procedure TFAula01.BLimparClick(Sender: TObject);
begin
  EResultado.Clear;
end;

procedure TFAula01.BMaisClick(Sender: TObject);
begin
  valor1 := StrToFloat(EResultado.Text);
  EResultado.Clear;
  operador:= 1;
end;

procedure TFAula01.BMenosClick(Sender: TObject);
begin
  valor1 := StrToFloat(EResultado.Text);
  EResultado.Clear;
  operador:= 2;
end;

procedure TFAula01.BMultClick(Sender: TObject);
begin
  valor1 := StrToFloat(EResultado.Text);
  EResultado.Clear;
  operador:= 4;
end;

procedure TFAula01.FormShow(Sender: TObject);
begin
  valor1:=0;
  valor2:=0;
end;

end.
