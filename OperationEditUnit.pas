unit OperationEditUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FormEditAbsUnit, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, dxBarDBNav, dxBar, cxClasses,
  ImgList, ActnList, cxGridLevel, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxPC, ExtCtrls, cxContainer,
  cxTextEdit, cxDBEdit, cxLabel, cxMaskEdit, cxButtonEdit, cxDropDownEdit,
  cxCalendar, cxLookupEdit, cxDBLookupEdit, cxDBExtLookupComboBox, cxMemo,
  cxCalc, Menus, StdCtrls, cxButtons;

type
  TOperationEdit = class(TFormEditAbs)
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxExpense: TcxDBButtonEdit;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    cxLabel5: TcxLabel;
    cxComment: TcxDBMemo;
    cxPeriod: TcxDBButtonEdit;
    cxOperationKind: TcxDBButtonEdit;
    cxSum: TcxDBCalcEdit;
    tvMainRatioValue: TcxGridDBColumn;
    tvMainPerson: TcxGridDBColumn;
    tvMainSumValue: TcxGridDBColumn;
    acCalcRatio: TAction;
    cxCalcTotal: TcxButton;
    acCalcSum: TAction;
    dxBarButton7: TdxBarButton;
    dxBarButton8: TdxBarButton;
    procedure cxPeriodPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxExpensePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxOperationKindPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxCalcTotalClick(Sender: TObject);
    procedure acCalcRatioExecute(Sender: TObject);
    procedure acCalcSumExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  OperationEdit: TOperationEdit;

implementation

{$R *.dfm}

uses
  DataModuleUnit
  ,PeriodUnit
  ,PeriodEditUnit
  ,ExpenseUnit
  ,ExpenseEditUnit
  ,OperationKindUnit
  ,OperationKindEditUnit
  ;

procedure TOperationEdit.cxPeriodPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var
  F: TForm;
begin
  F := TPeriod.Execute(PeriodEdit, 'modal');

  F.ShowModal;

  if F.Tag = mrOk then
  begin
    dmPublic.tOperation.Edit;

    dmPublic.tOperationPeriodId.Value := dmPublic.tPeriodPeriodId.Value;
  end;
end;

procedure TOperationEdit.cxExpensePropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var
  F: TForm;
begin
  F := TExpense.Execute(ExpenseEdit, 'modal');

  F.ShowModal;

  if F.Tag = mrOk then
  begin
    dmPublic.tOperation.Edit;

    dmPublic.tOperationExpenseId.Value := dmPublic.tExpenseExpenseId.Value;
  end;
end;

procedure TOperationEdit.cxOperationKindPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var
  F: TForm;
begin
  F := TOperationKind.Execute(OperationKindEdit, 'modal');

  F.ShowModal;

  if F.Tag = mrOk then
  begin
    dmPublic.tOperation.Edit;

    dmPublic.tOperationOperationKindId.Value := dmPublic.tOperationKindOperationKindId.Value;
  end;
end;

procedure TOperationEdit.cxCalcTotalClick(Sender: TObject);
var
  s: real;
begin
  s := 0;

  dmPublic.tRatio.First;

  while not dmPublic.tRatio.Eof do
  begin
    try
      s := s + dmPublic.tRatioSumValue.Value;
    except
    end;

    dmPublic.tRatio.Next;
  end;

  dmPublic.tOperation.Edit;

  dmPublic.tOperationOperationSum.Value := s;
end;

procedure TOperationEdit.acCalcRatioExecute(Sender: TObject);
var
  s: real;
begin
  s := dmPublic.tOperationOperationSum.Value;

  if s <> 0 then
  begin
    dmPublic.tRatio.First;

    while not dmPublic.tRatio.Eof do
    begin
      dmPublic.tRatio.Edit;

      dmPublic.tRatioRatioValue.Value := dmPublic.tRatioSumValue.Value / dmPublic.tOperationOperationSum.Value; 

      dmPublic.tRatio.Post;

      dmPublic.tRatio.Next;
    end;
  end;
end;

procedure TOperationEdit.acCalcSumExecute(Sender: TObject);
var
  s: real;

  n: real;
begin
  s := dmPublic.tOperationOperationSum.Value;

  n := 0;

  dmPublic.tRatio.First;

  while not dmPublic.tRatio.Eof do
  begin
    n := n + dmPublic.tRatioRatioValue.Value;

    dmPublic.tRatio.Next;
  end;

  dmPublic.tRatio.First;

  while not dmPublic.tRatio.Eof do
  begin
    dmPublic.tRatio.Edit;

    if n = 0 then
      dmPublic.tRatioSumValue.Value := 0
    else
      dmPublic.tRatioSumValue.Value := dmPublic.tOperationOperationSum.Value * dmPublic.tRatioRatioValue.Value / n;

    dmPublic.tRatio.Post;

    dmPublic.tRatio.Next;
  end;

end;

end.
 