unit RoutesetDetailEditUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FormEditAbsUnit, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, dxBarDBNav, dxBar, cxClasses,
  ImgList, ActnList, dxLayoutControl, cxGridLevel, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, cxPC,
  cxContainer, dxLayoutcxEditAdapters, cxLabel, cxDBLabel, cxTextEdit,
  cxMaskEdit, cxSpinEdit, cxDBEdit;

type
  TRoutesetDetailEdit = class(TFormEditAbs)
    cxRoute: TcxDBLabel;
    dxLayoutMainItem1: TdxLayoutItem;
    cxCarCount: TcxDBSpinEdit;
    dxLayoutMainItem2: TdxLayoutItem;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RoutesetDetailEdit: TRoutesetDetailEdit;

implementation

uses
  DataModuleUnit
  ;

{$R *.dfm}

end.
