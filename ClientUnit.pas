unit ClientUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FormAbsUnit, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, dxBar, cxClasses, ActnList, ImgList,
  cxGridLevel, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, Menus, dxLayoutControl, dxPSGlbl, dxPSUtl,
  dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider,
  dxPSFillPatterns, dxPSEdgePatterns, dxPSPDFExportCore, dxPSPDFExport,
  cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon,
  dxPScxEditorProducers, dxPScxExtEditorProducers,
  dxPScxPageControlProducer, dxPSCore, cxSplitter, StdCtrls, cxButtons,
  dxLayoutcxEditAdapters, cxContainer, cxTextEdit, cxMaskEdit, cxButtonEdit;

type
  TClient = class(TFormListAbs)
    tvMainClientName: TcxGridDBColumn;
    tvMainClientType: TcxGridDBColumn;
    tvMainClientGroup: TcxGridDBColumn;
    dxBarButton1: TdxBarButton;
    acPrintClients: TAction;
    dxBarButton2: TdxBarButton;
    cxName: TcxTextEdit;
    dxLeftItem1: TdxLayoutItem;
    cxType: TcxButtonEdit;
    dxLeftItem2: TdxLayoutItem;
    cxGroup: TcxButtonEdit;
    dxLeftItem3: TdxLayoutItem;
    dxLeftSeparatorItem1: TdxLayoutSeparatorItem;
    tvMainClientTypeId: TcxGridDBColumn;
    tvMainClientGroupId: TcxGridDBColumn;
    procedure FormShow(Sender: TObject);
    procedure acPrintExecute(Sender: TObject);
    procedure acPrintClientsExecute(Sender: TObject);
    procedure acDeleteExecute(Sender: TObject);
    procedure acClearExecute(Sender: TObject);
    procedure acSearchExecute(Sender: TObject);
    procedure cxGroupPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxTypePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxNamePropertiesChange(Sender: TObject);
  private
    { Private declarations }
  public
    GroupId, TypeId: integer;
  end;

var
  Client: TClient;

implementation

{$R *.dfm}

uses
  DataModuleUnit
  ,ClientTypeUnit
  ,ClientGroupUnit
  ;

procedure TClient.FormShow(Sender: TObject);
begin
  inherited;

  acClear.Execute;

  tvMain.DataController.Filter.Clear;

  if self.Parameters <> 'modal' then
    if self.Parameters <> '0' then
    begin
      tvMain.DataController.Filter.Root.BoolOperatorKind := fboAnd;

      tvMain.DataController.Filter.Root.AddItem( tvMainClientGroup,
        foEqual, self.Parameters, 'Oei eeeaioa');

      tvMain.DataController.Filter.Active := True;
    end
    else
      tvMain.DataController.Filter.Active := False;
end;

procedure TClient.acPrintExecute(Sender: TObject);
begin
  dmPublic.tDocument.Filter := 'ClientId = ' + IntToStr(dmPublic.tClientObjectIntId.Value);

  dmPublic.tDocument.Filtered := true;

  dmPublic.frxReport.LoadFromFile('Documents.fr3');

  dmPublic.frxReport.ShowReport();

  dmPublic.tDocument.Filtered := false;
end;

procedure TClient.acPrintClientsExecute(Sender: TObject);
begin
  dmPublic.frxReport.LoadFromFile('Clients.fr3');

  dmPublic.frxReport.ShowReport();
end;

procedure TClient.acDeleteExecute(Sender: TObject);
begin
  if MessageDlg('Aieiaiea! Oaaeaiea eeeaioa i?eaaaao e oaaeaie? anao aai aiaiai?ia! I?iaie?eou?',
      mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  try
    DS.DataSet.Delete();

    dmPublic.tDocument.Close;

    dmPublic.tDocument.Open;
  except
    on E : Exception do
        ShowMessage(E.Message);
  end;
end;

procedure TClient.acClearExecute(Sender: TObject);
begin
  inherited;

  GroupId := -1;

  TypeId := -1;

  cxGroup.EditValue := '';

  cxType.EditValue := '';

  cxName.EditValue := '';

  acSearchExecute(Sender);
end;

procedure TClient.acSearchExecute(Sender: TObject);
begin
  inherited;

  tvMain.BeginUpdate;

  tvMain.DataController.Filter.Root.Clear;

  with tvMain.DataController.Filter.Root do
  begin
    Clear;

    BoolOperatorKind := fboAnd;

    if cxName.Text <> '' then
      AddItem(tvMain.GetColumnByFieldName('ClientName'),
        foLike,
        '%' + cxName.Text + '%',
        cxName.Text
      );

    if TypeId <> -1 then
      AddItem(tvMain.GetColumnByFieldName('ClientTypeId'),
        foEqual,
        TypeId,
        cxType.Text
      );

    if GroupId <> -1 then
      AddItem(tvMain.GetColumnByFieldName('ClientGroupId'),
        foEqual,
        GroupId,
        cxGroup.Text
      );
  end;

  tvMain.DataController.Filter.Active := true;

  tvMain.EndUpdate;
end;

procedure TClient.cxGroupPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var
  F: TForm;
begin
  case AButtonIndex of
  0:
    begin
      F := TClientGroup.Execute(nil, 'modal');

      F.ShowModal;

      if F.Tag = mrOk then
      begin
        GroupId := dmPublic.tClientGroupObjectIntId.Value;

        cxGroup.EditValue := dmPublic.tClientGroupClientGroupName.Value;
      end;
    end;
  1:
    begin
      GroupId := -1;

      cxGroup.EditValue := '';
    end;
  end;

  acSearchExecute(Sender);  
end;

procedure TClient.cxTypePropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var
  F: TForm;
begin
  case AButtonIndex of
  0:
    begin
      F := TClientType.Execute(nil, 'modal');

      F.ShowModal;

      if F.Tag = mrOk then
      begin
        TypeId := dmPublic.tClientTypeObjectIntId.Value;

        cxType.EditValue := dmPublic.tClientTypeClientTypeName.Value;
      end;
    end;
  1:
    begin
      TypeId := -1;

      cxType.EditValue := '';
    end;
  end;

  acSearchExecute(Sender);
end;

procedure TClient.cxNamePropertiesChange(Sender: TObject);
begin
  acSearchExecute(Sender);
end;

end.