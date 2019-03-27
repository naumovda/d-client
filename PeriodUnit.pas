unit PeriodUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FormAbsUnit, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, dxBar, cxClasses, ActnList, ImgList,
  cxGridLevel, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, cxImageComboBox;

type
  TPeriod = class(TFormListAbs)
    tvMainDateStart: TcxGridDBColumn;
    tvMainDateEnd: TcxGridDBColumn;
    tvMainIsOpen: TcxGridDBColumn;
    tvMainName: TcxGridDBColumn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Period: TPeriod;

implementation

{$R *.dfm}

uses
  DataModuleUnit
  ;

end.
