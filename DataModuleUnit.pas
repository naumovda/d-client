unit DataModuleUnit;

interface

uses
  Forms, SysUtils, Classes, DB, ADODB, Dialogs, frxClass, frxDBSet,
  frxCross;

type
  TdmPublic = class(TDataModule)
    Conn: TADOConnection;
    frxReport: TfrxReport;
    dsDocumentState: TDataSource;
    tDocumentState: TADOTable;
    tDocumentStateObjectId: TWideStringField;
    tDocumentStateObjectIntId: TAutoIncField;
    tDocumentStateDocumentStateName: TWideStringField;
    tDocumentStateDocumentIsOpen: TBooleanField;
    tDocumentStateDocumentColor: TWideStringField;
    tDocumentStateDayCount: TIntegerField;
    dsClientType: TDataSource;
    tClientType: TADOTable;
    tClientTypeObjectId: TWideStringField;
    tClientTypeObjectIntId: TAutoIncField;
    tClientTypeClientTypeName: TWideStringField;
    dsClientTypeAttribute: TDataSource;
    tClientTypeAttribute: TADOTable;
    tClientTypeAttributeObjectId: TWideStringField;
    tClientTypeAttributeObjectIntId: TAutoIncField;
    tClientTypeAttributeAttributeName: TWideStringField;
    tClientTypeAttributeClientTypeId: TIntegerField;
    tClientTypeAttributeNumber: TIntegerField;
    dsClient: TDataSource;
    tClient: TADOTable;
    tClientObjectId: TWideStringField;
    tClientObjectIntId: TAutoIncField;
    tClientClientName: TWideStringField;
    tClientClientTypeId: TIntegerField;
    tClientClientType: TStringField;
    dsClientAttributeValue: TDataSource;
    tClientAttributeValue: TADOTable;
    tClientAttributeValueObjectId: TWideStringField;
    tClientAttributeValueObjectIntId: TAutoIncField;
    tClientAttributeValueClientId: TIntegerField;
    tClientAttributeValueAttributeId: TIntegerField;
    tClientAttributeValueAttributeValue: TWideStringField;
    dsClientTypeAttributeList: TDataSource;
    tClientTypeAttributeList: TADOTable;
    tClientTypeAttributeListObjectId: TWideStringField;
    tClientTypeAttributeListObjectIntId: TAutoIncField;
    tClientTypeAttributeListAttributeName: TWideStringField;
    tClientTypeAttributeListClientTypeId: TIntegerField;
    tClientTypeAttributeListNumber: TIntegerField;
    tClientAttributeValueAttribute: TStringField;
    tClientAttributeValueNumber: TIntegerField;
    dsDocument: TDataSource;
    tDocument: TADOTable;
    tDocumentObjectId: TWideStringField;
    tDocumentObjectIntId: TAutoIncField;
    tDocumentDocumentStateId: TIntegerField;
    tDocumentComment: TWideStringField;
    tDocumentClientId: TIntegerField;
    tDocumentClient: TStringField;
    tDocumentDocumentDate: TDateTimeField;
    frxDBDocument: TfrxDBDataset;
    dsClientGroup: TDataSource;
    tClientGroup: TADOTable;
    tClientGroupObjectId: TWideStringField;
    tClientGroupObjectIntId: TAutoIncField;
    tClientGroupClientGroupName: TWideStringField;
    dsDocumentGroup: TDataSource;
    tDocumentGroup: TADOTable;
    tDocumentGroupObjectId: TWideStringField;
    tDocumentGroupObjectIntId: TAutoIncField;
    tDocumentGroupGroupName: TWideStringField;
    tClientClientGroupId: TIntegerField;
    tClientClientGroup: TStringField;
    tDocumentDocumentStartDate: TDateTimeField;
    tDocumentIsArchive: TBooleanField;
    tDocumentGroupId: TIntegerField;
    tDocumentDocumentGroup: TStringField;
    frxDBClients: TfrxDBDataset;
    tDocumentClientGroup: TStringField;
    tDocumentDaysCount: TIntegerField;
    tDocumentDocumentPaymentDate: TDateTimeField;
    dsDocumentPayment: TDataSource;
    tDocumentPayment: TADOTable;
    tDocumentPaymentObjectId: TWideStringField;
    tDocumentPaymentObjectIntId: TAutoIncField;
    tDocumentPaymentDocumentId: TIntegerField;
    tDocumentPaymentPaymentDate: TDateTimeField;
    tDocumentPaymentPaymentSum: TIntegerField;
    tDocumentPaymentPaymentDone: TBooleanField;
    tDocumentClientGroupCalc: TStringField;
    qVersion: TADOQuery;
    qCreateVersionTable: TADOQuery;
    qVersionObjectCode: TIntegerField;
    qCreatePaymentTypeTable: TADOQuery;
    dsPaymentType: TDataSource;
    tPaymentType: TADOTable;
    tPaymentTypeObjectId: TWideStringField;
    tPaymentTypeObjectIntId: TAutoIncField;
    tPaymentTypeObjectCode: TIntegerField;
    tPaymentTypeObjectName: TWideStringField;
    qCommon: TADOQuery;
    IntegerField1: TIntegerField;
    qAlterDocument: TADOQuery;
    tDocumentPaymentTypeId: TWideStringField;
    tDocumentPaymentType: TStringField;
    qAlterDocumentPayment: TADOQuery;
    tDocumentPaymentPaymentTypeId: TWideStringField;
    tDocumentPaymentPayment: TStringField;
    tPaymentTypePrefix: TWideStringField;
    qAlterDocument01: TADOQuery;
    tDocumentDocumentNumber: TWideStringField;
    qAlterDocument02: TADOQuery;
    tDocumentDocumentCode: TIntegerField;
    qGetMaxDocumentNumber: TADOQuery;
    qGetMaxDocumentNumberCode: TIntegerField;
    qGetMaxCode: TADOQuery;
    qAlterDocumentPayment01: TADOQuery;
    qAlterDocumentPayment02: TADOQuery;
    tPayment: TADOTable;
    dsPayment: TDataSource;
    tPaymentObjectId: TWideStringField;
    tPaymentObjectIntId: TAutoIncField;
    tPaymentDocumentId: TIntegerField;
    tPaymentPaymentDate: TDateTimeField;
    tPaymentPaymentSum: TIntegerField;
    tPaymentPaymentDone: TBooleanField;
    tPaymentPaymentTypeId: TWideStringField;
    tPaymentDocumentNumber: TWideStringField;
    tPaymentDocumentCode: TIntegerField;
    tDocumentDescription: TStringField;
    tPaymentDocument: TStringField;
    qAlterDocument03: TADOQuery;
    tDocumentIsApproved: TBooleanField;
    tDocumentDocumentState: TStringField;
    tDocumentPaymentPaymentState: TStringField;
    tPaymentPaymentState: TStringField;
    tDocumentPaymentDocumentNumber: TWideStringField;
    tDocumentPaymentDocumentCode: TIntegerField;
    tPaymentDescription: TStringField;
    tDocumentPaymentDescription: TStringField;
    qAlterDocument04: TADOQuery;
    qAlterDocument05: TADOQuery;
    tDocumentDiscontPercent: TFloatField;
    tDocumentDocumentSum: TFloatField;
    tDocumentDiscontSum: TFloatField;
    tDocumentDocumentSumTotal: TFloatField;
    qCreateSaldoTable: TADOQuery;
    dsSaldo: TDataSource;
    tSaldo: TADOTable;
    tSaldoObjectIntId: TAutoIncField;
    tSaldoObjectCode: TWideStringField;
    tSaldoObjectName: TWideStringField;
    tSaldoD0: TFloatField;
    tSaldoD1: TFloatField;
    tSaldoK0: TFloatField;
    tSaldoK1: TFloatField;
    tSaldoD2: TFloatField;
    tSaldoK2: TFloatField;
    tSaldoB0: TFloatField;
    tSaldoB2: TFloatField;
    tSaldoB1: TFloatField;
    frxSaldo: TfrxDBDataset;
    qCreateRouteTable: TADOQuery;
    dsRoute: TDataSource;
    tRoute: TADOTable;
    tRouteObjectIntId: TAutoIncField;
    tRouteObjectCode: TIntegerField;
    tRouteObjectId: TWideStringField;
    qCreateRoutesetTable: TADOQuery;
    tRouteset: TADOTable;
    dsRouteset: TDataSource;
    tRoutesetObjectId: TWideStringField;
    tRoutesetObjectIntId: TAutoIncField;
    tRoutesetName: TWideStringField;
    qCreateRoutesetDetailTable: TADOQuery;
    qAlterRoutesetDetailTable: TADOQuery;
    qAlterRouteTable: TADOQuery;
    tRoutesetDetail: TADOTable;
    dsRoutesetDetail: TDataSource;
    tRoutesetDetailObjectId: TWideStringField;
    tRoutesetDetailObjectIntId: TAutoIncField;
    tRoutesetDetailRoutesetId: TIntegerField;
    tRoutesetDetailCarCount: TIntegerField;
    procedure tDocumentStateAfterInsert(DataSet: TDataSet);
    procedure tClientTypeAfterInsert(DataSet: TDataSet);
    procedure tClientTypeAttributeAfterInsert(DataSet: TDataSet);
    procedure tClientAfterInsert(DataSet: TDataSet);
    procedure tClientAttributeValueAfterInsert(DataSet: TDataSet);
    procedure tDocumentAfterInsert(DataSet: TDataSet);
    procedure tClientGroupAfterInsert(DataSet: TDataSet);
    procedure tDocumentGroupAfterInsert(DataSet: TDataSet);
    procedure tDocumentCalcFields(DataSet: TDataSet);
    procedure tDocumentPaymentAfterInsert(DataSet: TDataSet);
    procedure tDocumentBeforePost(DataSet: TDataSet);
    procedure tDocumentPaymentAfterPost(DataSet: TDataSet);
    procedure tDocumentPaymentAfterDelete(DataSet: TDataSet);
    procedure tPaymentTypeAfterInsert(DataSet: TDataSet);
    procedure tDocumentPaymentCalcFields(DataSet: TDataSet);
    procedure tPaymentCalcFields(DataSet: TDataSet);
    procedure tSaldoAfterInsert(DataSet: TDataSet);
    procedure tSaldoCalcFields(DataSet: TDataSet);
    procedure tRouteAfterInsert(DataSet: TDataSet);
    procedure tRoutesetAfterInsert(DataSet: TDataSet);
    procedure tRoutePostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure tRoutesetDetailAfterInsert(DataSet: TDataSet);

  public
    Version: integer;

    AppPath: string;

    function GetOnline(): boolean;

    function SetOnline(const Value, Open, Save: boolean): boolean;

    function GetVersion(CreateTable: Boolean): integer;

    function SetVersion(aVersion: integer): integer;

    function GetDocumentPrefix(ADocumentIntId: integer;
      var ErrorCode: integer): string;

    function GetDocumentNewCode(ADocumentIntId: integer;
      var ErrorCode: integer): integer;

    function GetPaymentPrefix(APaymentIntId: integer;
      var ErrorCode: integer): string;

    function GetPaymentNewCode(APaymentIntId: integer;
      var ErrorCode: integer): integer;

    function GetRouteId(ARouteCode: integer): integer;
  end;

var
  dmPublic: TdmPublic;

function NewGUID(): string;

implementation
  uses
    IniFiles
    ,StrUtils
    ,Controls
    ,Variants
    ,DateUtils
    ;

{$R *.dfm}

function V2S(V: Variant):string;
begin
  if V = NULL then
    Result := ''
  else
    Result := V;
end;

function IsSpace(s: string):string;
begin
  if s = '' then
    Result := '0'
  else
    Result := s;
end;

function NewGUID(): string;
var
  guid: TGUID;
begin
  CreateGUID(guid);

  result := GUIDToString(guid);
end;

function TdmPublic.GetRouteId(ARouteCode: integer): integer;
begin
  dmPublic.tRoute.First;
  if dmPublic.tRoute.Locate('ObjectCode', ARouteCode, []) then
    Result := dmPublic.tRouteObjectIntId.Value
  else
    Result := -1;
end;

function TdmPublic.GetDocumentPrefix(ADocumentIntId: integer;
  var ErrorCode: integer): string;
var
  APaymentType: string;
begin
  if dmPublic.tDocument.Locate('ObjectIntId', ADocumentIntId, []) then begin
    APaymentType := dmPublic.tDocumentPaymentTypeId.Value;

    if dmPublic.tPaymentType.Locate('ObjectId', APaymentType, []) then begin
      Result := 'Д' + dmPublic.tPaymentTypePrefix.Value;

      ErrorCode := 0;
    end
    else begin
      Result := '';

      ErrorCode := -2;
    end;
  end
  else begin
    Result := '';

    ErrorCode := -1;
  end;
end;

function TdmPublic.GetPaymentPrefix(APaymentIntId: integer;
  var ErrorCode: integer): string;
var
  APaymentType: string;
begin
  dmPublic.tPayment.Close;

  dmPublic.tPayment.Open;

  if dmPublic.tPayment.Locate('ObjectIntId', APaymentIntId, []) then begin
    APaymentType := dmPublic.tPaymentPaymentTypeId.Value;

    if dmPublic.tPaymentType.Locate('ObjectId', APaymentType, []) then begin
      Result := 'А' + dmPublic.tPaymentTypePrefix.Value;

      ErrorCode := 0;
    end
    else begin
      Result := '';

      ErrorCode := -2;
    end;
  end
  else begin
    Result := '';

    ErrorCode := -1;
  end;
end;

function TdmPublic.GetDocumentNewCode(ADocumentIntId: integer;
  var ErrorCode: integer): integer;
var
  APaymentType, APrefix: string;

  QueryStr: string;

  AYear, AMaxCode: integer;
begin
  if dmPublic.tDocument.Locate('ObjectIntId', ADocumentIntId, []) then begin
    if dmPublic.tDocument.FieldValues['DocumentDate'] = NULL then
    begin
      Result := 0;

      ErrorCode := -3;
    end;

    AYear := YearOf(dmPublic.tDocumentDocumentDate.Value);

    APaymentType := dmPublic.tDocumentPaymentTypeId.Value;

    if dmPublic.tPaymentType.Locate('ObjectId', APaymentType, []) then begin
      APrefix := dmPublic.tPaymentTypePrefix.Value;

      //получаем максимальный номер документа в текущем года
      //для данной формы оплаты
      qGetMaxCode.SQL.Clear;

      QueryStr := 'select max(DocumentCode) as MaxCode from Document '
        + ' where PaymentTypeId = ''' + APaymentType + ''''
        + ' and Year(DocumentDate) = ' + IntToStr(AYear);

      qGetMaxCode.SQL.Add(QueryStr);

      qGetMaxCode.Close;

      qGetMaxCode.Open;

      qGetMaxCode.First;

      if qGetMaxCode.Eof then
        Result := 0
      else begin
        if qGetMaxCode.FieldValues['MaxCode'] = NULL then
          Result := 0
        else
          AMaxCode := qGetMaxCode.FieldValues['MaxCode'];

        Result := AMaxCode;
      end;

      ErrorCode := 0;
    end
    else begin
      Result := 0;

      ErrorCode := -2;
    end;
  end
  else begin
    Result := 0;

    ErrorCode := -1;
  end;
end;

function TdmPublic.GetPaymentNewCode(APaymentIntId: integer;
  var ErrorCode: integer): integer;
var
  APaymentType, APrefix: string;

  QueryStr: string;

  AYear, AMaxCode: integer;
begin
  if dmPublic.tPayment.Locate('ObjectIntId', APaymentIntId, []) then begin
    if dmPublic.tPayment.FieldValues['PaymentDate'] = NULL then
    begin
      Result := 0;

      ErrorCode := -3;
    end;

    AYear := YearOf(dmPublic.tPaymentPaymentDate.Value);

    APaymentType := dmPublic.tPaymentPaymentTypeId.Value;

    if dmPublic.tPaymentType.Locate('ObjectId', APaymentType, []) then begin
      //получаем максимальный номер документа в текущем года
      //для данной формы оплаты
      qGetMaxCode.SQL.Clear;

      QueryStr := 'select max(DocumentCode) as MaxCode from DocumentPayment '
        + ' where PaymentTypeId = ''' + APaymentType + ''''
        + ' and Year(PaymentDate) = ' + IntToStr(AYear);

      qGetMaxCode.SQL.Add(QueryStr);

      qGetMaxCode.Close;

      qGetMaxCode.Open;

      qGetMaxCode.First;

      if qGetMaxCode.Eof then
        Result := 0
      else begin
        if qGetMaxCode.FieldValues['MaxCode'] = NULL then
          Result := 0
        else
          AMaxCode := qGetMaxCode.FieldValues['MaxCode'];

        Result := AMaxCode;
      end;

      ErrorCode := 0;
    end
    else begin
      Result := 0;

      ErrorCode := -2;
    end;
  end
  else begin
    Result := 0;

    ErrorCode := -1;
  end;
end;

function TdmPublic.SetVersion(aVersion: integer): integer;
begin
  try
    qVersion.Close;

    qVersion.Open;

    qVersion.First;

    qVersion.Edit;

    qVersion.FieldValues['ObjectCode'] := aVersion;

    qVersion.Post;

    Version := aVersion;
  except
    Result := -1;
  end;

  Result := 0;
end;

function TdmPublic.GetVersion(CreateTable: Boolean): integer;
var
  Version: integer;
begin
  Version := 0;

  try
    qVersion.Close;

    qVersion.Open;

    qVersion.First;

    Version := qVersion.FieldValues['ObjectCode'];

    Result := Version;

    Exit;
  except
  end;

  if (Version = 0) and CreateTable then
  begin
    qCreateVersionTable.ExecSQL;

    try
      qVersion.Close;

      qVersion.Open;

      qVersion.Append;

      qVersion.FieldValues['ObjectCode'] := 0;

      qVersion.Post;

      Version := 0;
    except
      Version := -1;
    end;
  end;

  Result := Version;
end;

function TdmPublic.GetOnline(): boolean;
begin
  result := self.Conn.Connected;
end;

function TdmPublic.SetOnline(const Value, Open, Save: boolean): boolean;
begin
  AppPath := Copy(Application.ExeName, 1,
    LastDelimiter('\', Application.ExeName));

  Version := GetVersion(true);

  if Version < 0 then
  begin
    ShowMessage('Ошибка при выполнении обновления!');

    exit;
  end;

  if Version < 1 then
  begin
    qCreatePaymentTypeTable.ExecSQL;

    qCreateSaldoTable.ExecSQL;    

    qAlterDocument.ExecSQL;

    qAlterDocument01.ExecSQL;

    qAlterDocument02.ExecSQL;         

    qAlterDocument03.ExecSQL;

    qAlterDocument04.ExecSQL;

    qAlterDocument05.ExecSQL;

    qAlterDocumentPayment.ExecSQL;

    qAlterDocumentPayment01.ExecSQL;

    qAlterDocumentPayment02.ExecSQL;

    Conn.Close;

    Conn.Open;    

    tPaymentType.Open;

    tPaymentType.Append;
    tPaymentTypeObjectId.Value := '{7A43FD64-E137-4AFA-938C-0C2674706EC8}';
    tPaymentTypeObjectCode.Value := 1;
    tPaymentTypeObjectName.Value := 'наличный расчет';
    tPaymentTypePrefix.Value := 'Н-';
    tPaymentType.Post;

    tPaymentType.Append;
    tPaymentTypeObjectId.Value := '{3C35F945-7857-4490-94FB-77657678446B}';
    tPaymentTypeObjectCode.Value := 2;
    tPaymentTypeObjectName.Value := 'безналичный расчет';
    tPaymentTypePrefix.Value := 'Б-';
    tPaymentType.Post;

    tPaymentType.Append;
    tPaymentTypeObjectId.Value := '{2D72714B-9C7F-4CB8-8FE4-B58D4F5C8AC0}';
    tPaymentTypeObjectCode.Value := 3;
    tPaymentTypeObjectName.Value := 'бартер';
    tPaymentTypePrefix.Value := 'Р-';
    tPaymentType.Post;

    tPaymentType.Append;
    tPaymentTypeObjectId.Value := '{006C0FF1-EF6C-4BA9-9525-019B07E96EB0}';
    tPaymentTypeObjectCode.Value := 4;
    tPaymentTypeObjectName.Value := 'смешанный (наличный 50%/бартер 50%)';
    tPaymentTypePrefix.Value := 'С-';
    tPaymentType.Post;

    SetVersion(1);
  end;

  if Version < 2 then
  begin
    qCreateRouteTable.ExecSQL;

    qAlterRouteTable.ExecSQL;

    qCreateRoutesetTable.ExecSQL;

    qCreateRoutesetDetailTable.ExecSQL;

    qAlterRoutesetDetailTable.ExecSQL;

    Conn.Close;

    Conn.Open;

    tRoute.Open; tRoute.Append; tRouteObjectCode.Value := 33; tRoute.Post;
    tRoute.Open; tRoute.Append; tRouteObjectCode.Value := 50; tRoute.Post;
    tRoute.Open; tRoute.Append; tRouteObjectCode.Value := 58; tRoute.Post;
    tRoute.Open; tRoute.Append; tRouteObjectCode.Value := 62; tRoute.Post;
    tRoute.Open; tRoute.Append; tRouteObjectCode.Value := 65; tRoute.Post;
    tRoute.Open; tRoute.Append; tRouteObjectCode.Value := 66; tRoute.Post;
    tRoute.Open; tRoute.Append; tRouteObjectCode.Value := 68; tRoute.Post;
    tRoute.Open; tRoute.Append; tRouteObjectCode.Value := 70; tRoute.Post;
    tRoute.Open; tRoute.Append; tRouteObjectCode.Value := 71; tRoute.Post;
    tRoute.Open; tRoute.Append; tRouteObjectCode.Value := 73; tRoute.Post;
    tRoute.Open; tRoute.Append; tRouteObjectCode.Value := 75; tRoute.Post;
    tRoute.Open; tRoute.Append; tRouteObjectCode.Value := 77; tRoute.Post;
    tRoute.Open; tRoute.Append; tRouteObjectCode.Value := 80; tRoute.Post;
    tRoute.Open; tRoute.Append; tRouteObjectCode.Value := 82; tRoute.Post;

    tRoute.Open; tRoute.Append; tRouteObjectCode.Value := 85; tRoute.Post;
    tRoute.Open; tRoute.Append; tRouteObjectCode.Value := 87; tRoute.Post;
    tRoute.Open; tRoute.Append; tRouteObjectCode.Value := 90; tRoute.Post;
    tRoute.Open; tRoute.Append; tRouteObjectCode.Value := 91; tRoute.Post;
    tRoute.Open; tRoute.Append; tRouteObjectCode.Value := 95; tRoute.Post;
    tRoute.Open; tRoute.Append; tRouteObjectCode.Value := 96; tRoute.Post;
    tRoute.Open; tRoute.Append; tRouteObjectCode.Value := 99; tRoute.Post;
    tRoute.Open; tRoute.Append; tRouteObjectCode.Value := 110; tRoute.Post;
    tRoute.Open; tRoute.Append; tRouteObjectCode.Value := 138; tRoute.Post;

    tRouteset.Open;
    tRouteset.Append;
    tRoutesetName.Value := '100 маршрутных такси';
    tRouteset.Post;
    //добавляем маршруты для данного набора

    tRouteset.Open;
    tRouteset.Append;
    tRoutesetName.Value := '50 маршрутных такси';
    tRouteset.Post;
    //добавляем маршруты для данного набора


    SetVersion(2);
  end;

  tRoute.Open;

  tRouteset.Open;

  tPaymentType.Open;
  
  tDocumentState.Open;

  tClientType.Open;

  tClientGroup.Open;

  tDocumentGroup.Open;

  tClientTypeAttribute.Open;

  tClient.Open;

  tClientAttributeValue.Open;

  tDocument.Open;

  tDocumentPayment.Open;

  tPayment.Open;

  tDocument.First;

  while not tDocument.Eof do
  begin
    tDocument.Edit;

    tDocument.Post;

    tDocument.Next;
  end;

  Result := true;
end;

procedure TdmPublic.tDocumentStateAfterInsert(DataSet: TDataSet);
begin
  tDocumentStateObjectId.Value := NEWGUID;

  tDocumentStateDocumentIsOpen.Value := false;
end;

procedure TdmPublic.tClientTypeAfterInsert(DataSet: TDataSet);
begin
  tClientTypeObjectId.Value := NEWGUID;
end;

procedure TdmPublic.tClientTypeAttributeAfterInsert(DataSet: TDataSet);
begin
  tClientTypeAttributeObjectId.Value := NEWGUID;
end;

procedure TdmPublic.tClientAfterInsert(DataSet: TDataSet);
begin
  tClientObjectId.Value := NEWGUID;

  tClient.FieldValues['ClientTypeId'] := NULL;

  tClient.FieldValues['ClientGroupId'] := NULL;
end;

procedure TdmPublic.tClientAttributeValueAfterInsert(DataSet: TDataSet);
begin
  tClientAttributeValueObjectId.Value := NEWGUID;
end;

procedure TdmPublic.tDocumentAfterInsert(DataSet: TDataSet);
begin
  tDocumentObjectId.Value := NEWGUID;

  tDocumentDocumentDate.Value := Now;

  tDocumentIsArchive.Value := false;

  tDocument.FieldValues['GroupId'] := NULL;
end;

procedure TdmPublic.tClientGroupAfterInsert(DataSet: TDataSet);
begin
  tClientGroupObjectId.Value := NEWGUID;
end;

procedure TdmPublic.tDocumentGroupAfterInsert(DataSet: TDataSet);
begin
  tDocumentGroupObjectId.Value := NEWGUID;
end;

procedure TdmPublic.tDocumentCalcFields(DataSet: TDataSet);
var
  d1, d2: TDateTime;
begin
  try
  d1 := tDocumentDocumentDate.Value;

  d2 := tDocumentDocumentStartDate.Value;

  if (d1 = 0) or (d2=0) then
    tDocumentDaysCount.Value := 0
  else
    tDocumentDaysCount.Value := round(d1 - d2);
  except
  end;

  tDocumentClientGroupCalc.Value := tDocumentClientGroup.Value;

  tDocumentDescription.Value := '№' + tDocumentDocumentNumber.Value
    + ' от ' + DateToStr(tDocumentDocumentStartDate.Value);

  if tDocumentIsApproved.Value then
    tDocumentDocumentState.Value := 'проведен'
  else
    tDocumentDocumentState.Value := 'не проведен';

  tDocumentDiscontSum.Value := tDocumentDocumentSum.Value *
    tDocumentDiscontPercent.Value / 100;

  tDocumentDocumentSumTotal.Value := tDocumentDocumentSum.Value -
    tDocumentDiscontSum.Value;
end;

procedure TdmPublic.tDocumentPaymentAfterInsert(DataSet: TDataSet);
var
  PaymentTypeId: string;

  PaymentCode: integer;
begin
  tDocumentPaymentObjectId.Value := NEWGUID;

  tDocumentPaymentPaymentDate.Value := Now + 30;

  tDocumentPaymentPaymentSum.Value := 0;

  tDocumentPaymentPaymentDone.Value := false;

  PaymentTypeId := dmPublic.tDocumentPaymentTypeId.Value;

  if not dmPublic.tPaymentType.Locate('ObjectId', PaymentTypeId, []) then
    exit;

  PaymentCode := dmPublic.tPaymentTypeObjectCode.Value;

  if PaymentCode <> 4 then
    tDocumentPaymentPaymentTypeId.Value := PaymentTypeId;
end;

procedure TdmPublic.tDocumentBeforePost(DataSet: TDataSet);
var
  HasPayment: Boolean;

  PaymentDate: TDateTime;
begin
  HasPayment := false;

  tDocumentPayment.First;

  while not tDocumentPayment.Eof do
  begin
    if tDocumentPaymentPaymentDone.Value = false then
    begin
      HasPayment := true;

      PaymentDate := tDocumentPaymentPaymentDate.Value;

      break;
    end;

    tDocumentPayment.Next;
  end;

  if HasPayment then
    tDocumentDocumentPaymentDate.Value := PaymentDate
  else
    tDocument.FieldValues['DocumentPaymentDate'] :=
      tDocumentDocumentDate.Value;

end;

procedure TdmPublic.tDocumentPaymentAfterPost(DataSet: TDataSet);
begin
  tDocument.Edit;

  tDocument.Post;
end;

procedure TdmPublic.tDocumentPaymentAfterDelete(DataSet: TDataSet);
begin
  tDocument.Edit;

  tDocument.Post;
end;

procedure TdmPublic.tPaymentTypeAfterInsert(DataSet: TDataSet);
begin
  tPaymentTypeObjectId.Value := NEWGUID;
end;

procedure TdmPublic.tDocumentPaymentCalcFields(DataSet: TDataSet);
begin
  if tDocumentPaymentPaymentDone.Value then
    tDocumentPaymentPaymentState.Value := 'выполнен'
  else
    tDocumentPaymentPaymentState.Value := 'не выполнен';

  tDocumentPaymentDescription.Value := '№' + tDocumentPaymentDocumentNumber.Value
    + ' от ' + DateToStr(tDocumentPaymentPaymentDate.Value);
end;

procedure TdmPublic.tPaymentCalcFields(DataSet: TDataSet);
begin
  if tPaymentPaymentDone.Value then
    tPaymentPaymentState.Value := 'выполнен'
  else
    tPaymentPaymentState.Value := 'не выполнен';

  tPaymentDescription.Value := '№' + tPaymentDocumentNumber.Value
    + ' от ' + DateToStr(tPaymentPaymentDate.Value);
end;

procedure TdmPublic.tSaldoAfterInsert(DataSet: TDataSet);
begin
  tSaldoD0.Value := 0;

  tSaldoD1.Value := 0;

  tSaldoK0.Value := 0;

  tSaldoK1.Value := 0;
end;

procedure TdmPublic.tSaldoCalcFields(DataSet: TDataSet);
begin
  tSaldoB0.Value := tSaldoK0.Value - tSaldoD0.Value;

  tSaldoB1.Value := tSaldoK1.Value - tSaldoD1.Value;

  tSaldoD2.Value := tSaldoD1.Value + tSaldoD0.Value;

  tSaldoK2.Value := tSaldoK1.Value + tSaldoK0.Value;

  tSaldoB2.Value := tSaldoB1.Value + tSaldoB0.Value;
end;

procedure TdmPublic.tRouteAfterInsert(DataSet: TDataSet);
begin
  tRouteObjectId.Value := NEWGUID;
end;

procedure TdmPublic.tRoutesetAfterInsert(DataSet: TDataSet);
begin
  tRoutesetObjectId.Value := NEWGUID;
end;

procedure TdmPublic.tRoutePostError(DataSet: TDataSet; E: EDatabaseError;
  var Action: TDataAction);
begin
  ShowMessage('Введен номер маршрута, который уже имеется в базе данных! Измените номер или отмените ввод.');

  Action := daAbort;
end;

procedure TdmPublic.tRoutesetDetailAfterInsert(DataSet: TDataSet);
begin
  tRoutesetDetailObjectId.Value := NEWGUID;
end;

end.
