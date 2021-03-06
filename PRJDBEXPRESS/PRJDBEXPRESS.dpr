program PRJDBEXPRESS;

uses
  Vcl.Forms,
  Frm.Principal in 'Frm.Principal.pas' {FrmPrincipal},
  Dm.Cadastro.Localizacao in 'Dm.Cadastro.Localizacao.pas' {DmCadastroLocalizacao: TDataModule},
  Dm.Database in 'Dm.Database.pas' {DmDatabase: TDataModule},
  Frm.Pais in 'Frm.Pais.pas' {FrmPais},
  Frm.Estado in 'Frm.Estado.pas' {FrmEstado},
  Frm.Cidade in 'Frm.Cidade.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.CreateForm(TDmDatabase, DmDatabase);
  Application.CreateForm(TDmCadastroLocalizacao, DmCadastroLocalizacao);
  Application.Run;
end.
