unit PersonUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FormAbsUnit, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, dxBar, cxClasses, ActnList, ImgList,
  cxGridLevel, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid;

type
  TPerson = class(TFormListAbs)
    tvMainPersonFirstName: TcxGridDBColumn;
    tvMainPersonSecondName: TcxGridDBColumn;
    tvMainPersonLastName: TcxGridDBColumn;
    tvMainPost: TcxGridDBColumn;
    tvMainHireKind: TcxGridDBColumn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Person: TPerson;

implementation

{$R *.dfm}

uses
  DataModuleUnit
  ;

end.
