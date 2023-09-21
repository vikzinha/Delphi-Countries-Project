program pPaises;

uses
  Vcl.Forms,
  uPaises in 'uPaises.pas' {frmPaises};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPaises, frmPaises);
  Application.Run;
end.
