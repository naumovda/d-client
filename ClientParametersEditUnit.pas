unit ClientParametersEditUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FormEditAbsUnit, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, dxBarDBNav, dxBar, cxClasses,
  ImgList, ActnList, dxLayoutControl, cxGridLevel, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, cxPC,
  cxContainer, dxLayoutcxEditAdapters, cxTextEdit, cxDBEdit, cxMaskEdit,
  cxSpinEdit;

type
  TClientParametersEdit = class(TFormEditAbs)
    cxCode: TcxDBTextEdit;
    dxLayoutMainItem1: TdxLayoutItem;
    cxName: TcxDBTextEdit;
    dxLayoutMainItem2: TdxLayoutItem;
    cxValue: TcxDBTextEdit;
    dxLayoutMainItem3: TdxLayoutItem;
    cxNumber: TcxDBSpinEdit;
    dxLayoutMainItem4: TdxLayoutItem;
    dxLayoutMainGroup1: TdxLayoutGroup;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ClientParametersEdit: TClientParametersEdit;

implementation

uses
  DataModuleUnit
  ;
{$R *.dfm}

procedure TClientParametersEdit.FormShow(Sender: TObject);
begin
  inherited;

  FocusControl(cxValue);
end;

end.
