unit ClientTypeEditUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FormEditAbsUnit, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, dxBarDBNav, dxBar, cxClasses,
  ImgList, ActnList, cxGridLevel, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxPC, ExtCtrls, cxContainer,
  cxTextEdit, cxDBEdit, cxLabel, dxLayoutcxEditAdapters, dxLayoutControl;

type
  TClientTypeEdit = class(TFormEditAbs)
    cxName: TcxDBTextEdit;
    tvMainAttributeName: TcxGridDBColumn;
    tvMainNumber: TcxGridDBColumn;
    dxLayoutMainItem1: TdxLayoutItem;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ClientTypeEdit: TClientTypeEdit;

implementation

{$R *.dfm}

uses
  DataModuleUnit
  ;

end.
