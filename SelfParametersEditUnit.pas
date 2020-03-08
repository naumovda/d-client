unit SelfParametersEditUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FormEditAbsUnit, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, dxBarDBNav, dxBar, cxClasses,
  ImgList, ActnList, dxLayoutControl, cxGridLevel, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, cxPC,
  cxContainer, dxLayoutcxEditAdapters, cxTextEdit, cxDBEdit, cxMaskEdit,
  cxSpinEdit;

type
  TSelfParametersEdit = class(TFormEditAbs)
    cxCode: TcxDBTextEdit;
    dxLayoutMainItem1: TdxLayoutItem;
    cxName: TcxDBTextEdit;
    dxLayoutMainItem2: TdxLayoutItem;
    cxValue: TcxDBTextEdit;
    dxLayoutMainItem3: TdxLayoutItem;
    cxNumber: TcxDBSpinEdit;
    dxLayoutMainItem4: TdxLayoutItem;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SelfParametersEdit: TSelfParametersEdit;

implementation

uses
  DataModuleUnit
  ;
{$R *.dfm}

end.
