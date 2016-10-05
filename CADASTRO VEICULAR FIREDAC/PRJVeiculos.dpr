program PRJVeiculos;

uses
  Vcl.Forms,
  FRM.Principal in 'FRM.Principal.pas' {FrmPrincipal},
  DM.Principal in 'DM.Principal.pas' {DM: TDataModule},
  FRM.Proprietarios in 'FRM.Proprietarios.pas' {FrmProprietarios};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TFrmProprietarios, FrmProprietarios);
  Application.Run;
end.
