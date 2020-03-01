unit ClientDetailEditUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FormEditAbsUnit, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, dxBarDBNav, dxBar, cxClasses,
  ImgList, ActnList, dxLayoutControl, cxGridLevel, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, cxPC,
  cxContainer, dxLayoutcxEditAdapters, cxTextEdit, cxMemo, cxDBEdit,
  cxLabel, cxDBLabel;

type
  TClientDetailEdit = class(TFormEditAbs)
    cxCaption: TcxDBLabel;
    dxLayoutMainItem1: TdxLayoutItem;
    cxValue: TcxDBMemo;
    dxLayoutMainItem2: TdxLayoutItem;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ClientDetailEdit: TClientDetailEdit;

implementation

uses
  DataModuleUnit;

{$R *.dfm}

end.
