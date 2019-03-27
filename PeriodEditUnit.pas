unit PeriodEditUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FormEditAbsUnit, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, dxBarDBNav, dxBar, cxClasses,
  ImgList, ActnList, cxGridLevel, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxPC, ExtCtrls, cxContainer,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, cxDBEdit, cxCheckBox,
  cxLabel;

type
  TPeriodEdit = class(TFormEditAbs)
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxDBCheckBox1: TcxDBCheckBox;
    cxDBDateEdit1: TcxDBDateEdit;
    cxDBDateEdit2: TcxDBDateEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PeriodEdit: TPeriodEdit;

implementation

{$R *.dfm}

uses
  DataModuleUnit
  ;

end.
