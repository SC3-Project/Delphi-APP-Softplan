unit ufrmTarefa2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, Buttons;

type
  TSoftThread = class(TThread)
  public
    pgbProgresso: TProgressBar;
    piTempoDeIntervalo: Longint;
  protected
    procedure Execute; override;
  end;

type
  TfrmTarefa2 = class(TForm)
    pgbThread1: TProgressBar;
    pgbThread2: TProgressBar;
    scbTarefa2: TScrollBox;
    edtIntervaloThread1: TEdit;
    UpDown1: TUpDown;
    Label1: TLabel;
    edtIntervaloThread2: TEdit;
    UpDown2: TUpDown;
    Label2: TLabel;
    btnExecutar: TBitBtn;
    procedure edtIntervaloThread1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnExecutarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTarefa2: TfrmTarefa2;

implementation

{$R *.dfm}

{ SoftThread }

procedure TSoftThread.Execute;
var
  piCounter: Integer;
begin

  inherited;

  Self.pgbProgresso.Position := 0;

  for piCounter := 1 to 100 do
  begin

    if Self.piTempoDeIntervalo > 0 then
      Sleep(Self.piTempoDeIntervalo);
    Self.pgbProgresso.Position := Self.pgbProgresso.Position + 1;
    
  end;

end;

procedure TfrmTarefa2.edtIntervaloThread1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin

  if not (Key in [8, 13, 27, 48..57]) then
    Key := 0;

end;

procedure TfrmTarefa2.FormClose(Sender: TObject; var Action: TCloseAction);
begin

  Action := caFree;

end;

procedure TfrmTarefa2.btnExecutarClick(Sender: TObject);
var
  sth1, sth2: TSoftThread;
begin

  sth1 := TSoftThread.Create(True);
  sth1.pgbProgresso := pgbThread1;
  sth1.piTempoDeIntervalo := StrToIntDef(edtIntervaloThread1.Text, 0);
  sth1.FreeOnTerminate := True;

  sth2 := TSoftThread.Create(True);
  sth2.pgbProgresso := pgbThread2;
  sth2.piTempoDeIntervalo := StrToIntDef(edtIntervaloThread2.Text, 0);
  sth2.FreeOnTerminate := True;

  btnExecutar.Enabled := False;

  try

    sth1.Resume;
    sth2.Resume;

  finally

    btnExecutar.Enabled := True;

  end;

  Self.Refresh;

end;

end.
