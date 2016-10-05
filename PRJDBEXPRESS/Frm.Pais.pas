unit Frm.Pais;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.DBCtrls,
  Vcl.Grids, Vcl.DBGrids, Vcl.Mask, Data.DB, Dm.Cadastro.Localizacao;

type
  TFrmPais = class(TForm)
    DsPais: TDataSource;
    DBEdit1: TDBEdit;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    Nome: TLabel;
    BACEN: TLabel;
    Sigla: TLabel;
    Código: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPais: TFrmPais;

implementation

{$R *.dfm}

procedure TFrmPais.FormCreate(Sender: TObject);
begin
DmCadastroLocalizacao.CdsPais.Open
end;

procedure TFrmPais.FormDestroy(Sender: TObject);
begin
DmCadastroLocalizacao.CdsPais.Close;
end;

end.
