unit PrintPlanExpenseUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FormReportAbsUnit, ImgList, dxBar, cxClasses, ActnList,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, cxSplitter, cxGroupBox, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, DB, cxDBData, cxImageComboBox,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGridCustomView, cxGrid;

type
  TPrintPlanExpense = class(TFormReportAbs)
    cxGroupBox: TcxGroupBox;
    cxSplitter: TcxSplitter;
    Grid: TcxGrid;
    tvMain: TcxGridDBTableView;
    tvMainExpense: TcxGridDBColumn;
    tvMainOperationSum: TcxGridDBColumn;
    tvMainPeriod: TcxGridDBColumn;
    tvMainComment: TcxGridDBColumn;
    tvMainIsIncome: TcxGridDBColumn;
    lvMain: TcxGridLevel;
  private
    { Private declarations }
  public
    PeriodId: string;
  end;

var
  PrintPlanExpense: TPrintPlanExpense;

implementation

{$R *.dfm}

uses
  DataModuleUnit
  ;

end.
