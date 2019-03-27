unit ExpenseEditUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FormEditAbsUnit, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, dxBarDBNav, dxBar, cxClasses,
  ImgList, ActnList, cxGridLevel, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxPC, ExtCtrls, cxContainer,
  cxCheckBox, cxDBEdit, cxMaskEdit, cxButtonEdit, cxTextEdit, cxLabel,
  cxGroupBox;

type
  TExpenseEdit = class(TFormEditAbs)
    cxLabel1: TcxLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    cxLabel2: TcxLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    cxLabel3: TcxLabel;
    cxExpense: TcxDBButtonEdit;
    cxDBCheckBox1: TcxDBCheckBox;
    cxGroupBox1: TcxGroupBox;
    cxDBCheckBox2: TcxDBCheckBox;
    cxDBCheckBox3: TcxDBCheckBox;
    cxDBCheckBox4: TcxDBCheckBox;
    cxDBCheckBox5: TcxDBCheckBox;
    procedure cxExpensePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ExpenseEdit: TExpenseEdit;

implementation

{$R *.dfm}

uses
  DataModuleUnit
  ,ExpenseListUnit
  ;

procedure TExpenseEdit.cxExpensePropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var
  F: TForm;
begin
  case AButtonIndex of
  0:
    begin
      F := TExpenseList.Execute(nil, 'modal');

      F.ShowModal;

      if F.Tag =mrOk then
      begin
        dmPublic.tExpense.Edit;

        dmPublic.tExpenseParentExpenseId.Value := dmPublic.tExpenseListExpenseId.Value;
      end;
    end;
  1:
    begin
      dmPublic.tExpense.Edit;

      dmPublic.tExpense.FieldValues['ParentExpenseId'] := NULL;
    end;
  end;
end;

end.
 