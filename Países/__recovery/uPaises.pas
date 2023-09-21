unit uPaises;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.FMTBcd, Data.DBXFirebird,
  Vcl.StdCtrls, Vcl.Mask, Vcl.ExtCtrls, Vcl.DBCtrls, Data.DB, Data.SqlExpr,
  Datasnap.DBClient, SimpleDS;

type
  TfrmPaises = class(TForm)
    lblPais: TLabel;
    lblCapital: TLabel;
    lblContinente: TLabel;
    cnxPaises: TSQLConnection;
    dsPaises: TDataSource;
    dbePais: TDBEdit;
    dbeCapital: TDBEdit;
    dbeContinente: TDBEdit;
    dbnPaises: TDBNavigator;
    lblArea: TLabel;
    lblPopulacao: TLabel;
    dbeArea: TDBEdit;
    dbePopulacao: TDBEdit;
    qryPaises: TSQLQuery;
    qryPaisesNOME: TStringField;
    qryPaisesCAPITAL: TStringField;
    qryPaisesCONTINENTE: TStringField;
    qryPaisesAREA: TLargeintField;
    qryPaisesPOPULACAO: TLargeintField;
    lblDensidade: TLabel;
    dbeDensidade: TDBEdit;
    qryPaisesDensidade: TFloatField;
    rdgContinente: TRadioGroup;
    grbPesquisar: TGroupBox;
    lblPNome: TLabel;
    lblPCapital: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure qryPaisesCalcFields(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure rdgContinenteClick(Sender: TObject);
    procedure lblPNomeClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPaises: TfrmPaises;
  sqlPadrao: string;

implementation

{$R *.dfm}

procedure TfrmPaises.FormActivate(Sender: TObject);
begin
  qryPaises.Open;
end;

procedure TfrmPaises.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  qryPaises.Close;
end;

procedure TfrmPaises.FormCreate(Sender: TObject);
begin
    sqlPadrao := qryPaises.SQL.Text;
end;

procedure TfrmPaises.lblPNomeClick(Sender: TObject);
begin

end;

procedure TfrmPaises.qryPaisesCalcFields(DataSet: TDataSet);
begin
      qryPaisesDensidade.Value :=  qryPaisesPOPULACAO.Value / qryPaisesAREA.Value;
end;

procedure TfrmPaises.rdgContinenteClick(Sender: TObject);
begin
    qryPaises.Close;
    qryPaises.SQL.Clear;
    qryPaises.SQL.Add(sqlPadrao);
    if rdgContinente.ItemIndex <> 0 then
        qryPaises.SQL.Add(' where continente = ' + #39 + rdgContinente.Items[rdgContinente.ItemIndex] + #39);
    qryPaises.Open;
end;

end.
