unit DocumentPartEditUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FormEditAbsUnit, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, dxBarDBNav, dxBar, cxClasses,
  ImgList, ActnList, cxGridLevel, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxPC, ExtCtrls, cxCalendar,
  cxCalc, cxContainer, cxMemo, cxDBEdit, cxTextEdit, cxLabel;

type
  TDocumentPartEdit = class(TFormEditAbs)
    tvMainServiceDate: TcxGridDBColumn;
    tvMainServiceSum: TcxGridDBColumn;
    tvMainPerson: TcxGridDBColumn;
    tvMainServiceKind: TcxGridDBColumn;
    cxLabel1: TcxLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    cxLabel2: TcxLabel;
    cxDBMemo1: TcxDBMemo;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DocumentPartEdit: TDocumentPartEdit;

implementation

{$R *.dfm}

uses
  DataModuleUnit
  ;

end.
