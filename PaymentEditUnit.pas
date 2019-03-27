unit PaymentEditUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FormEditAbsUnit, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, dxBarDBNav, dxBar, cxClasses,
  ImgList, ActnList, dxLayoutControl, cxGridLevel, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, cxPC,
  cxContainer, dxLayoutcxEditAdapters, cxButtonEdit, cxDBEdit, cxCheckBox,
  cxCalc, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, Menus,
  StdCtrls, cxButtons, cxLabel, cxDBLabel;

type
  TPaymentEdit = class(TFormEditAbs)
    cxDate: TcxDBDateEdit;
    dxLayoutMainItem1: TdxLayoutItem;
    cxSum: TcxDBCalcEdit;
    dxLayoutMainItem2: TdxLayoutItem;
    cxIsApproved: TcxDBCheckBox;
    dxLayoutMainItem3: TdxLayoutItem;
    cxPaymentType: TcxDBButtonEdit;
    dxLayoutMainItem4: TdxLayoutItem;
    cxNumber: TcxDBButtonEdit;
    dxLayoutMainItem5: TdxLayoutItem;
    dxLayoutMainItem6: TdxLayoutItem;
    cxButton1: TcxButton;
    dxLayoutMainItem7: TdxLayoutItem;
    cxButton2: TcxButton;
    acSetNumber: TAction;
    acClearNumber: TAction;
    dxLayoutMainSeparatorItem1: TdxLayoutSeparatorItem;
    dxLayoutMainSeparatorItem2: TdxLayoutSeparatorItem;
    acApprove: TAction;
    dxBarButton7: TdxBarButton;
    dxLayoutMainSeparatorItem3: TdxLayoutSeparatorItem;
    cxState: TcxDBLabel;
    dxLayoutMainItem8: TdxLayoutItem;
    dxLayoutMainGroup1: TdxLayoutGroup;
    acCancelApprove: TAction;
    dxBarButton8: TdxBarButton;
    procedure cxNumberPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure acSetNumberExecute(Sender: TObject);
    procedure acClearNumberExecute(Sender: TObject);
    procedure cxPaymentTypePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure FormShow(Sender: TObject);
    procedure acApproveExecute(Sender: TObject);
    procedure acCancelApproveExecute(Sender: TObject);
  private
    { Private declarations }
  public
    function Check(var AMessage: string): boolean;

    procedure SetState;

    procedure SetStateApproved;

    procedure SetStateNotApproved;
  end;

var
  PaymentEdit: TPaymentEdit;

implementation

{$R *.dfm}

uses
  DataModuleUnit
  ,PaymentTypeUnit
  ,PaymentTypeEditUnit  
  ;

function TPaymentEdit.Check(var AMessage: string): boolean;
begin
  Result := true;

  if dmPublic.tDocumentPayment.FieldValues['PaymentType'] = NULL then
  begin
    AMessage := 'Не указан тип оплаты';

    Result := false;
  end;

  if dmPublic.tDocumentPayment.FieldValues['PaymentDate'] = NULL then
  begin
    AMessage := 'Не указана дата оплаты';

    Result := false;
  end;

  if dmPublic.tDocumentPayment.FieldValues['PaymentSum'] = 0 then
  begin
    AMessage := 'Не указана сумма договора';

    Result := false;
  end;
end;

procedure TPaymentEdit.SetStateApproved;
begin
  dxLayoutMain.Enabled := false;

  acOk.Enabled := false;

  acSave.Enabled := false;

  acApprove.Enabled := false;

  acCancelApprove.Enabled := true;

  acApprove.Visible := acApprove.Enabled;

  acCancelApprove.Visible := acCancelApprove.Enabled;
end;

procedure TPaymentEdit.SetStateNotApproved;
begin
  dxLayoutMain.Enabled := true;

  acOk.Enabled := true;

  acSave.Enabled := true;

  acApprove.Enabled := true;

  acCancelApprove.Enabled := false;

  acApprove.Visible := acApprove.Enabled;

  acCancelApprove.Visible := acCancelApprove.Enabled;  
end;

procedure TPaymentEdit.SetState;
begin
  if dmPublic.tDocumentPaymentPaymentDone.Value then begin
    SetStateApproved;

    Caption := dmPublic.tDocumentPaymentDescription.Value + ' (проведен, редактирование невозможно)';
  end
  else begin
    SetStateNotApproved;

    Caption := dmPublic.tDocumentPaymentDescription.Value + ' (не проведен)';
  end;
end;

procedure TPaymentEdit.cxNumberPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  case AButtonIndex of
  0: acSetNumber.Execute;
  1: acClearNumber.Execute;
  end;
end;

procedure TPaymentEdit.acSetNumberExecute(Sender: TObject);
Var
  APaymentIntId, ACode, ErrorCode: integer;

  APrefix: string;
begin
  dmPublic.tPayment.Close;

  dmPublic.tPayment.Open;

  if (dmPublic.tDocumentPaymentDocumentNumber.Value <> '') then
  begin
    ShowMessage('Для акта оплаты уже установлен номер '
      + dmPublic.tDocumentPaymentDocumentNumber.Value);

    exit;
  end;

  APaymentIntId := dmPublic.tDocumentPaymentObjectIntId.Value;

  if APaymentIntId = 0 then
    if MessageDlg('Акт оплаты не сохранен. Сохранить?', mtConfirmation,
      [mbYes, mbNo], 0) = mrYes then
      acSave.Execute
    else
      exit;

  //получаем префикс
  APaymentIntId := dmPublic.tDocumentPaymentObjectIntId.Value;

  APrefix := dmPublic.GetPaymentPrefix(APaymentIntId, ErrorCode);

  if ErrorCode = -1 then
  begin
    ShowMessage('Акт оплаты не найден!');

    exit;
  end;

  if ErrorCode = -2 then
  begin
    ShowMessage('Для акта оплаты не указан тип платежа!');

    exit;
  end;

  //получаем номер
  ACode := dmPublic.GetPaymentNewCode(APaymentIntId, ErrorCode) + 1;

  if ErrorCode = -1 then
  begin
    ShowMessage('Акт оплаты не найден!');

    exit;
  end;

  if ErrorCode = -2 then
  begin
    ShowMessage('Для акта оплаты не указан тип платежа!');

    exit;
  end;

  if ErrorCode = -3 then
  begin
    ShowMessage('Не указана дата платежа!');

    exit;
  end;

  dmPublic.tDocumentPayment.Edit;

  dmPublic.tDocumentPaymentDocumentNumber.Value := APrefix + IntToStr(ACode);

  dmPublic.tDocumentPaymentDocumentCode.Value := ACode;
end;

procedure TPaymentEdit.acClearNumberExecute(Sender: TObject);
begin
  dmPublic.tDocumentPayment.Edit;

  dmPublic.tDocumentPayment.FieldValues['DocumentNumber'] := NULL;

  dmPublic.tDocumentPayment.FieldValues['DocumentCode'] := NULL;
end;

procedure TPaymentEdit.cxPaymentTypePropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var
  F: TForm;

  PaymentTypeId: string;

  PaymentCode: integer;
begin
  PaymentTypeId := dmPublic.tDocumentPaymentTypeId.Value;

  if not dmPublic.tPaymentType.Locate('ObjectId', PaymentTypeId, []) then
    exit;

  PaymentCode := dmPublic.tPaymentTypeObjectCode.Value;

  if PaymentCode <> 4 then
    exit;

  F := TPaymentType.Execute(PaymentTypeEdit, 'modal');

  F.ShowModal;

  if F.Tag = mrOk then
  begin
    dmPublic.tDocumentPayment.Edit;

    dmPublic.tDocumentPaymentPaymentTypeId.Value :=
      dmPublic.tPaymentTypeObjectId.Value;
  end;
end;

procedure TPaymentEdit.FormShow(Sender: TObject);
var
  PaymentTypeId: string;

  PaymentCode: integer;
begin
  inherited;

  PaymentTypeId := dmPublic.tDocumentPaymentTypeId.Value;

  if not dmPublic.tPaymentType.Locate('ObjectId', PaymentTypeId, []) then
    exit;

  PaymentCode := dmPublic.tPaymentTypeObjectCode.Value;

  if PaymentCode <> 4 then
    cxPaymentType.Style.Color := clMenuBar
  else
    cxPaymentType.Style.Color := clWindow;

  cxPaymentType.Enabled := PaymentCode = 4;

  SetState;
end;

procedure TPaymentEdit.acApproveExecute(Sender: TObject);
var
  AMessage: string;
begin
  if not dmPublic.tDocumentIsApproved.Value then
  begin
    ShowMessage('Договор не проведен, проведение акта невозможно!');

    exit;
  end;

  if not Check(AMessage) then
  begin
    ShowMessage(AMessage);

    exit;
  end;

  dmPublic.tDocumentPayment.Edit;

  dmPublic.tDocumentPaymentPaymentDone.Value := true;

  acSave.Execute;

  SetState;
end;

procedure TPaymentEdit.acCancelApproveExecute(Sender: TObject);
begin
  if not dmPublic.tDocumentPaymentPaymentDone.Value then
  begin
    ShowMessage('Акт не проведен, отмена проведения невозможна!');

    exit;
  end;

  dmPublic.tDocumentPayment.Edit;

  dmPublic.tDocumentPaymentPaymentDone.Value := false;

  acSave.Execute;

  SetState;
end;

end.
