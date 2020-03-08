unit ClientParametersUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FormAbsUnit, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, Menus, dxLayoutControl, dxPSGlbl,
  dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider,
  dxPSFillPatterns, dxPSEdgePatterns, dxPSPDFExportCore, dxPSPDFExport,
  cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon,
  dxPScxEditorProducers, dxPScxExtEditorProducers,
  dxPScxPageControlProducer, dxPSCore, dxBar, cxClasses, ActnList, ImgList,
  cxSplitter, StdCtrls, cxButtons, cxGridLevel, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  dxLayoutcxEditAdapters, cxContainer, cxTextEdit;

type
  TClientParameters = class(TFormListAbs)
    tvMainRowNumber: TcxGridDBColumn;
    tvMainObjectCode: TcxGridDBColumn;
    tvMainObjectName: TcxGridDBColumn;
    tvMainObjectValue: TcxGridDBColumn;
    dxLeftItem1: TdxLayoutItem;
    cxValue: TcxTextEdit;
    dxLeftGroupReq: TdxLayoutGroup;
    dxLeftSeparatorItem1: TdxLayoutSeparatorItem;
    cxINN: TcxTextEdit;
    dxLeftItem2: TdxLayoutItem;
    cxFill: TcxButton;
    dxLeftItem3: TdxLayoutItem;
    acFillParameters: TAction;
    procedure acClearExecute(Sender: TObject);
    procedure acSearchExecute(Sender: TObject);
    procedure acFillParametersExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ClientParameters: TClientParameters;

implementation

uses
  DataModuleUnit
  ,ExtActns
  ;

{$R *.dfm}

procedure TClientParameters.acClearExecute(Sender: TObject);
begin
  inherited;

  cxValue.EditValue := '';

  acSearchExecute(Sender);
end;

procedure TClientParameters.acSearchExecute(Sender: TObject);
begin
  inherited;

  tvMain.BeginUpdate;

  tvMain.DataController.Filter.Root.Clear;

  with tvMain.DataController.Filter.Root do
  begin
    Clear;

    BoolOperatorKind := fboOr;

    if cxValue.Text <> '' then
    begin
      AddItem(tvMain.GetColumnByFieldName('ObjectName'),
        foLike,
        '%' + cxValue.Text + '%',
        cxValue.Text
      );
      AddItem(tvMain.GetColumnByFieldName('ObjectValue'),
        foLike,
        '%' + cxValue.Text + '%',
        cxValue.Text
      );
    end;
  end;

  tvMain.DataController.Filter.Active := true;

  tvMain.EndUpdate;
end;

procedure TClientParameters.acFillParametersExecute(Sender: TObject);
var
  fr: TFileRun;
begin
{
  cmd := Application.ExeName;
  cmd := Copy(cmd, 1, LastDelimiter('\', cmd));
  fr := TFileRun.Create(self);
  fr.FileName  :=  cmd + 'arj.exe';
  fr.Parameters :=  'x -jyo "' + Directory + 'gp.arj"'
  fr.ShowCmd := scHide;
  fr.Execute;
}
end;

end.
