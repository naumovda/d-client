unit SaldoUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FormReportAbsUnit, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, ImgList, dxBar, cxClasses, ActnList,
  cxSplitter, dxLayoutControl, cxGridLevel, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  cxContainer, dxLayoutcxEditAdapters, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxCalendar, cxDBEdit, cxButtonEdit, DateUtils,
  cxGridBandedTableView, cxGridDBBandedTableView;

type
  TSaldo = class(TFormReportAbs)
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutGroup3: TdxLayoutGroup;
    dxLayoutGroup4: TdxLayoutGroup;
    dxLayoutGroup5: TdxLayoutGroup;
    cxDateStart: TcxDateEdit;
    dxLayoutItem1: TdxLayoutItem;
    cxDateEnd: TcxDateEdit;
    dxLayoutItem2: TdxLayoutItem;
    cxClient: TcxButtonEdit;
    dxLayoutItem3: TdxLayoutItem;
    cxDocument: TcxButtonEdit;
    dxLayoutItem4: TdxLayoutItem;
    cxPaymentType: TcxButtonEdit;
    dxLayoutItem5: TdxLayoutItem;
    cxDetailType: TcxComboBox;
    dxLayoutItem6: TdxLayoutItem;
    dxLayoutSeparatorItem1: TdxLayoutSeparatorItem;
    tvGridTable: TcxGridDBBandedTableView;
    tvGridTableObjectCode: TcxGridDBBandedColumn;
    tvGridTableObjectName: TcxGridDBBandedColumn;
    tvGridTableD0: TcxGridDBBandedColumn;
    tvGridTableD1: TcxGridDBBandedColumn;
    tvGridTableK0: TcxGridDBBandedColumn;
    tvGridTableK1: TcxGridDBBandedColumn;
    tvGridTableD2: TcxGridDBBandedColumn;
    tvGridTableK2: TcxGridDBBandedColumn;
    tvGridTableB0: TcxGridDBBandedColumn;
    tvGridTableB2: TcxGridDBBandedColumn;
    tvGridTableB1: TcxGridDBBandedColumn;
    procedure FormShow(Sender: TObject);
    procedure acResetExecute(Sender: TObject);
    procedure acRefreshExecute(Sender: TObject);
    procedure cxPaymentTypePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxClientPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxDocumentPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure acExcelExecute(Sender: TObject);
  private
    { Private declarations }
  public
    DateStart, DateEnd: TDateTime;

    DocumentId, ClientId: integer;

    PaymentTypeId: string;

    procedure CalcSaldo;
  end;

var
  Saldo: TSaldo;

implementation

{$R *.dfm}

uses
  DataModuleUnit
  ,PaymentTypeUnit
  ,PaymentTypeEditUnit  
  ,ClientUnit
  ,DocumentUnit
  ,ClientEditUnit
  ,DocumentEditUnit
  ;

procedure TSaldo.FormShow(Sender: TObject);
begin
  inherited;

  acReset.Execute;
end;

procedure TSaldo.acResetExecute(Sender: TObject);
begin
  inherited;

  DocumentId := -1;

  ClientId := -1;

  PaymentTypeId := '';

  cxDateStart.EditValue := Now - 30;

  cxDateEnd.EditValue := Now;

  cxPaymentType.EditValue := '';

  cxClient.EditValue := '';

  cxDocument.EditValue := '';

  cxDetailType.ItemIndex := 0;  
end;

procedure TSaldo.acRefreshExecute(Sender: TObject);
begin
  inherited;

  CalcSaldo;

  dmPublic.tSaldo.Close;

  dmPublic.tSaldo.Open;
end;

procedure TSaldo.CalcSaldo();
var
  id, name, filter: string;

  sD0, sD1, sK0, sK1: real;

  procedure AddCode(AID, AName: string);
  begin
    if not dmPublic.tSaldo.Locate('ObjectCode', AID, []) then
      begin
        dmPublic.tSaldo.Append;

        dmPublic.tSaldoObjectCode.Value := AID;

        dmPublic.tSaldoObjectName.Value := AName;

        dmPublic.tSaldo.Post;
      end;
  end;

  procedure AddSum(AID, AName: string; D0, K0, D1, K1: real);
  begin
    AddCode(AID, AName);

    dmPublic.tSaldo.Edit;

    dmPublic.tSaldoD0.Value := dmPublic.tSaldoD0.Value + D0;

    dmPublic.tSaldoD1.Value := dmPublic.tSaldoD1.Value + D1;

    dmPublic.tSaldoK0.Value := dmPublic.tSaldoK0.Value + K0;

    dmPublic.tSaldoK1.Value := dmPublic.tSaldoK1.Value + K1;

    dmPublic.tSaldo.Post;
  end;

begin
  DateStart := cxDateStart.EditValue;

  DateEnd := cxDateEnd.EditValue;

  dmPublic.tSaldo.Close;

  dmPublic.tSaldo.Open;

  dmPublic.tSaldo.First;

  while not dmPublic.tSaldo.Eof do
    dmPublic.tSaldo.Delete;

  dmPublic.tDocument.Filtered := false;

  filter := '';

  if PaymentTypeId <> '' then
    filter := ' PaymentTypeId = ''' + PaymentTypeId + '''';

  if ClientId <> -1 then
  begin
    if filter <> '' then filter := filter + ' and ';

    filter := ' ClientId = ' + IntToStr(ClientId);
  end;

  if DocumentId <> -1 then
  begin
    if filter <> '' then filter := filter + ' and ';

    filter := ' ObjectIntId = ' + IntToStr(DocumentId);
  end;

  dmPublic.tDocument.Filter := filter;

  if filter <> '' then
    dmPublic.tDocument.Filtered := true;

  //расчет сальдо
  dmPublic.tDocument.First;

  while not dmPublic.tDocument.Eof do
  begin
    //только проведенные документы
    if dmPublic.tDocumentIsApproved.Value then
    begin
      //определим код и наименование детализации
      id := ''; name := '';

      sD0 := 0; sD1 := 0; sK0 :=0; sK1 := 0;

      //расчет суммм
      if dmPublic.tDocumentDocumentStartDate.Value < DateStart then
        sD0 := dmPublic.tDocumentDocumentSumTotal.Value
      else
        if dmPublic.tDocumentDocumentStartDate.Value < DateEnd then
          sD1 := dmPublic.tDocumentDocumentSumTotal.Value;

      case cxDetailType.ItemIndex of
      //без детализации
      0:
        AddSum(id, name, sD0, sK0, sD1, sK1);
      //по договорам
      1:
        begin
          id := dmPublic.tDocumentObjectId.Value;

          name := dmPublic.tDocumentDescription.Value;

          AddSum(id, name, sD0, sK0, sD1, sK1);
        end;
      //по клиентам
      2:
        if dmPublic.tClient.Locate('ObjectIntId',
          dmPublic.tDocumentClientId.Value, []) then
        begin
          id := dmPublic.tClientObjectId.Value;

          name := dmPublic.tDocumentClient.Value;

          AddSum(id, name, sD0, sK0, sD1, sK1);
        end;
      //по видам оплаты
      3:
        begin
          id := dmPublic.tDocumentPaymentTypeId.Value;

          name := dmPublic.tDocumentPaymentType.Value;

          if id <> '{006C0FF1-EF6C-4BA9-9525-019B07E96EB0}' then
            AddSum(id, name, sD0, sK0, sD1, sK1)
          else begin
            AddSum('{7A43FD64-E137-4AFA-938C-0C2674706EC8}', 'наличный расчет',
              sD0/2, sK0, sD1/2, sK1);

            AddSum('{2D72714B-9C7F-4CB8-8FE4-B58D4F5C8AC0}', 'бартер',
              sD0/2, sK0, sD1/2, sK1);
          end;
        end;
      end;

      //пробегаем по всем актам оплаты
      dmPublic.tDocumentPayment.First;

      while not dmPublic.tDocumentPayment.Eof do
      begin
        //только проведенные оплаты
        if dmPublic.tDocumentPaymentPaymentDone.Value then
        begin
          //определим код и наименование детализации акта
          //по акту для смешанного типа оплаты
          if (dmPublic.tDocumentPaymentTypeId.Value = '{006C0FF1-EF6C-4BA9-9525-019B07E96EB0}') 
            and (cxDetailType.ItemIndex = 3) then
            begin
              id := dmPublic.tDocumentPaymentPaymentTypeId.Value;

              name := dmPublic.tDocumentPaymentPayment.Value;
            end;

          sD0 := 0; sD1 := 0; sK0 :=0; sK1 := 0;

          // расчет суммм
          if dmPublic.tDocumentPaymentPaymentDate.Value < DateStart then
            sK0 := dmPublic.tDocumentPaymentPaymentSum.Value
          else
            if dmPublic.tDocumentPaymentPaymentDate.Value < DateEnd then
              sK1 := dmPublic.tDocumentPaymentPaymentSum.Value;

          AddSum(id, name, sD0, sK0, sD1, sK1);
        end;

        dmPublic.tDocumentPayment.Next;
      end;
    end;

    dmPublic.tDocument.Next;
  end;

  dmPublic.tDocument.Filtered := false;
end;

procedure TSaldo.cxPaymentTypePropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var
  F: TForm;
begin
  case AButtonIndex of
  0:
    begin
      F := TPaymentType.Execute(PaymentTypeEdit, 'modal');

      F.ShowModal;

      if F.Tag = mrOk then
      begin
        PaymentTypeId := dmPublic.tPaymentTypeObjectId.Value;

        cxPaymentType.EditValue := dmPublic.tPaymentTypeObjectName.Value;
      end;
    end;
  1:
    begin
      PaymentTypeId := '';

      cxPaymentType.EditValue := '';
    end
  end;
end;

procedure TSaldo.cxClientPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var
  F: TForm;
begin
  case AButtonIndex of
  0:
    begin
      F := TClient.Execute(ClientEdit, 'modal');

      F.ShowModal;

      if F.Tag = mrOk then
      begin
        ClientId := dmPublic.tClientObjectIntId.Value;

        cxClient.EditValue := dmPublic.tClientClientName.Value;
      end;
    end;
  1:
    begin
      ClientId := -1;

      cxClient.EditValue := '';
    end
  end;
end;

procedure TSaldo.cxDocumentPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var
  F: TForm;
begin
  case AButtonIndex of
  0:
    begin
      F := TDocuments.Execute(DocumentEdit, 'modal');

      F.ShowModal;

      if F.Tag = mrOk then
      begin
        DocumentId := dmPublic.tDocumentObjectIntId.Value;

        cxDocument.EditValue := dmPublic.tDocumentDescription.Value;
      end;
    end;
  1:
    begin
      DocumentId := -1;

      cxDocument.EditValue := '';
    end
  end;
end;

procedure TSaldo.acExcelExecute(Sender: TObject);
begin
  inherited;

  dmPublic.frxReport.Script.Clear;

  dmPublic.frxReport.Script.AddVariable('DateStart', 'String',
    FormatDateTime('dd/mm/yyyy', cxDateStart.EditValue) );

  dmPublic.frxReport.Script.AddVariable('DateEnd', 'String',
    FormatDateTime('dd/mm/yyyy', cxDateEnd.EditValue) );

  dmPublic.frxReport.Script.AddVariable('DetailType', 'String',
    cxDetailType.EditValue);

  if PaymentTypeId = '' then
    dmPublic.frxReport.Script.AddVariable('PaymentType', 'String',
      'не указан')
  else
    dmPublic.frxReport.Script.AddVariable('PaymentType', 'String',
      cxPaymentType.EditValue);

  if ClientId = -1 then
    dmPublic.frxReport.Script.AddVariable('Client', 'String',
      'не указан')
  else
    dmPublic.frxReport.Script.AddVariable('Client', 'String',
      cxClient.EditValue);

  if DocumentId = -1 then
    dmPublic.frxReport.Script.AddVariable('Document', 'String',
      'не указан')
  else
    dmPublic.frxReport.Script.AddVariable('Document', 'String',
      cxDocument.EditValue);

  dmPublic.frxReport.LoadFromFile('Saldo.fr3');

  dmPublic.frxReport.ShowReport();
end;

end.
