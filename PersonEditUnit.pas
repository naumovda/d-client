unit PersonEditUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FormEditAbsUnit, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, dxBarDBNav, dxBar, cxClasses,
  ImgList, ActnList, cxGridLevel, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxPC, ExtCtrls, cxContainer,
  cxTextEdit, cxDBEdit, cxLabel, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxCalc, cxCalendar, cxMemo;

type
  TPersonEdit = class(TFormEditAbs)
    cxLabel1: TcxLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    cxLabel2: TcxLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    cxLabel3: TcxLabel;
    cxDBTextEdit3: TcxDBTextEdit;
    cxLabel4: TcxLabel;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    cxLabel5: TcxLabel;
    cxDBLookupComboBox2: TcxDBLookupComboBox;
    cxLabel6: TcxLabel;
    cxDBCalcEdit1: TcxDBCalcEdit;
    cxLabel7: TcxLabel;
    cxDBCalcEdit2: TcxDBCalcEdit;
    cxLabel8: TcxLabel;
    cxDBDateEdit1: TcxDBDateEdit;
    cxLabel9: TcxLabel;
    cxDBCalcEdit3: TcxDBCalcEdit;
    cxLabel10: TcxLabel;
    cxDBCalcEdit4: TcxDBCalcEdit;
    cxLabel11: TcxLabel;
    cxDBCalcEdit5: TcxDBCalcEdit;
    cxLabel12: TcxLabel;
    cxDBTextEdit4: TcxDBTextEdit;
    cxLabel13: TcxLabel;
    cxDBTextEdit5: TcxDBTextEdit;
    cxLabel14: TcxLabel;
    cxDBMemo1: TcxDBMemo;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PersonEdit: TPersonEdit;

implementation

{$R *.dfm}

uses
  DataModuleUnit
  ;

end.
