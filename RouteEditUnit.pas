unit RouteEditUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FormEditAbsUnit, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, dxBarDBNav, dxBar, cxClasses,
  ImgList, ActnList, dxLayoutControl, cxGridLevel, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, cxPC,
  cxContainer, dxLayoutcxEditAdapters, cxTextEdit, cxDBEdit;

type
  TRouteEdit = class(TFormEditAbs)
    cxRouteEdit: TcxDBTextEdit;
    dxLayoutMainItem1: TdxLayoutItem;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RouteEdit: TRouteEdit;

implementation

uses
  DataModuleUnit
  ;

{$R *.dfm}

end.
