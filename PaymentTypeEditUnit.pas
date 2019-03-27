unit PaymentTypeEditUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FormEditAbsUnit, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, dxBarDBNav, dxBar, cxClasses,
  ImgList, ActnList, cxGridLevel, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxPC, ExtCtrls, cxContainer,
  dxLayoutcxEditAdapters, cxDBEdit, dxLayoutControl, cxTextEdit,
  cxMaskEdit, cxSpinEdit, cxLabel;

type
  TPaymentTypeEdit = class(TFormEditAbs)
    cxCode: TcxDBSpinEdit;
    dxLayoutMainItem1: TdxLayoutItem;
    cxName: TcxDBTextEdit;
    dxLayoutMainItem2: TdxLayoutItem;
    cxPrefix: TcxDBTextEdit;
    dxLayoutMainItem3: TdxLayoutItem;
    dxLayoutMainSeparatorItem1: TdxLayoutSeparatorItem;
    cxLabel1: TcxLabel;
    dxLayoutMainItem4: TdxLayoutItem;
    dxLayoutMainGroup1: TdxLayoutGroup;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PaymentTypeEdit: TPaymentTypeEdit;

implementation

{$R *.dfm}

uses
  DataModuleUnit
  ;

end.
