program guncelleme;

uses
  Vcl.Forms,
  anaform in 'anaform.pas' {anaform_Form};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tanaform_Form, anaform_Form);
  Application.Run;
end.
