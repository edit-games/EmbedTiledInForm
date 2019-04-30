unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls,
  CastleControl, CastleTiledMap;
type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Castle2DControl1: TCastle2DControl;
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
var
  MapControl: TCastleTiledMapControl;
begin
  MapControl := TCastleTiledMapControl.Create(Castle2DControl1);
  MapControl.FullSize := true;
  MapControl.URL := 'castle-data:/maps/isometric.tmx';

  Castle2DControl1.Controls.InsertFront(MapControl);
  //Castle2DControl1.Controls.InsertBack(MapControl);
end;



end.

