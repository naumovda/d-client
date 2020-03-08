unit SelfParametersUnit;

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
  TSelfParameters = class(TFormListAbs)
    tvMainRowNumber: TcxGridDBColumn;
    tvMainObjectCode: TcxGridDBColumn;
    tvMainObjectName: TcxGridDBColumn;
    tvMainObjectValue: TcxGridDBColumn;
    dxLeftItem1: TdxLayoutItem;
    cxValue: TcxTextEdit;
    procedure acClearExecute(Sender: TObject);
    procedure acSearchExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SelfParameters: TSelfParameters;

implementation

uses
  DataModuleUnit
  ;

{$R *.dfm}

procedure TSelfParameters.acClearExecute(Sender: TObject);
begin
  inherited;

  cxValue.EditValue := '';

  acSearchExecute(Sender);
end;

procedure TSelfParameters.acSearchExecute(Sender: TObject);
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

end.
