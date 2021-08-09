unit ufrmTarefa1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons;

type
  TfrmTarefa1 = class(TForm)
    scbTarefa1: TScrollBox;
    pnlSQLGerado: TPanel;
    memSQLGerado: TMemo;
    Label1: TLabel;
    pnlColuna: TPanel;
    memColuna: TMemo;
    Label2: TLabel;
    pnlCondicao: TPanel;
    Label3: TLabel;
    memCondicao: TMemo;
    pnlTabela: TPanel;
    Label4: TLabel;
    memTabela: TMemo;
    Panel1: TPanel;
    btnGerarSQL: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnGerarSQLClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTarefa1: TfrmTarefa1;

implementation

{$R *.dfm}

uses uspQuery;


procedure TfrmTarefa1.btnGerarSQLClick(Sender: TObject);
begin

  if memTabela.Lines.Count <= 0  then
  begin

    memTabela.SetFocus;
    MessageDlg('Informe a Tabela para geração do SQL.', mtWarning, [mbOk], 0);
    Exit;

  end;

  with TspQuery.Create(Self) do
    try

      spCondicoes := memCondicao.Lines.Text;
      spColunas := memColuna.Lines.Text;
      spTabelas := memTabela.Lines.Text;

    finally

      Free;

    end;

end;

procedure TfrmTarefa1.FormClose(Sender: TObject; var Action: TCloseAction);
begin

    Action := caFree;

end;

procedure TfrmTarefa1.FormCreate(Sender: TObject);
begin

  memColuna.Lines.Delimiter := ',';
  memCondicao.Lines.Delimiter := ',';

end;

end.
