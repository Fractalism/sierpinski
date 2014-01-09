unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, ExtCtrls,
  StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Edit1: TEdit;
    Image1: TImage;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
begin
  with image1.canvas do rectangle(-1,-1,513,513);
end;

procedure TForm1.Button2Click(Sender: TObject);
  var
  n, i, a, x, y,r,g,b: Integer;
begin
  x:=256;
  y:=0;
{ r:=Random(256);
  g:=Random(256);
  b:=Random(256); }
  randomize;
  n:=strtoint(Edit1.Text);
  with image1.canvas do begin
    line(x,y,x+1,y+1);
    for i:=0 to n do begin
 {    pen.color:=(r,g,b);   doesn't work :/ }
      a:=random(3);
      case a of
      0: begin x:=(x+256)div 2; y:=(y)div 2 end;
      1: begin x:=(x+0)div 2; y:=(y+448)div 2 end;
      2: begin x:=(x+512)div 2; y:=(y+448)div 2 end;
      end;
      line(x,y,x+1,y+1);
    end;
  end;
end;

end.

