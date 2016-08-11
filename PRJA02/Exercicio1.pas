unit Exercicio1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.DBGrids, Vcl.DBCtrls,
  Data.DB, Vcl.StdCtrls, Vcl.ExtCtrls, Datasnap.DBClient;

type
  TForm1 = class(TForm)
    ClientDataSet1: TClientDataSet;
    DataSource1: TDataSource;
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    Button2: TButton;
    ClientDataSet1Id: TIntegerField;
    ClientDataSet1Nome: TStringField;
    ClientDataSet1Valor: TCurrencyField;
    ClientDataSet1Quantidade: TFloatField;
    ClientDataSet1Total: TCurrencyField;
    ClientDataSet1ProdutosTotal: TAggregateField;
    DBNavigator1: TDBNavigator;
    Label2: TLabel;
    DBGrid1: TDBGrid;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Edit2: TEdit;
    procedure ClientDataSet1CalcFields(DataSet: TDataSet);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button3Click(Sender: TObject);
begin
  ClientDataSet1.EmptyDataSet;
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
 ClientDataSet1.IndexFieldNames;
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
 ClientDataSet1. IndexFieldNames;
end;

procedure TForm1.Button6Click(Sender: TObject);
var
vEncontrou: Boolean;

begin
 vEncontrou := False;
 ClientDataSet1.DisableControls;
 try
    ClientDataSet1.First;
 while not ClientDataSet1.Eof do
begin
 if (ClientDataSet1.FieldByName('Codigo').AsString = EdtCodigo.Text) then
begin
  vEncontrou:= True;
  Break;
end;
   ClientDataSet1.Next;
end;
   finally
 ClientDataSet1.EnableControls;
end;

end;

procedure TForm1.ClientDataSet1CalcFields(DataSet: TDataSet);

begin
    if (not ClientDataSet1.FieldByName('Valor').IsNull) and
       (not ClientDataSet1.FieldByName('Quantidade').IsNull) then
begin
    ClientDataSet1.FieldByName('ProdutosTotal').Value :=
    ClientDataSet1.FieldByName('Valor').Value * ClientDataSet1.FieldByName
    ('Quantidade').Value;

end;

end;

end.
