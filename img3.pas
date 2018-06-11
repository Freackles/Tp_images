unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, ExtCtrls,
  StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    pix: TButton;
    suprpos: TButton;
    masque: TButton;
    morph: TButton;
    Itemp1: TImage;
    image: TImage;
    Itemp2: TImage;
    procedure masqueClick(Sender: TObject);
    procedure morphClick(Sender: TObject);
    procedure pixClick(Sender: TObject);
    procedure suprposClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.FormCreate(Sender: TObject);
begin
    image.Picture.LoadFromFile('1.bmp');
end;

procedure TForm1.pixClick(Sender: TObject);
VAR
    cptx,cpty: integer;
begin
    image.Picture:= nil; //reset pics
    FormCreate(Sender);
    FOR cpty := 0 TO image.Height DO
    begin
        FOR cptx := 0 TO image.Width DO
        begin
            IF ((cptx MOD 2 <> 0) AND (cpty MOD 2 = 0)) THEN
               image.Canvas.Pixels[cptx,cpty] := image.Canvas.Pixels[cptx-1,cpty]
            ELSE
            begin
                IF ((cptx MOD 2 = 0) AND (cpty MOD 2 <> 0)) THEN
                    image.Canvas.Pixels[cptx,cpty] := image.Canvas.Pixels[cptx,cpty-1]
                ELSE
                begin
                    IF ((cptx MOD 2 <> 0) AND (cpty MOD 2 <> 0)) THEN
                        image.Canvas.Pixels[cptx,cpty] := image.Canvas.Pixels[cptx-1,cpty-1];
                end;
            end;
        end;
    end;

    FOR cpty := 0 TO image.Height DO
    begin
        FOR cptx := 0 TO image.Width DO
        begin
            image.Canvas.Pixels[(cptx DIV 2),(cpty DIV 2)] := image.Canvas.Pixels[cptx,cpty];
            IF NOT((cptx <= (image.Width DIV 2)) AND (cpty <= (image.Height DIV 2))) THEN image.Canvas.Pixels[cptx,cpty] := clWhite;
        end;
    end;
end;

procedure TForm1.masqueClick(Sender: TObject);
VAR
    cptx,cpty: integer;
begin
    image.picture:= nil;
    FormCreate(Sender);
    Itemp1.Picture.LoadFromFile('3.bmp');
    Itemp2.Picture.LoadFromFile('2.bmp');
    FOR cpty := 0 TO image.Height DO
    begin
        FOR cptx := 0 TO image.Height DO
        begin
            IF (Itemp1.Canvas.Pixels[cptx,cpty] <> Itemp1.Canvas.Pixels[0,0]) THEN
                image.Canvas.Pixels[cptx,cpty] := Itemp2.Canvas.Pixels[cptx,cpty];
        end;
    end;
end;

procedure TForm1.morphClick(Sender: TObject);
VAR
    cptx,cpty: integer;
begin
  image.picture:= nil;
end;

procedure TForm1.suprposClick(Sender: TObject);
VAR
    cptx,cpty: integer;
begin
    image.picture:= nil;
    FormCreate(Sender);
    Itemp1.Picture.LoadFromFile('3.bmp');
    FOR cpty := 0 TO image.Height DO
    begin
        FOR cptx := 0 TO image.Height DO
        begin
            IF (Itemp1.Canvas.Pixels[cptx,cpty] <> Itemp1.Canvas.Pixels[0,0]) THEN
                image.Canvas.Pixels[cptx,cpty] := Itemp1.Canvas.Pixels[cptx,cpty];
        end;
    end;
end;

end.

