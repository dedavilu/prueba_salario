unit salario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm3 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    Label1: TLabel;
    Label2: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Edit1Click(Sender: TObject);
    procedure Edit2Click(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;
  vr_hora, vr_horaextra, horas_trabajadas, horas_extras, sal: Integer;
  empleado: String;

implementation

procedure salario_semana();
 begin
   vr_hora:=15000;
   vr_horaextra:=19000;
   if horas_trabajadas>35 then
     begin
     horas_extras:= horas_trabajadas - 35;
     sal:= (vr_hora*horas_trabajadas) + (vr_horaextra+horas_extras);
     end
   else
   begin
      sal:=vr_hora*horas_trabajadas;
   end;
   showMessage('Al Empleado ' + empleado + ' se le debe pagar la suma de $ ' + IntToStr(sal) );
 end;


{$R *.dfm}

procedure TForm3.Button1Click(Sender: TObject);
begin
horas_trabajadas:= StrToInt(edit2.Text);
empleado:= edit1.Text;
salario_semana();
end;

procedure TForm3.Edit1Click(Sender: TObject);
begin
  edit1.Text:='';
end;

procedure TForm3.Edit1Exit(Sender: TObject);
begin
  edit1.text:= uppercase(edit1.Text);
end;



procedure TForm3.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
if ( StrScan('abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ',Key) <> nil ) or ( Key = Char(VK_BACK) )
  then
  else begin
     Key := #0;
  end;
end;


procedure TForm3.Edit2Click(Sender: TObject);
begin
  edit2.Text:= '';
end;

end.
