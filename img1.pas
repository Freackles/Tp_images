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
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Image1: TImage;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Image1Click(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Image1Click(Sender: TObject);
begin

end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  image1.Picture:=nil; // reset the canvas

  image1.canvas.brush.color:= clred;
  image1.canvas.pen.color:= clred;
  image1.canvas.rectangle(0,0,300,300)
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  image1.Picture:=nil;

  image1.canvas.brush.color:= clblack;
  image1.canvas.pen.color:= clblack;
  image1.canvas.rectangle(0,0,300,300);
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  image1.Picture:=nil;

  image1.canvas.brush.color:= clred;
  image1.canvas.pen.color:= clred;
  image1.canvas.rectangle(0,0,150,150);

  image1.canvas.brush.color:= clyellow;
  image1.canvas.pen.color:= clyellow;
  image1.canvas.rectangle(150,150,300,300);

  image1.canvas.brush.color:= clblue;
  image1.canvas.pen.color:= clblue;
  image1.canvas.rectangle(0,150,150,300);

  image1.canvas.brush.color:= clgray;
  image1.canvas.pen.color:= clgray;
  image1.canvas.rectangle(150,0,300,150);
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  //image1.Canvas.Brush.Style := bsDiagCross;
  image1.Picture:=nil;

  {image1.canvas.brush.color:= clcream;
  image1.canvas.pen.color:= clcream;
  image1.canvas.rectangle(0,0,300,300); }

  image1.canvas.brush.color:= RGBToColor(51, 26, 0);
  image1.canvas.pen.color:= RGBToColor(255, 255, 255);
  image1.canvas.ellipse(0,0,300,300);

  image1.canvas.brush.color:= clblack;
  image1.canvas.pen.color:= clblack;
  image1.canvas.ellipse(80,90,90,100);
  //image1.canvas.ellipse(230,240,240,250);
  image1.canvas.line(140, 160, 260, 262);
end;

procedure TForm1.Button5Click(Sender: TObject);
var
  cpt: integer;
begin
   cpt:=0;
   while (cpt<300) do
   begin
     image1.Canvas.Pen.color:= clblue;
     image1.canvas.Line(cpt,0,cpt,300);
     image1.canvas.Pen.color:=clred;
     image1.Canvas.Line(cpt+1,0,cpt+1,300);
     image1.canvas.Pen.Color:=clgreen;
     image1.Canvas.line(cpt+2,0,cpt+2,300);
     image1.Canvas.pen.color:= clyellow;
     image1.Canvas.line (cpt+3,0,cpt+3,300);
     cpt:= cpt+4;
   end;
end;

procedure TForm1.Button6Click(Sender: TObject);
var
  i: integer;
begin
  for i := 0 to 8 do
         begin
         for j := 0 to 8 do
             begin
             if (i = j) OR (i = j + 2) OR (i = j - 2) OR (i = j + 4) OR (i = j - 4) OR (i = j + 6) OR (i = j - 6) then
                begin
                   Image1.Canvas.Brush.color := clblack;
                   Image1.Canvas.Rectangle (i37,j37,(i+1)37,(j+1)37)
                end
                else
                 begin
                 Image1.Canvas.Brush.color := clwhite;
                 Image1.Canvas.Rectangle (i37,j37,(i+1)37,(j+1)37);
                 end;
             end;
         end;
end;

end.

