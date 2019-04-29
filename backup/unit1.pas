unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, CastleControl,
  CastleTiledMap;
type

  { TForm1 }

  TForm1 = class(TForm)
    Castle2DControl1: TCastle2DControl;
    CastleControl1: TCastleControl;
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
  MapControl := TCastleTiledMapControl.Create(CastleControl1);
  MapControl.URL := 'castle-data:/maps/isometric_grass_and_water.tmx';
  CastleControl1.Controls.InsertFront(MapControl);
  Castle2DControl1.Controls.InsertFront(MapControl);
end;

end.

