program ProvaDelphiApp;

uses
  Forms,
  Main in 'Main.pas' {frmMain},
  ufrmTarefa1 in 'ufrmTarefa1.pas' {frmTarefa1},
  ufrmTarefa2 in 'ufrmTarefa2.pas' {frmTarefa2},
  ufrmTarefa3 in 'ufrmTarefa3.pas' {frmTarefa3},
  uspQuery in 'Componentes\uspQuery.pas';

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(TfrmMain, frmMain);
  Application.Run;
end.
