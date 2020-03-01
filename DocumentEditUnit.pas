unit DocumentEditUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FormEditAbsUnit, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, dxBarDBNav, dxBar, cxClasses,
  ImgList, ActnList, cxGridLevel, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxPC, ExtCtrls, cxContainer,
  cxDropDownEdit, cxCalendar, cxDBEdit, cxTextEdit, cxMaskEdit,
  cxButtonEdit, cxLabel, cxMemo, dxLayoutcxEditAdapters, dxLayoutControl,
  Menus, StdCtrls, cxButtons, cxDBLabel, cxImageComboBox, cxCheckBox,
  cxCalc;

type
  TDocumentEdit = class(TFormEditAbs)
    cxClient: TcxDBButtonEdit;
    cxDateEnd: TcxDBDateEdit;
    cxComment: TcxDBMemo;
    cxDateStart: TcxDBDateEdit;
    cxGroup: TcxDBButtonEdit;
    tvMainPaymentDate: TcxGridDBColumn;
    tvMainPaymentSum: TcxGridDBColumn;
    cxDateNearestPayment: TcxDBDateEdit;
    dxLayoutMainItem1: TdxLayoutItem;
    dxLayoutMainItem2: TdxLayoutItem;
    dxLayoutMainItem3: TdxLayoutItem;
    dxLayoutMainItem4: TdxLayoutItem;
    dxLayoutMainItem5: TdxLayoutItem;
    dxLayoutMainItem6: TdxLayoutItem;
    dxLayoutMainGroup1: TdxLayoutGroup;
    dxLayoutMainGroup2: TdxLayoutGroup;
    cxPaymentType: TcxDBButtonEdit;
    dxLayoutMainItem7: TdxLayoutItem;
    tvMainPaymentType: TcxGridDBColumn;
    cxNumber: TcxDBButtonEdit;
    dxLayoutMainItem8: TdxLayoutItem;
    dxLayoutMainGroup4: TdxLayoutGroup;
    cxButton1: TcxButton;
    dxLayoutMainItem9: TdxLayoutItem;
    dxLayoutMainSeparatorItem1: TdxLayoutSeparatorItem;
    acSetNumber: TAction;
    acClearNumber: TAction;
    cxButton2: TcxButton;
    dxLayoutMainItem10: TdxLayoutItem;
    cxState: TcxDBLabel;
    dxLayoutMainItem11: TdxLayoutItem;
    acApprove: TAction;
    dxBarButton7: TdxBarButton;
    tvMainPaymentState: TcxGridDBColumn;
    tvMainPaymentDone: TcxGridDBColumn;
    cxArcive: TcxDBCheckBox;
    dxLayoutMainItem12: TdxLayoutItem;
    dxLayoutMainGroup8: TdxLayoutGroup;
    dxLayoutMainSeparatorItem2: TdxLayoutSeparatorItem;
    acCancelApprove: TAction;
    dxBarButton8: TdxBarButton;
    acSwitchArcive: TAction;
    dxBarButton9: TdxBarButton;
    dxLayoutMainGroup9: TdxLayoutGroup;
    dxLayoutMainGroup10: TdxLayoutGroup;
    cxSum: TcxDBCalcEdit;
    dxLayoutMainItem13: TdxLayoutItem;
    cxDiscontPercent: TcxDBCalcEdit;
    dxLayoutMainItem14: TdxLayoutItem;
    cxDiscontSum: TcxDBCalcEdit;
    dxLayoutMainItem15: TdxLayoutItem;
    cxSumTotal: TcxDBCalcEdit;
    dxLayoutMainItem16: TdxLayoutItem;
    dxLayoutMainSeparatorItem3: TdxLayoutSeparatorItem;
    acPrint: TAction;
    dxBarPrint: TdxBarButton;
    procedure cxClientPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxGroupPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxPaymentTypePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure FormShow(Sender: TObject);
    procedure cxNumberPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure acSetNumberExecute(Sender: TObject);
    procedure acClearNumberExecute(Sender: TObject);
    procedure acApproveExecute(Sender: TObject);
    procedure acCancelApproveExecute(Sender: TObject);
    procedure acSwitchArciveExecute(Sender: TObject);
    procedure acNewExecute(Sender: TObject);
    procedure acEditExecute(Sender: TObject);
    procedure acPrintExecute(Sender: TObject);
  private
    { Private declarations }
  public
    function Check(var AMessage: string): boolean;

    procedure SetPaymentType;

    procedure SetState;

    procedure SetStateApproved;

    procedure SetStateNotApproved;
  end;

var
  DocumentEdit: TDocumentEdit;

implementation

{$R *.dfm}

uses
  DataModuleUnit
  ,ReportUnit
  ,ClientUnit
  ,ClientEditUnit
  ,DocumentGroupUnit
  ,PaymentTypeUnit
  ,PaymentTypeEditUnit
  ,PaymentEditUnit
  ;

function TDocumentEdit.Check(var AMessage: string): boolean;
begin
  Result := true;

  if dmPublic.tDocument.FieldValues['PaymentType'] = NULL then
  begin
    AMessage := 'Не указан тип оплаты';

    Result := false;
  end;

  if dmPublic.tDocument.FieldValues['Client'] = NULL then
  begin
    AMessage := 'Не указан клиент';

    Result := false;
  end;

  if dmPublic.tDocument.FieldValues['DocumentStartDate'] = NULL then
  begin
    AMessage := 'Не указана дата начала договора';

    Result := false;
  end;

  if dmPublic.tDocument.FieldValues['DocumentDate'] = NULL then
  begin
    AMessage := 'Не указана дата окончания договора';

    Result := false;
  end;

  if dmPublic.tDocument.FieldValues['DocumentNumber'] = NULL then
  begin
    AMessage := 'Не указан номер договора';

    Result := false;
  end;
end;

procedure TDocumentEdit.SetStateApproved;
begin
  dxLayoutMain.Enabled := false;

  acOk.Enabled := false;

  acSave.Enabled := false;

  acApprove.Enabled := false;

  acCancelApprove.Enabled := true;

  acApprove.Visible := acApprove.Enabled;

  acCancelApprove.Visible := acCancelApprove.Enabled;
end;

procedure TDocumentEdit.SetStateNotApproved;
begin
  dxLayoutMain.Enabled := true;

  acOk.Enabled := true;

  acSave.Enabled := true;

  acApprove.Enabled := true;

  acCancelApprove.Enabled := false;

  acApprove.Visible := acApprove.Enabled;

  acCancelApprove.Visible := acCancelApprove.Enabled;  
end;

procedure TDocumentEdit.SetState;
begin
  if dmPublic.tDocumentIsApproved.Value then
  begin
    SetStateApproved;

    Caption := dmPublic.tDocumentDescription.Value + ' (проведен, редактирование невозможно)';
  end
  else begin
    SetStateNotApproved;

    Caption := dmPublic.tDocumentDescription.Value + ' (не проведен)';    
  end;

  if dmPublic.tDocumentIsArchive.Value then
    acSwitchArcive.Caption := 'Из архива'
  else
    acSwitchArcive.Caption := 'В архив';
end;

procedure TDocumentEdit.SetPaymentType;
begin
  if (dmPublic.tDocumentPaymentTypeId.Value = '') or
    (dmPublic.tDocumentPaymentTypeId.Value = '{006C0FF1-EF6C-4BA9-9525-019B07E96EB0}')
    then
  begin
    tvMainPaymentType.Editing := true;

    tvMainPaymentType.Styles.Content := nil;
  end else begin
    tvMainPaymentType.Editing := false;

    tvMainPaymentType.Styles.Content := cxStyleSel;    
  end;
end;

procedure TDocumentEdit.cxClientPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var
  F: TForm;
begin
  F := TClient.Execute(ClientEdit, 'modal');

  F.ShowModal;

  if F.Tag = mrOk then
  begin
    dmPublic.tDocument.Edit;

    dmPublic.tDocumentClientId.Value := dmPublic.tClientObjectIntId.Value;

    dmPublic.tDocument.Post;
  end;
end;

procedure TDocumentEdit.cxGroupPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var
  F: TForm;
begin
  F := TDocumentGroup.Execute(nil, 'modal');

  F.ShowModal;

  if F.Tag = mrOk then
  begin
    dmPublic.tDocument.Edit;

    dmPublic.tDocumentGroupId.Value := dmPublic.tDocumentGroupObjectIntId.Value;

    dmPublic.tDocument.Post;
  end;
end;

procedure TDocumentEdit.cxPaymentTypePropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var
  F: TForm;

  IsChecked: Boolean;

  PaymentId: string;

  PaymentCode: integer;
begin
  case AButtonIndex of
  0:
    begin
      F := TPaymentType.Execute(PaymentTypeEdit, 'modal');

      F.ShowModal;

      if F.Tag = mrOk then
      begin
        //проверка допустимости данного вида оплаты
        IsChecked := true;

        PaymentId := dmPublic.tPaymentTypeObjectId.Value;
        
        PaymentCode := dmPublic.tPaymentTypeObjectCode.Value;

        if PaymentCode <> 4 then
        begin
          dmPublic.tDocumentPayment.First;

          while not dmPublic.tDocumentPayment.Eof do
          begin
            if dmPublic.tDocumentPaymentPaymentTypeId.Value <> PaymentId then
            begin
              IsChecked := false;

              break;
            end;

            dmPublic.tDocumentPayment.Next;
          end;
        end;

        //если проверка пройдена
        if IsChecked then
        begin
          dmPublic.tDocument.Edit;

          dmPublic.tDocumentPaymentTypeId.Value :=
            dmPublic.tPaymentTypeObjectId.Value;
        end else
          ShowMessage('Данный тип оплаты не может быть выбран, так как были оплаты по договору,'
            + #10#13 + 'которые имеют другой тип!');
      end;
    end;
  1:
    begin
      dmPublic.tDocument.Edit;

      dmPublic.tDocument.FieldValues['PaymentTypeId'] := NULL;
    end;
  end;

  SetPaymentType;
end;

procedure TDocumentEdit.FormShow(Sender: TObject);
begin
  inherited;

  self.FEditForm := PaymentEdit;

  SetPaymentType;

  SetState;  
end;

procedure TDocumentEdit.cxNumberPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  case AButtonIndex of
  0: acSetNumber.Execute;
  1: acClearNumber.Execute;
  end;
end;

procedure TDocumentEdit.acSetNumberExecute(Sender: TObject);
var
  ADocumentIntId, ACode, ErrorCode: integer;

  APrefix: string;
begin
  if (dmPublic.tDocumentDocumentNumber.Value <> '') then
  begin
    ShowMessage('Для документа уже установлен номер '
      + dmPublic.tDocumentDocumentNumber.Value);

    exit;
  end;

  ADocumentIntId := dmPublic.tDocumentObjectIntId.Value;

  //получаем префикс
  APrefix := dmPublic.GetDocumentPrefix(ADocumentIntId, ErrorCode);

  if ErrorCode = -1 then
  begin
    ShowMessage('Документ не найден!');

    exit;
  end;

  if ErrorCode = -2 then
  begin
    ShowMessage('Для документа не указан тип платежа!');

    exit;
  end;

  //получаем номер
  ACode := dmPublic.GetDocumentNewCode(ADocumentIntId, ErrorCode) + 1;

  if ErrorCode = -1 then
  begin
    ShowMessage('Документ не найден!');

    exit;
  end;

  if ErrorCode = -2 then
  begin
    ShowMessage('Для документа не указан тип платежа!');

    exit;
  end;

  if ErrorCode = -3 then
  begin
    ShowMessage('Не указана дата документа!');

    exit;
  end;

  dmPublic.tDocument.Edit;

  dmPublic.tDocumentDocumentNumber.Value := APrefix + IntToStr(ACode);

  dmPublic.tDocumentDocumentCode.Value := ACode;
end;

procedure TDocumentEdit.acClearNumberExecute(Sender: TObject);
begin
  dmPublic.tDocument.Edit;

  dmPublic.tDocument.FieldValues['DocumentNumber'] := NULL;

  dmPublic.tDocument.FieldValues['DocumentCode'] := NULL;
end;

procedure TDocumentEdit.acApproveExecute(Sender: TObject);
var
  AMessage: string;
begin
  if not Check(AMessage) then
  begin
    ShowMessage(AMessage);

    exit;
  end;

  dmPublic.tDocument.Edit;

  dmPublic.tDocumentIsApproved.Value := true;

  acSave.Execute;

  SetState;
end;

procedure TDocumentEdit.acCancelApproveExecute(Sender: TObject);
begin
  if not dmPublic.tDocumentIsApproved.Value then
  begin
    ShowMessage('Документ не проведен, отмена проведения невозможна!');

    exit;
  end;

  dmPublic.tDocument.Edit;

  dmPublic.tDocumentIsApproved.Value := false;

  acSave.Execute;

  SetState;
end;

procedure TDocumentEdit.acSwitchArciveExecute(Sender: TObject);
begin
  dmPublic.tDocument.Edit;

  dmPublic.tDocumentIsArchive.Value := not dmPublic.tDocumentIsArchive.Value;

  acSave.Enabled := true;

  acSave.Execute;  

  SetState;
end;

procedure TDocumentEdit.acNewExecute(Sender: TObject);
begin
  if dmPublic.tDocument.FieldValues['PaymentTypeId'] = NULL then
  begin
    ShowMessage('Для ввода акта введите тип оплаты договора!');

    exit;
  end;

  inherited;
end;

procedure TDocumentEdit.acEditExecute(Sender: TObject);
begin
  if dmPublic.tDocument.FieldValues['PaymentTypeId'] = NULL then
  begin
    ShowMessage('Для ввода акта введите тип оплаты договора!');

    exit;
  end;

  inherited;
end;

procedure TDocumentEdit.acPrintExecute(Sender: TObject);
begin
  WordExport.CreateDocument();
end;

end.
