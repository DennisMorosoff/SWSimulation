program Project1;

uses
  Vcl.Forms,
  Unit1 in 'Unit1.pas' {Form1},
  SldWorks_TLB in 'SldWorks_TLB.pas',
  CosmosWorksLib_TLB in 'CosmosWorksLib_TLB.pas',
  SwConst_TLB in 'SwConst_TLB.pas',
  CommonUnit in 'CommonUnit.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
