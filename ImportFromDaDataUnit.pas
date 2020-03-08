unit ImportFromDaDataUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FormReportAbsUnit, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, ImgList, dxBar, cxClasses, ActnList,
  cxSplitter, dxLayoutControl, cxGridLevel, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  cxContainer, dxLayoutcxEditAdapters, cxTextEdit, dxmdaset, Menus,
  StdCtrls, cxButtons, cxMemo, xmldom, XMLIntf, msxmldom, XMLDoc;

const
  DIR = 'suggest\';
  SCRIPT_NAME = 'suggest.vbs';

type
  TImportFromDaData = class(TFormReportAbs)
    cxCode: TcxTextEdit;
    dxLayoutItem1: TdxLayoutItem;
    dxData: TdxMemData;
    dxLayoutSeparatorItem1: TdxLayoutSeparatorItem;
    cxButtonRefresh: TcxButton;
    dxLayoutItem2: TdxLayoutItem;
    dxLayoutGroup2: TdxLayoutGroup;
    cxLog: TcxMemo;
    dxLayoutItem3: TdxLayoutItem;
    DS: TDataSource;
    dxDataRowNumber: TIntegerField;
    dxDataINN: TStringField;
    dxDataName: TStringField;
    dxDataAddress: TStringField;
    dxDataType: TStringField;
    dxDataKPP: TStringField;
    dxDataOGRN: TStringField;
    dxDataOKVED: TStringField;
    tvMainRecId: TcxGridDBColumn;
    tvMainRowNumber: TcxGridDBColumn;
    tvMainINN: TcxGridDBColumn;
    tvMainName: TcxGridDBColumn;
    tvMainAddress: TcxGridDBColumn;
    tvMainType: TcxGridDBColumn;
    tvMainKPP: TcxGridDBColumn;
    tvMainOGRN: TcxGridDBColumn;
    tvMainOKVED: TcxGridDBColumn;
    dxBarManagerBarBottom: TdxBar;
    dxBarButton5: TdxBarButton;
    XMLDocument: TXMLDocument;
    dxDataFNameOPF: TStringField;
    dxDataSNameOPF: TStringField;
    dxDataFName: TStringField;
    dxDataSName: TStringField;
    procedure FormShow(Sender: TObject);
    procedure acRefreshExecute(Sender: TObject);
    procedure acResetExecute(Sender: TObject);
    procedure acExcelExecute(Sender: TObject);
    procedure acCloseExecute(Sender: TObject);
  public
    procedure AddParameter(Number: integer; ObjectCode, ObjectName,
      ObjectValue: string);
    procedure ClearParameters();
  end;

var
  ImportFromDaData: TImportFromDaData;

implementation

uses
  DataModuleUnit
  ,ExtActns
  ,ProcessMessage
  ;

{$R *.dfm}

procedure TImportFromDaData.FormShow(Sender: TObject);
begin
  inherited;

  cxCode.EditValue := '';

  acResetExecute(Sender);
end;

procedure TImportFromDaData.acRefreshExecute(Sender: TObject);
var
  fr: TFileRun;

  cmd, inn, msg: string;

  value: string;

  res: WideString;

  root, node, data, address: IXMLNode;
  i, j, k: integer;

  success: boolean;
begin
  XMLDocument.Active := false;
  
  acResetExecute(Sender);

  if cxCode.EditValue = '' then
  begin
    msg := 'Введите ИНН для поиска реквизитов организации!';
    cxLog.Lines.Add(msg);
    ShowMessage(msg);

    exit;
  end;

  fmProcessMsg.StartMessage('Выполняется соединение с сервером и загрузка данных...');

  inn := cxCode.EditValue;

  cmd := Application.ExeName;
  cmd := Copy(cmd, 1, LastDelimiter('\', cmd));

  fr := TFileRun.Create(self);
  fr.FileName  :=  cmd + DIR + SCRIPT_NAME;
  fr.Parameters :=  inn;
  fr.ShowCmd := scHide;

  if fr.Execute then
  begin
    fr.Free;
    
//    try
      k := 0;
      success := false;
      repeat
        fmProcessMsg.EndMessage;
        k := k + 1;
        try
          fmProcessMsg.StartMessage('Чтение файла ' + DIR + inn
            + '.xml, попытка №' + IntToStr(k));
          Sleep(1000);
          XMLDocument.FileName := DIR + inn + '.xml';
          XMLDocument.Active := true;
          success := true;
        except
          //on E: Exception do ShowMessage(E.Message);
          if k = 10 then
          begin
            ShowMessage('Не удалось прочитать файл ' + DIR + inn + '.xml');
            exit;
          end;
        end;
      until success;

      fmProcessMsg.EndMessage;

      root := XMLDocument.DocumentElement;

      if root.NodeName = 'ConnectionError' then
      begin
        msg := 'Ошибка соединения с сервером suggestions.dadata.ru.' + #10#13
          + 'Проверьте соединение с сетью Internet.';
        cxLog.Lines.Add(msg);
        ShowMessage(msg);
        exit;
      end;

      msg := 'Данные загружены в файл ' + DIR + inn + '.xml';
      cxLog.Lines.Add(msg);

      for i := 0 to root.ChildNodes.Count-1 do
      begin
        dxData.Open;
        dxData.Append;        
        dxDataRowNumber.Value := i + 1;

        //парсим узел с подсказкой
        node := root.ChildNodes[i];

        value := node.ChildNodes['unrestricted_value'].Text;
        cxLog.Lines.Add('Наименование: ' + value);
        dxDataName.Value := value;

        value := node.ChildNodes['name'].ChildNodes['full_with_opf'].Text;
        cxLog.Lines.Add('Полное наименование с ОПФ: ' + value);
        dxDataFNameOPF.Value := value;

        value := node.ChildNodes['name'].ChildNodes['short_with_opf'].Text;
        cxLog.Lines.Add('Сокращенное наименование с ОПФ: ' + value);
        dxDataSNameOPF.Value := value;

        value := node.ChildNodes['name'].ChildNodes['full'].Text;
        cxLog.Lines.Add('Полное наименование без ОПФ: ' + value);
        dxDataFName.Value := value;

        value := node.ChildNodes['name'].ChildNodes['short'].Text;
        cxLog.Lines.Add('Скоращенное наименование без ОПФ: ' + value);
        dxDataSName.Value := value;

        data := node.ChildNodes['data'];

        value := data.ChildNodes['type'].Text;
        cxLog.Lines.Add('Тип (LEGAL - ООО, INDIVIDUAL - ИП): ' + value);
        dxDataType.Value := value;

        value := data.ChildNodes['inn'].Text;
        cxLog.Lines.Add('ИНН: '+ value);
        dxDataINN.Value := value;

        value := data.ChildNodes['ogrn'].Text;
        cxLog.Lines.Add('ОГРН: '+ value);
        dxDataOGRN.Value := value;

        value := data.ChildNodes['okved'].Text;
        cxLog.Lines.Add('ОКВЭД: '+ value);
        dxDataOKVED.Value := value;

        address := data.ChildNodes['address'];
        value := address.ChildNodes['unrestricted_value'].Text;
        dxDataAddress.Value := value;
        cxLog.Lines.Add('Адрес: ' + value);

        dxData.Post;
      end;
      
      dxData.First;
  end
  else
  begin
    fmProcessMsg.EndMessage;

    msg := 'Ошибка при запуске скрипта! Обратитесь к администратору.';
    cxLog.Lines.Add(msg);
  end;
end;

procedure TImportFromDaData.acResetExecute(Sender: TObject);
begin
  inherited;

  cxLog.Clear;

  dxData.Close;
end;

procedure TImportFromDaData.ClearParameters();
begin
  dmPublic.tClientParameters.First;
  while not dmPublic.tClientParameters.Eof do
    dmPublic.tClientParameters.Delete;
end;

procedure TImportFromDaData.AddParameter(Number: integer; ObjectCode, ObjectName,
  ObjectValue: string);
begin
  dmPublic.tClientParameters.Append;
  dmPublic.tClientParametersRowNumber.Value := Number;
  dmPublic.tClientParametersObjectCode.Value := ObjectCode;
  dmPublic.tClientParametersObjectName.Value := ObjectName;
  dmPublic.tClientParametersObjectValue.Value := ObjectValue;
  dmPublic.tClientParameters.Post;
end;

procedure TImportFromDaData.acExcelExecute(Sender: TObject);
var
  k: integer;
begin
  inherited;

  if dxData.RecordCount = 0 then
  begin
    if MessageDlg('Данные не загужены. Cохранить пустые значения параметров для '
      + dmPublic.tClientClientName.Value + ')?', mtConfirmation,
      [mbYes, mbNo], 0) = mrYes then
    begin
      ClearParameters();
      AddParameter(1, '{%НАИМЕНОВАНИЕ%}', 'НАИМЕНОВАНИЕ', '');
      AddParameter(2, '{%П_НАИМЕНОВАНИЕ_ОПФ%}', 'ПОЛНОЕ НАИМЕНОВАНИЕ С ОПФ', '');
      AddParameter(3, '{%С_НАИМЕНОВАНИЕ_ОПФ%}', 'СОКРАЩЕННОЕ НАИМЕНОВАНИЕ С ОПФ', '');
      AddParameter(4, '{%П_НАИМЕНОВАНИЕ%}', 'ПОЛНОЕ НАИМЕНОВАНИЕ БЕЗ ОПФ', '');
      AddParameter(5, '{%С_НАИМЕНОВАНИЕ%}', 'СОКРАЩЕННОЕ НАИМЕНОВАНИЕ БЕЗ ОПФ', '');
      AddParameter(6, '{%ИНН%}', 'ИНН', '');
      AddParameter(7, '{%ОГРН%}', 'ОГРН', '');
      AddParameter(8, '{%ОКВЭД%}', 'ОКВЭД', '');
      AddParameter(9, '{%АДРЕС%}', 'АДРЕС', '');
    end;

    exit;
  end;

  if MessageDlg('Внимание! При сохранении ранее введенные реквизиты будут удалены. '
    + #10 + 'Сохранить реквизиты для ' + dxDataName.Value
    + '(' + dxDataAddress.Value + ')?', mtConfirmation, [mbYes, mbNo], 0)
    = mrYes then
  begin
    ClearParameters();

    AddParameter(1, '{%НАИМЕНОВАНИЕ%}', 'НАИМЕНОВАНИЕ', dxDataName.Value);
    AddParameter(2, '{%П_НАИМЕНОВАНИЕ_ОПФ%}', 'ПОЛНОЕ НАИМЕНОВАНИЕ С ОПФ',
      dxDataFNameOPF.Value);
    AddParameter(3, '{%С_НАИМЕНОВАНИЕ_ОПФ%}', 'СОКРАЩЕННОЕ НАИМЕНОВАНИЕ С ОПФ',
      dxDataSNameOPF.Value);
    AddParameter(4, '{%П_НАИМЕНОВАНИЕ%}', 'ПОЛНОЕ НАИМЕНОВАНИЕ БЕЗ ОПФ',
      dxDataFName.Value);
    AddParameter(5, '{%С_НАИМЕНОВАНИЕ%}', 'СОКРАЩЕННОЕ НАИМЕНОВАНИЕ БЕЗ ОПФ',
      dxDataSName.Value);
    AddParameter(6, '{%ИНН%}', 'ИНН', dxDataINN.Value);
    AddParameter(7, '{%ОГРН%}', 'ОГРН', dxDataOGRN.Value);
    AddParameter(8, '{%ОКВЭД%}', 'ОКВЭД', dxDataOKVED.Value);
    AddParameter(9, '{%АДРЕС%}', 'АДРЕС', dxDataAddress.Value);

    self.Tag := mrOk;

    Close;
  end;

  self.Tag := mrCancel;
end;

procedure TImportFromDaData.acCloseExecute(Sender: TObject);
begin
  inherited;

  self.Tag := mrCancel;

  Close;
end;

end.

