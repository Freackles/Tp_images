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
    Image2: TImage;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
var
   i,j: integer;
begin
   Image2.Height:=300;
  Image2.Width:=200;

  for i:=1 to 200 do

      for j:=1 to 300 do

          Image2.canvas.Pixels[i,j]:=Image1.canvas.Pixels[i,j];
end;

procedure TForm1.Button2Click(Sender: TObject);
var
  i, j: integer;
begin
  for i:=1 to 300 do

         for j:=1 to 300 do

         begin

              Image2.canvas.Pixels[300-i,j]:=Image1.canvas.Pixels[i,j];

         end;
end;

procedure TForm1.Button3Click(Sender: TObject);
var

begin
   for i:=1 to 300 do

       for j:=1 to 300 do

       begin

            Image2.canvas.Pixels[300-i,200-j]:=Image1.canvas.Pixels[i,j];

       end;
end;

procedure TForm1.Button4Click(Sender: TObject);
var
  i,j: integer;
begin
  for i:=1 to 300 do

       for j:=1 to 300 do

       begin

            Img2.canvas.Pixels[300-i,200-j]:=Img1.canvas.Pixels[i,j];
            Img2.canvas.Pixels[300-i,j]:=Img1.canvas.Pixels[i,j];
       end;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin

end;

end.

