unit ExpenseListUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExpenseUnit, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, dxBar, cxClasses, ActnList, ImgList,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGridCustomView, cxGrid, ComCtrls, dxtree, dxdbtree, cxSplitter;

type
  TExpenseList = class(TExpense)
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ExpenseList: TExpenseList;

implementation

{$R *.dfm}

uses
  DataModuleUnit
  ;

procedure TExpenseList.FormShow(Sender: TObject);
begin
  inherited;

  DS.DataSet.Close;

  DS.DataSet.Open;
end;

end.
