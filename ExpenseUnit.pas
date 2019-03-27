unit ExpenseUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FormAbsUnit, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, dxBar, cxClasses, ActnList, ImgList,
  cxGridLevel, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, ComCtrls, dxtree, dxdbtree, cxSplitter;

type
  TExpense = class(TFormListAbs)
    tvMainCode: TcxGridDBColumn;
    tvMainName: TcxGridDBColumn;
    tvMainIsDetailedByPerson: TcxGridDBColumn;
    tvMainIsDetailedByDate: TcxGridDBColumn;
    tvMainIsUsed: TcxGridDBColumn;
    tvMainIsHasChilds: TcxGridDBColumn;
    tvMainIsIncome: TcxGridDBColumn;
    cxSplitter: TcxSplitter;
    dxDBTreeView: TdxDBTreeView;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Expense: TExpense;

implementation

{$R *.dfm}

uses
  DataModuleUnit
  ;

end.
 