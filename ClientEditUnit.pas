unit ClientEditUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FormEditAbsUnit, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, dxBarDBNav, dxBar, cxClasses,
  ImgList, ActnList, cxGridLevel, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxPC, ExtCtrls, cxContainer,
  cxDBEdit, cxTextEdit, cxMaskEdit, cxButtonEdit, cxLabel,
  dxLayoutcxEditAdapters, dxLayoutControl;

type
  TClientEdit = class(TFormEditAbs)
    cxClientType: TcxDBButtonEdit;
    cxClientName: TcxDBTextEdit;
    tvMainAttributeValue: TcxGridDBColumn;
    tvMainAttribute: TcxGridDBColumn;
    tvMainNumber: TcxGridDBColumn;
    acFill: TAction;
    dxBarButton7: TdxBarButton;
    cxGroup: TcxDBButtonEdit;
    acPrint: TAction;
    dxBarButton8: TdxBarButton;
    dxLayoutMainItem1: TdxLayoutItem;
    dxLayoutMainItem2: TdxLayoutItem;
    dxLayoutMainItem3: TdxLayoutItem;
    procedure acFillExecute(Sender: TObject);
    procedure cxClientTypePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxGroupPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure acPrintExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ClientEdit: TClientEdit;

implementation

{$R *.dfm}

uses

  DataModuleUnit
  ,ClientTypeUnit
  ,ClientTypeEditUnit  
  ,ClientGroupUnit
  ,ClientGroupEditUnit
  ;

procedure TClientEdit.acFillExecute(Sender: TObject);
begin
  if MessageDlg('�� ������ �������� ��� �������� ���������?', mtConfirmation,
    [mbYes, mbNo], 0) = mrYes then
  begin
    dmPublic.tClientAttributeValue.First;

    while not dmPublic.tClientAttributeValue.Eof do
      dmPublic.tClientAttributeValue.Delete;

    if dmPublic.tClientType.Locate('ObjectIntId', dmPublic.tClientClientTypeId.Value ,[]) then
    begin
      dmPublic.tClientTypeAttribute.First;

      while not dmPublic.tClientTypeAttribute.Eof do
      begin
        dmPublic.tClientAttributeValue.Append;

        dmPublic.tClientAttributeValueAttributeId.Value :=
          dmPublic.tClientTypeAttributeObjectIntId.Value;

        dmPublic.tClientAttributeValueAttributeValue.Value := '';

        dmPublic.tClientAttributeValue.Post;

        dmPublic.tClientTypeAttribute.Next;
      end;
    end;
  end;
end;

procedure TClientEdit.cxClientTypePropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var
  F: TForm;
begin
  if dmPublic.tClientClientTypeId.Value <> 0 then
    if MessageDlg('��� ����� ���� ������� ���������� ��� �������� ���������. ����������?',
      mtConfirmation, [mbYes, mbNo], 0) = mrNo then
    begin
      exit;
    end;

  F := TClientType.Execute(ClientTypeEdit, 'modal');

  F.ShowModal;

  if F.Tag = mrOk then
  begin
    dmPublic.tClient.Edit;

    dmPublic.tClientClientTypeId.Value := dmPublic.tClientTypeObjectIntId.Value;

    dmPublic.tClientAttributeValue.First;

    dmPublic.tClient.Post;

    while not dmPublic.tClientAttributeValue.Eof do
      dmPublic.tClientAttributeValue.Delete;

    if dmPublic.tClientType.Locate('ObjectIntId', dmPublic.tClientClientTypeId.Value ,[]) then
    begin
      dmPublic.tClientTypeAttribute.First;

      while not dmPublic.tClientTypeAttribute.Eof do
      begin
        dmPublic.tClientAttributeValue.Append;

        dmPublic.tClientAttributeValueAttributeId.Value :=
          dmPublic.tClientTypeAttributeObjectIntId.Value;

        dmPublic.tClientAttributeValueAttributeValue.Value := '';

        dmPublic.tClientAttributeValue.Post;

        dmPublic.tClientTypeAttribute.Next;
      end;
    end;
  end;
end;

procedure TClientEdit.cxGroupPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var
  F: TForm;
begin
  F := TClientGroup.Execute(ClientGroupEdit, 'modal');

  F.ShowModal;

  if F.Tag = mrOk then
  begin
    dmPublic.tClient.Edit;

    dmPublic.tClientClientGroupId.Value := dmPublic.tClientGroupObjectIntId.Value;
  end;
end;

procedure TClientEdit.acPrintExecute(Sender: TObject);
begin
  dmPublic.tDocument.Filter := 'ClientId = ' + IntToStr(dmPublic.tClientObjectIntId.Value);

  dmPublic.tDocument.Filtered := true;

  dmPublic.frxReport.LoadFromFile('Documents.fr3');

  dmPublic.frxReport.ShowReport();

  dmPublic.tDocument.Filtered := false;
end;

end.
 