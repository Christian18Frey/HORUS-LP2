unit FRM.Proprietarios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Vcl.Grids, Vcl.DBGrids, Data.DB, Vcl.ExtCtrls;

type
  TFrmProprietarios = class(TForm)
    DBNavigator1: TDBNavigator;
    DsProprietario: TDataSource;
    DBGrid1: TDBGrid;
    DBEdit1: TDBEdit;
    Label1: TLabel;
    Nome: TLabel;
    DBEdit2: TDBEdit;
    Endereço: TLabel;
    DBEdit3: TDBEdit;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmProprietarios: TFrmProprietarios;

implementation

{$R *.dfm}

procedure TFrmProprietarios.FormCreate(Sender: TObject);
begin
DM.qry
end;

end.
