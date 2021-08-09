unit ufrmTarefa3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, DBGrids, ExtCtrls, DB, DBClient, Math;

type
  TfrmTarefa3 = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    dbgProjeto: TDBGrid;
    Panel3: TPanel;
    btnObterTotal: TBitBtn;
    btnObterTotalDivisao: TBitBtn;
    edtTotal: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    edtTotalDivisao: TEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure btnObterTotalClick(Sender: TObject);
  private
    { Private declarations }
    dtsProjeto: TDataSource;
    cdsProjeto: TClientDataSet;

    function obterValorTotal(pbPorDivisao: Boolean = False): Real;

  public
    { Public declarations }
  end;

var
  frmTarefa3: TfrmTarefa3;

implementation

{$R *.dfm}

procedure TfrmTarefa3.FormClose(Sender: TObject; var Action: TCloseAction);
begin

  Action := caFree;

end;

procedure TfrmTarefa3.FormCreate(Sender: TObject);
var
  piCounter: Integer;
  pcValorTotal: Real;
begin

  cdsProjeto := TClientDataSet.Create(Self);

  with cdsProjeto.FieldDefs.AddFieldDef do
  begin

    DataType := ftInteger;
    Name := 'IdProjeto';
    Index := 0;

  end;

  with cdsProjeto.FieldDefs.AddFieldDef do
  begin

    DataType := ftString;
    Name := 'NomeProjeto';
    Index := 1;
    Size := 100;

  end;

  with cdsProjeto.FieldDefs.AddFieldDef do
  begin

    DataType := ftFloat;
    Name := 'Valor';
    Index := 2;

  end;

  dtsProjeto := TDataSource.Create(Self);
  dbgProjeto.DataSource := dtsProjeto;
  cdsProjeto.CreateDataSet;
  dtsProjeto.DataSet := cdsProjeto;

  for piCounter := 1 to 10 do
  begin

    cdsProjeto.Append;
    cdsProjeto.FieldByName('IdProjeto').AsInteger := piCounter;
    cdsProjeto.FieldByName('NomeProjeto').AsString := 'Projeto ' + IntToStr(piCounter);
    cdsProjeto.FieldByName('Valor').AsFloat := piCounter * piCounter;
    cdsProjeto.Post;

  end;

  TFloatField(cdsProjeto.Fields[2]).EditFormat := '#####0.00';
  TFloatField(cdsProjeto.Fields[2]).DisplayFormat := '#,##0.00';
  
  pcValorTotal := obterValorTotal;
  edtTotal.Text := FormatFloat('#,##0.00', pcValorTotal);
  edtTotalDivisao.Text := FormatFloat('#,##0.00', pcValorTotal / cdsProjeto.RecordCount);
  
end;

function TfrmTarefa3.obterValorTotal(pbPorDivisao: Boolean = False): Real;
var
  piID: Integer;
begin

  Result := 0;
  piID := cdsProjeto.FieldByName('IdProjeto').AsInteger;

  cdsProjeto.DisableControls;

  try

    cdsProjeto.First;

    while not cdsProjeto.Eof do
    begin

      Result := Result + cdsProjeto.FieldByName('Valor').AsFloat;
      cdsProjeto.Next;

    end;

    if ((pbPorDivisao) and (cdsProjeto.RecordCount > 0)) then
      Result := Result / cdsProjeto.RecordCount;
      
  finally

    cdsProjeto.Locate('IdProjeto', piID, []);
    cdsProjeto.EnableControls;

  end;

end;

procedure TfrmTarefa3.btnObterTotalClick(Sender: TObject);
begin

  if Sender = btnObterTotal then
    edtTotal.Text := FormatFloat('#,##0.00', obterValorTotal)
  else
    edtTotalDivisao.Text := FormatFloat('#,##0.00', obterValorTotal(True));
    
end;

end.
