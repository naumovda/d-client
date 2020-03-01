unit RoutesetEditUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FormEditAbsUnit, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, dxBarDBNav, dxBar, cxClasses,
  ImgList, ActnList, dxLayoutControl, cxGridLevel, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, cxPC,
  cxContainer, dxLayoutcxEditAdapters, cxTextEdit, cxDBEdit, cxSplitter,
  cxLabel;

type
  TRoutesetEdit = class(TFormEditAbs)
    cxName: TcxDBTextEdit;
    dxLayoutMainItem1: TdxLayoutItem;
    cxSplitterMain: TcxSplitter;
    dxLayoutDetailGroup_Root: TdxLayoutGroup;
    dxLayoutDetail: TdxLayoutControl;
    cxLabel1: TcxLabel;
    dxLayoutDetailItem1: TdxLayoutItem;
    dxLayoutDetailItem2: TdxLayoutItem;
    cxGridRoutes: TcxGrid;
    tvRoutes: TcxGridDBTableView;
    lvRoutes: TcxGridLevel;
    tvRoutesObjectCode: TcxGridDBColumn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RoutesetEdit: TRoutesetEdit;

implementation

uses
  DataModuleUnit
  ;

{$R *.dfm}

end.
