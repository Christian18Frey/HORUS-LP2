unit TrabalhoPratico;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Vcl.ExtCtrls, Data.DB, Datasnap.DBClient, Vcl.Grids, Vcl.DBGrids;

type
  TForm1 = class(TForm)
    ClientDataSet1: TClientDataSet;
    DataSource1: TDataSource;
    ClientDataSet1C�digo: TIntegerField;
    ClientDataSet1Descri��o: TStringField;
    ClientDataSet1Unidade: TStringField;
    ClientDataSet1Fornecedor: TStringField;
    ClientDataSet1Data: TDateField;
    ClientDataSet1Quantidade: TFloatField;
    ClientDataSet1Unitario: TCurrencyField;
    ClientDataSet1Total: TCurrencyField;
    Panel1: TPanel;
    DBNavigator1: TDBNavigator;
    Panel2: TPanel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    Label7: TLabel;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    Panel3: TPanel;
    Label9: TLabel;
    Label10: TLabel;
    ComboBox1: TComboBox;
    Label11: TLabel;
    ComboBox2: TComboBox;
    Label12: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    DBGrid1: TDBGrid;
    GroupBox1: TGroupBox;
    Label13: TLabel;
    Label14: TLabel;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    ClientDataSet1EstoqueQtd: TAggregateField;
    ClientDataSet1EstoqueVlr: TAggregateField;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
const
   cDataFile = 'Dados.xml';
begin

    ClientDataSet1.FileName:=ExtractFilePath(Application.ExeName) + cDataFile;
if FileExists(ClientDataSet1.FileName) then
 ClientDataSet1.Open
else
 ClientDataSet1.CreateDataSet
end;

end.
