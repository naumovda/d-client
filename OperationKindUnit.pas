unit OperationKindUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FormAbsUnit, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, dxBar, cxClasses, ActnList, ImgList,
  cxGridLevel, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, cxImageComboBox;

type
  TOperationKind = class(TFormListAbs)
    tvMainCode: TcxGridDBColumn;
    tvMainName: TcxGridDBColumn;
    tvMainIsPlan: TcxGridDBColumn;
    tvMainIsIncome: TcxGridDBColumn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  OperationKind: TOperationKind;

implementation

{$R *.dfm}

uses
  DataModuleUnit
  ;

end.
