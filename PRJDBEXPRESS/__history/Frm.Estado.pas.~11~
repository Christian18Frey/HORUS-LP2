unit Frm.Estado;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.DBGrids, Vcl.DBCtrls,
  Vcl.StdCtrls, Vcl.Mask, Vcl.ExtCtrls, Data.DB, Dm.Cadastro.Localizacao;

type
  TFrmEstado = class(TForm)
    DBNavigator1: TDBNavigator;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    DBGrid1: TDBGrid;
    DsEstado: TDataSource;
    DsPais: TDataSource;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmEstado: TFrmEstado;

implementation

{$R *.dfm}

procedure TFrmEstado.FormCreate(Sender: TObject);
begin
 DmCadastroLocalizacao.CdsEstado.Open;
 DmCadastroLocalizacao.CdsPais.Open;
end;

procedure TFrmEstado.FormDestroy(Sender: TObject);
begin
DmCadastroLocalizacao.CdsEstado.Close;
DmCadastroLocalizacao.CdsPais.Close;
end;

end.
