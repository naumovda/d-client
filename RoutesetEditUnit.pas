unit RoutesetEditUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FormEditAbsUnit, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, dxBarDBNav, dxBar, cxClasses,
  ImgList, ActnList, dxLayoutControl, cxGridLevel, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, cxPC,
  cxContainer, dxLayoutcxEditAdapters, cxTextEdit, cxDBEdit, cxSplitter,
  cxLabel, Menus, StdCtrls, cxButtons;

type
  TRoutesetEdit = class(TFormEditAbs)
    cxName: TcxDBTextEdit;
    dxLayoutMainItem1: TdxLayoutItem;
    cxSplitterMain: TcxSplitter;
    dxLayoutDetailGroup_Root: TdxLayoutGroup;
    dxLayoutDetail: TdxLayoutControl;
    cxLabel1: TcxLabel;
    dxLayoutDetailItem1: TdxLayoutItem;
    dxLayoutDetailItem2: TdxLayoutItem;
    cxGridRoutes: TcxGrid;
    tvRoutes: TcxGridDBTableView;
    lvRoutes: TcxGridLevel;
    tvRoutesObjectCode: TcxGridDBColumn;
    tvMainCarCount: TcxGridDBColumn;
    tvMainRoute: TcxGridDBColumn;
    cxButton1: TcxButton;
    dxLayoutDetailItem3: TdxLayoutItem;
    procedure FormCreate(Sender: TObject);
    procedure acNewExecute(Sender: TObject);
    procedure tvRoutesCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RoutesetEdit: TRoutesetEdit;

implementation

uses
  DataModuleUnit
  ,RoutesetDetailEditUnit
  ;

{$R *.dfm}

procedure TRoutesetEdit.FormCreate(Sender: TObject);
begin
  FEditForm := RoutesetDetailEdit;

  inherited;
end;

procedure TRoutesetEdit.acNewExecute(Sender: TObject);
begin
  DS.DataSet.Append;
  DS.DataSet.FieldValues['RouteId'] := dmPublic.tRouteObjectIntId.Value;
  DS.DataSet.FieldValues['CarCount'] := 1; 

  RefreshInfo();

  FEditForm.ShowModal
end;

procedure TRoutesetEdit.tvRoutesCellDblClick(
  Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  acNewExecute(Sender);
end;

end.
