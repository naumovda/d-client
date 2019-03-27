unit DocumentStateUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FormAbsUnit, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, dxBar, cxClasses, ActnList, ImgList,
  cxGridLevel, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, cxCheckBox, cxColorComboBox, Menus,
  dxLayoutControl, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap,
  dxPrnDev, dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns,
  dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils, dxPSPrVwStd,
  dxPSPrVwAdv, dxPSPrVwRibbon, dxPScxEditorProducers,
  dxPScxExtEditorProducers, dxPScxPageControlProducer, dxPSCore,
  cxSplitter, StdCtrls, cxButtons;

type
  TDocumentState = class(TFormListAbs)
    tvMainDocumentStateName: TcxGridDBColumn;
    tvMainDocumentIsOpen: TcxGridDBColumn;
    tvMainDocumentColor: TcxGridDBColumn;
    tvMainDayCount: TcxGridDBColumn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DocumentState: TDocumentState;

implementation

{$R *.dfm}

uses
  DataModuleUnit
  ;

end.
