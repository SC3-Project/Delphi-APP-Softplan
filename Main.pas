unit MAIN;

interface

uses Winapi.Windows, System.SysUtils, System.Classes, Vcl.Graphics, Vcl.Forms,
  Vcl.Controls, Vcl.Menus, Vcl.StdCtrls, Vcl.Dialogs, Vcl.Buttons, Winapi.Messages,
  Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.StdActns, Vcl.ActnList, Vcl.ToolWin,
  Vcl.ImgList, System.ImageList, System.Actions;

type
  TfrmMain = class(TForm)
    MainMenu1: TMainMenu;
    File1: TMenuItem;
    FileNewItem: TMenuItem;
    FileOpenItem: TMenuItem;
    FileCloseItem: TMenuItem;
    StatusBar: TStatusBar;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FileNewItemClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;

implementation

{$R *.dfm}

uses ufrmTarefa1, ufrmTarefa2, ufrmTarefa3;

procedure TfrmMain.FileNewItemClick(Sender: TObject);
var
  frmTarefa: TForm;
begin

  case TMenuItem(Sender).Tag of

    1: frmTarefa := TfrmTarefa1.Create(Self);
    2: frmTarefa := TfrmTarefa2.Create(Self);
    3: frmTarefa := TfrmTarefa3.Create(Self);

  end;

  frmTarefa.Show;
  frmTarefa.BringToFront;

end;

procedure TfrmMain.FormClose(Sender: TObject; var Action: TCloseAction);
begin

    Action := caFree;

end;

end.
