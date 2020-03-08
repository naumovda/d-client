program client;

uses
  Forms,
  DataModuleUnit in 'DataModuleUnit.pas' {dmPublic: TDataModule},
  FormAbsUnit in 'FormAbsUnit.pas' {FormListAbs},
  FormEditAbsUnit in 'FormEditAbsUnit.pas' {FormEditAbs},
  MAIN in 'Main.pas' {MainForm},
  FormReportAbsUnit in 'FormReportAbsUnit.pas' {FormReportAbs},
  DocumentStateUnit in 'DocumentStateUnit.pas' {DocumentState},
  ClientTypeUnit in 'ClientTypeUnit.pas' {ClientType},
  ClientTypeEditUnit in 'ClientTypeEditUnit.pas' {ClientTypeEdit},
  ClientUnit in 'ClientUnit.pas' {Client},
  ClientEditUnit in 'ClientEditUnit.pas' {ClientEdit},
  DocumentUnit in 'DocumentUnit.pas' {Documents},
  DocumentEditUnit in 'DocumentEditUnit.pas' {DocumentEdit},
  ClientGroupUnit in 'ClientGroupUnit.pas' {ClientGroup},
  DocumentGroupUnit in 'DocumentGroupUnit.pas' {DocumentGroup},
  PaymentTypeUnit in 'PaymentTypeUnit.pas' {PaymentType},
  PaymentTypeEditUnit in 'PaymentTypeEditUnit.pas' {PaymentTypeEdit},
  PaymentEditUnit in 'PaymentEditUnit.pas' {PaymentEdit},
  DocumentGroupEditUnit in 'DocumentGroupEditUnit.pas' {DocumentGroupEdit},
  ClientGroupEditUnit in 'ClientGroupEditUnit.pas' {ClientGroupEdit},
  SaldoUnit in 'SaldoUnit.pas' {Saldo},
  RouteUnit in 'RouteUnit.pas' {Route},
  RouteEditUnit in 'RouteEditUnit.pas' {RouteEdit},
  RoutesetUnit in 'RoutesetUnit.pas' {Routeset},
  RoutesetEditUnit in 'RoutesetEditUnit.pas' {RoutesetEdit},
  ReportUnit in 'ReportUnit.pas' {WordExport: TDataModule},
  ClientDetailEditUnit in 'ClientDetailEditUnit.pas' {ClientDetailEdit},
  RoutesetDetailEditUnit in 'RoutesetDetailEditUnit.pas' {RoutesetDetailEdit},
  ClientParametersUnit in 'ClientParametersUnit.pas' {ClientParameters},
  ClientParametersEditUnit in 'ClientParametersEditUnit.pas' {ClientParametersEdit},
  SelfParametersEditUnit in 'SelfParametersEditUnit.pas' {SelfParametersEdit},
  SelfParametersUnit in 'SelfParametersUnit.pas' {SelfParameters},
  SumToText in 'SumToText.pas';

{$R *.res}

begin
  Application.Initialize;

  Application.Title := '������ � ����������';

  Application.CreateForm(TdmPublic, dmPublic);
  Application.CreateForm(TWordExport, WordExport);
  Application.CreateForm(TMainForm, MainForm);
  Application.CreateForm(TRoutesetDetailEdit, RoutesetDetailEdit);
  Application.CreateForm(TClientDetailEdit, ClientDetailEdit);
  Application.CreateForm(TClientTypeEdit, ClientTypeEdit);
  Application.CreateForm(TClientParametersEdit, ClientParametersEdit);
  Application.CreateForm(TClientEdit, ClientEdit);
  Application.CreateForm(TDocumentEdit, DocumentEdit);
  Application.CreateForm(TPaymentTypeEdit, PaymentTypeEdit);
  Application.CreateForm(TPaymentEdit, PaymentEdit);
  Application.CreateForm(TDocumentGroupEdit, DocumentGroupEdit);
  Application.CreateForm(TClientGroupEdit, ClientGroupEdit);
  Application.CreateForm(TRouteEdit, RouteEdit);
  Application.CreateForm(TRoutesetEdit, RoutesetEdit);
  Application.CreateForm(TSelfParametersEdit, SelfParametersEdit);
  Application.Run;
end.
