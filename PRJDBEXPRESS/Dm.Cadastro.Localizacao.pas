unit Dm.Cadastro.Localizacao;

interface

uses
  System.SysUtils, System.Classes, Data.FMTBcd, Datasnap.DBClient,
  Datasnap.Provider, Data.DB, Data.SqlExpr;

type
  TDmCadastroLocalizacao = class(TDataModule)
    SdsPais: TSQLDataSet;
    DspPais: TDataSetProvider;
    CdsPais: TClientDataSet;
    SdsPaisPAI_CODIGO: TIntegerField;
    SdsPaisPAI_NOME: TStringField;
    SdsPaisPAI_SIGLA: TStringField;
    SdsPaisPAI_BACEN: TIntegerField;
    CdsPaisPAI_CODIGO: TIntegerField;
    CdsPaisPAI_NOME: TStringField;
    CdsPaisPAI_SIGLA: TStringField;
    CdsPaisPAI_BACEN: TIntegerField;
    SdsEstado: TSQLDataSet;
    DspEstado: TDataSetProvider;
    CdsEstado: TClientDataSet;
    SdsEstadoEST_CODIGO: TIntegerField;
    SdsEstadoEST_NOME: TStringField;
    SdsEstadoEST_SIGLA: TStringField;
    SdsEstadoEST_PAI_CODIGO: TIntegerField;
    CdsEstadoEST_CODIGO: TIntegerField;
    CdsEstadoEST_NOME: TStringField;
    CdsEstadoEST_SIGLA: TStringField;
    CdsEstadoEST_PAI_CODIGO: TIntegerField;
    CdsEstadoPAI_NOME: TStringField;
    CdsCidade: TClientDataSet;
    SdsCidade: TSQLDataSet;
    DspCidade: TDataSetProvider;
    SdsCidadeCID_CODIGO: TIntegerField;
    SdsCidadeCID_NOME: TStringField;
    SdsCidadeCID_IBGE: TIntegerField;
    CdsCidadeCID_CODIGO: TIntegerField;
    CdsCidadeCID_NOME: TStringField;
    CdsCidadeCID_IBGE: TIntegerField;
    procedure CdsPaisAfterPost(DataSet: TDataSet);
    procedure CdsPaisAfterDelete(DataSet: TDataSet);
    procedure CdsEstadoAfterPost(DataSet: TDataSet);
    procedure CdsCidadeAfterDelete(DataSet: TDataSet);
    procedure CdsCidadeAfterPost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DmCadastroLocalizacao: TDmCadastroLocalizacao;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses Dm.Database;

{$R *.dfm}

procedure TDmCadastroLocalizacao.CdsCidadeAfterDelete(DataSet: TDataSet);
begin
CdsPais.ApplyUpdates(0);
end;

procedure TDmCadastroLocalizacao.CdsCidadeAfterPost(DataSet: TDataSet);
begin
CdsPais.ApplyUpdates(0);
end;

procedure TDmCadastroLocalizacao.CdsEstadoAfterPost(DataSet: TDataSet);
begin
CdsEstado.ApplyUpdates(0);
end;

procedure TDmCadastroLocalizacao.CdsPaisAfterDelete(DataSet: TDataSet);
begin
CdsPais.ApplyUpdates(0);
end;

procedure TDmCadastroLocalizacao.CdsPaisAfterPost(DataSet: TDataSet);
begin
CdsPais.ApplyUpdates(0);

end;

end.
