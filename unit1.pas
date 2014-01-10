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
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
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
  n,i,a,x,y,xa,xb,xc,ya,yb,yc{,r,g,b}: Integer;
begin
  if Edit2.Text='' then xa:=0 else xa:=strtoint(Edit2.Text);
  if Edit2.Text='' then ya:=0 else ya:=strtoint(Edit3.Text);
  if Edit2.Text='' then xb:=0 else xb:=strtoint(Edit4.Text);
  if Edit2.Text='' then yb:=0 else yb:=strtoint(Edit5.Text);
  if Edit2.Text='' then xc:=0 else xc:=strtoint(Edit6.Text);
  if Edit2.Text='' then yc:=0 else yc:=strtoint(Edit7.Text);
  x:=xa;
  y:=ya;
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
      0: begin x:=(x+xa)div 2; y:=(y+ya)div 2 end;
      1: begin x:=(x+xb)div 2; y:=(y+yb)div 2 end;
      2: begin x:=(x+xc)div 2; y:=(y+yc)div 2 end;
      end;
      line(x,y,x+1,y+1);
    end;
  end;
end;

end.

