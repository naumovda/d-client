unit DocumentUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FormAbsUnit, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, dxBar, cxClasses, ActnList, ImgList,
  cxGridLevel, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, cxCalendar, cxCheckBox, cxBarEditItem, Menus,
  dxLayoutControl, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap,
  dxPrnDev, dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns,
  dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils, dxPSPrVwStd,
  dxPSPrVwAdv, dxPSPrVwRibbon, dxPScxEditorProducers,
  dxPScxExtEditorProducers, dxPScxPageControlProducer, dxPSCore,
  cxSplitter, StdCtrls, cxButtons, cxImageComboBox, dxLayoutcxEditAdapters,
  cxContainer, cxGroupBox, cxRadioGroup, cxTextEdit, cxMaskEdit,
  cxButtonEdit, cxSpinEdit;

type
  TDocuments = class(TFormListAbs)
    tvMainDocumentDate: TcxGridDBColumn;
    tvMainComment: TcxGridDBColumn;
    tvMainClient: TcxGridDBColumn;
    cxStyleRed: TcxStyle;
    cxStyleYellow: TcxStyle;
    cxStyleGreen: TcxStyle;
    dxBarButton1: TdxBarButton;
    tvMainDocumentStartDate: TcxGridDBColumn;
    tvMainIsArchive: TcxGridDBColumn;
    tvMainDocumentGroup: TcxGridDBColumn;
    cxArchive: TcxBarEditItem;
    acAddToArchive: TAction;
    acDelFromArchive: TAction;
    dxBarButton2: TdxBarButton;
    dxBarButton3: TdxBarButton;
    tvMainDaysCount: TcxGridDBColumn;
    tvMainDocumentPaymentDate: TcxGridDBColumn;
    tvMainClientGroupCalc: TcxGridDBColumn;
    tvMainPaymentType: TcxGridDBColumn;
    tvMainDocumentNumber: TcxGridDBColumn;
    tvMainIsApproved: TcxGridDBColumn;
    cxState: TcxRadioGroup;
    dxLeftItem1: TdxLayoutItem;
    cxIsArchive: TcxRadioGroup;
    dxLeftItem2: TdxLayoutItem;
    cxClient: TcxButtonEdit;
    dxLeftItem3: TdxLayoutItem;
    cxNumber: TcxTextEdit;
    dxLeftItem4: TdxLayoutItem;
    dxLeftItem5: TdxLayoutItem;
    cxType: TcxButtonEdit;
    dxLeftItem6: TdxLayoutItem;
    cxPayment: TcxButtonEdit;
    dxLeftGroup1: TdxLayoutGroup;
    cxDays: TcxSpinEdit;
    dxLeftItem7: TdxLayoutItem;
    cxSetDays: TcxCheckBox;
    dxLeftItem8: TdxLayoutItem;
    tvMainClientId: TcxGridDBColumn;
    tvMainGroupId: TcxGridDBColumn;
    tvMainPaymentTypeId: TcxGridDBColumn;
    tvMainDiscontPercent: TcxGridDBColumn;
    tvMainDocumentSum: TcxGridDBColumn;
    tvMainDocumentSumTotal: TcxGridDBColumn;
    dxLeftItem9: TdxLayoutItem;
    cxGroup: TcxButtonEdit;
    procedure tvMainStylesGetContentStyle(Sender: TcxCustomGridTableView;
      ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem;
      out AStyle: TcxStyle);
    procedure acPrintExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure acAddToArchiveExecute(Sender: TObject);
    procedure acDelFromArchiveExecute(Sender: TObject);
    procedure acClearExecute(Sender: TObject);
    procedure cxSetDaysPropertiesChange(Sender: TObject);
    procedure acSearchExecute(Sender: TObject);
    procedure cxStatePropertiesChange(Sender: TObject);
    procedure cxClientPropertiesChange(Sender: TObject);
    procedure cxNumberPropertiesChange(Sender: TObject);
    procedure cxTypePropertiesChange(Sender: TObject);
    procedure cxPaymentPropertiesChange(Sender: TObject);
    procedure cxSetDaysClick(Sender: TObject);
    procedure cxDaysPropertiesChange(Sender: TObject);
    procedure cxIsArchivePropertiesChange(Sender: TObject);
    procedure cxClientPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxTypePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxPaymentPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxGroupPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
  private
    { Private declarations }
  public
    ClientId, GroupId, ClientGroupId: integer;

    PaymentId: string;

    procedure SetArchive;
  end;

var
  Documents: TDocuments;

implementation

{$R *.dfm}

uses
  DataModuleUnit
  ,PaymentTypeUnit
  ,PaymentTypeEditUnit
  ,ClientGroupUnit
  ,ClientGroupEditUnit
  ,ClientUnit
  ,ClientEditUnit
  ,DocumentGroupUnit
  ,DocumentGroupEditUnit  
  ;

procedure TDocuments.tvMainStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
var
  d1, d2: TDate;

  s1, s2: string;
begin
  if (not Visible) or (AItem = nil) then exit;

  if not AItem.Visible then exit;

  if ARecord.Values[ Sender.FindItemByName('tvMainDocumentPaymentDate').Index ] <> NULL then
    d1 := ARecord.Values[ Sender.FindItemByName('tvMainDocumentPaymentDate').Index ]
  else
    d1 := Now;

  d2 := Now;

  if (d1 - d2 < 1) then
    AStyle := cxStyleRed
  else
    if (d1 - d2 < 4) then
      AStyle := cxStyleYellow
    else
      AStyle := cxStyleGreen;

end;

procedure TDocuments.acPrintExecute(Sender: TObject);
begin
  dmPublic.tDocument.Filter := tvMain.DataController.Filter.FilterText;

  dmPublic.tDocument.Filtered := true;

  dmPublic.frxReport.LoadFromFile('Documents.fr3');

  dmPublic.frxReport.ShowReport();

  dmPublic.tDocument.Filtered := false;
end;

procedure TDocuments.SetArchive;
begin
  tvMain.DataController.Filter.Clear;

  if cxArchive.EditValue = false then
  begin
    tvMain.DataController.Filter.Root.BoolOperatorKind := fboAnd;

    tvMain.DataController.Filter.Root.AddItem( tvMainIsArchive,
      foEqual, false, 'Ќе отображать архивные' );

    if self.Parameters <> '0' then
      tvMain.DataController.Filter.Root.AddItem( tvMainClientGroupCalc,
        foEqual, dmPublic.tClientGroupClientGroupName.Value , '“ип клиента');

    tvMain.DataController.Filter.Active := True;
  end
  else
    if self.Parameters <> '0' then
    begin
      tvMain.DataController.Filter.Root.AddItem( tvMainClientGroupCalc,
        foEqual, dmPublic.tClientGroupClientGroupName.Value, '“ип клиента');
        
      tvMain.DataController.Filter.Active := True;
    end
    else
      tvMain.DataController.Filter.Active := False; 
end;

procedure TDocuments.FormShow(Sender: TObject);
begin
  acClearExecute(Sender);
  
  cxArchive.EditValue := false;

  if self.Parameters = '0' then
    begin
      tvMainClientGroupCalc.GroupIndex := 0;
      ClientGroupId := -1;
      cxGroup.EditValue := '';
    end
  else
    begin
      tvMainClientGroupCalc.GroupIndex := -1;
      if dmPublic.tClientGroup.Locate('ObjectIntId', self.Parameters, []) then
        begin
          ClientGroupId := dmPublic.tClientGroupObjectIntId.Value;
          cxGroup.EditValue := dmPublic.tClientGroupClientGroupName.Value;
        end
      else
        begin
          ClientGroupId := -1;
          cxGroup.EditValue := '';
        end;
    end;

  acSearchExecute(Sender);
end;

procedure TDocuments.acAddToArchiveExecute(Sender: TObject);
begin
  if MessageDlg('ѕереместить договор в архив?',
    mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    DS.DataSet.Edit;
    DS.DataSet.FieldValues['IsArchive'] := true;
    DS.DataSet.Post;
  end;
end;

procedure TDocuments.acDelFromArchiveExecute(Sender: TObject);
begin
  if MessageDlg('ѕереместить договор из архива?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    DS.DataSet.Edit;
    DS.DataSet.FieldValues['IsArchive'] := false;
    DS.DataSet.Post;
  end;
end;

procedure TDocuments.acClearExecute(Sender: TObject);
begin
  inherited;

  cxState.ItemIndex := 2;

  ClientId := -1;

  cxClient.EditValue := '';

  cxNumber.EditValue := '';

  ClientGroupId := -1;
  cxGroup.EditValue := '';

  GroupId := -1;
  cxType.EditValue := '';

  PaymentId := '';

  cxPayment.EditValue := '';

  cxSetDays.EditValue := true;

  cxDays.EditValue := 0;

  cxIsArchive.ItemIndex := 0;

  acSearchExecute(Sender);
end;

procedure TDocuments.cxSetDaysPropertiesChange(Sender: TObject);
begin
  if cxSetDays.EditValue = true then
    cxDays.Enabled := false
  else
    cxDays.Enabled := true;

  acSearchExecute(Sender);
end;

procedure TDocuments.acSearchExecute(Sender: TObject);
var
  ADate: TDateTime;

  ADays: integer;
begin
  inherited;

  tvMain.BeginUpdate;

  tvMain.DataController.Filter.Root.Clear;

  with tvMain.DataController.Filter.Root do
  begin
    Clear;

    BoolOperatorKind := fboAnd;

    case cxState.ItemIndex of
    0:
      AddItem(tvMain.GetColumnByFieldName('IsApproved'),
        foEqual,
        True,
        'только проведенные'
      );
    1:
      AddItem(tvMain.GetColumnByFieldName('IsApproved'),
        foEqual,
        False,
        'только непроведенные'
      );
    end;

    if ClientGroupId <> -1 then
      AddItem(tvMain.GetColumnByFieldName('ClientGroupCalc'),
        foEqual,
        cxGroup.Text,
        cxGroup.Text
      );

    if ClientId <> -1 then
      AddItem(tvMain.GetColumnByFieldName('ClientId'),
        foEqual,
        ClientId,
        cxClient.Text
      );

    if cxNumber.Text <> '' then
      AddItem(tvMain.GetColumnByFieldName('DocumentNumber'),
        foLike,
        '%' + cxNumber.Text + '%',
        cxNumber.Text
      );

    if GroupId <> -1 then
      AddItem(tvMain.GetColumnByFieldName('GroupId'),
        foEqual,
        GroupId,
        cxType.EditText
      );

    if PaymentId <> '' then
      AddItem(tvMain.GetColumnByFieldName('PaymentTypeId'),
        foEqual,
        PaymentId,
        cxPayment.Text
      );

    if cxSetDays.EditValue = false then
    begin
      if cxDays.EditValue = NULL then
        ADays := 0
      else
        ADays := cxDays.EditValue;

      ADate := Now + ADays;

      AddItem(tvMain.GetColumnByFieldName('DocumentPaymentDate'),
        foLess,
        ADate,
        'менее ' + IntToStr(ADays) + ' дней'
      );
    end;

    case cxIsArchive.ItemIndex of
    0:
      AddItem(tvMain.GetColumnByFieldName('IsArchive'),
        foEqual,
        False,
        'не архивные'
      );
    1:
      AddItem(tvMain.GetColumnByFieldName('IsArchive'),
        foEqual,
        True,
        'архивные'
      );
    end;
  end;

  tvMain.DataController.Filter.Active := true;

  tvMain.EndUpdate;
end;

procedure TDocuments.cxStatePropertiesChange(Sender: TObject);
begin
  acSearchExecute(Sender);
end;

procedure TDocuments.cxClientPropertiesChange(Sender: TObject);
begin
  acSearchExecute(Sender);
end;

procedure TDocuments.cxNumberPropertiesChange(Sender: TObject);
begin
  acSearchExecute(Sender);
end;

procedure TDocuments.cxTypePropertiesChange(Sender: TObject);
begin
  acSearchExecute(Sender);
end;

procedure TDocuments.cxPaymentPropertiesChange(Sender: TObject);
begin
  acSearchExecute(Sender);
end;

procedure TDocuments.cxSetDaysClick(Sender: TObject);
begin
  acSearchExecute(Sender);
end;

procedure TDocuments.cxDaysPropertiesChange(Sender: TObject);
begin
  acSearchExecute(Sender);
end;

procedure TDocuments.cxIsArchivePropertiesChange(Sender: TObject);
begin
  acSearchExecute(Sender);
end;

procedure TDocuments.cxClientPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var
  F: TForm;
begin
  case AButtonIndex of
  0:
    begin
      F := TClient.Execute(ClientEdit, 'modal');

      F.ShowModal;

      if F.Tag = mrOk then
      begin
        ClientId := dmPublic.tClientObjectIntId.Value;

        cxClient.EditValue := dmPublic.tClientClientName.Value;
      end;
    end;
  1:
    begin
      ClientId := -1;

      cxClient.EditValue := '';
    end
  end;

  acSearchExecute(Sender);
end;

procedure TDocuments.cxTypePropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var
  F: TForm;
begin
  case AButtonIndex of
  0:
    begin
      F := TDocumentGroup.Execute(DocumentGroupEdit, 'modal');

      F.ShowModal;

      if F.Tag = mrOk then
      begin
        GroupId := dmPublic.tDocumentGroupObjectIntId.Value;

        cxType.EditValue := dmPublic.tDocumentGroupGroupName.Value;
      end;
    end;
  1:
    begin
      GroupId := -1;

      cxType.EditValue := '';
    end
  end;

  acSearchExecute(Sender);
end;

procedure TDocuments.cxPaymentPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var
  F: TForm;
begin
  case AButtonIndex of
  0:
    begin
      F := TPaymentType.Execute(PaymentTypeEdit, 'modal');

      F.ShowModal;

      if F.Tag = mrOk then
      begin
        PaymentId := dmPublic.tPaymentTypeObjectId.Value;

        cxPayment.EditValue := dmPublic.tPaymentTypeObjectName.Value;
      end;
    end;
  1:
    begin
      PaymentId := '';

      cxPayment.EditValue := '';
    end
  end;

  acSearchExecute(Sender);
end;

procedure TDocuments.cxGroupPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var
  F: TForm;
begin
  case AButtonIndex of
  0:
    begin
      F := TClientGroup.Execute(ClientGroupEdit, 'modal');

      F.ShowModal;

      if F.Tag = mrOk then
      begin
        ClientGroupId := dmPublic.tClientGroupObjectIntId.Value;

        cxGroup.EditValue := dmPublic.tClientGroupClientGroupName.Value;
      end;
    end;
  1:
    begin
      ClientGroupId := -1;

      cxGroup.EditValue := '';
    end
  end;

  acSearchExecute(Sender);
end;

end.
