unit OperationUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FormAbsUnit, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, dxBar, cxClasses, ActnList, ImgList,
  cxGridLevel, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, cxButtonEdit, cxBarEditItem, cxImageComboBox;

type
  TOperation = class(TFormListAbs)
    tvMainOperationSum: TcxGridDBColumn;
    tvMainPeriod: TcxGridDBColumn;
    tvMainExpense: TcxGridDBColumn;
    tvMainComment: TcxGridDBColumn;
    tvMainIsIncome: TcxGridDBColumn;
    cxPeriod: TcxBarEditItem;
    procedure FormShow(Sender: TObject);
    procedure cxPeriodPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
  private
    { Private declarations }
  public
    PeriodId: string;

    procedure ShowOperations;
  end;

var
  Operation: TOperation;

implementation

{$R *.dfm}

uses
  DataModuleUnit
  ,PeriodUnit
  ,PeriodEditUnit
  ;

procedure TOperation.ShowOperations;
begin
  if PeriodId = '' then
  begin
    dmPublic.tOperation.Filtered := false;
  end
  else
  begin
    dmPublic.tOperation.Filter := 'PeriodId = ''' + PeriodId + '''';

    dmPublic.tOperation.Filtered := true;
  end;
end;

procedure TOperation.FormShow(Sender: TObject);
begin
  inherited;

  PeriodId := '';

  dmPublic.PeriodId := PeriodId;
end;

procedure TOperation.cxPeriodPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var
  F: TForm;
begin
  case AButtonIndex of
  0:
    begin
      F := TPeriod.Execute(PeriodEdit, 'modal');

      F.ShowModal;

      if F.Tag = mrOk then
      begin
        PeriodId := dmPublic.tPeriodPeriodId.Value;

        cxPeriod.EditValue := dmPublic.tPeriodName.Value;
      end;
    end;
  1:
    begin
      PeriodId := '';

      cxPeriod.EditValue := '';
    end;
  end;

  dmPublic.PeriodId := PeriodId;

  ShowOperations;
end;

end.
 