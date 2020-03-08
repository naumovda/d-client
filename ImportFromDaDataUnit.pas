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
    msg := '������� ��� ��� ������ ���������� �����������!';
    cxLog.Lines.Add(msg);
    ShowMessage(msg);

    exit;
  end;

  fmProcessMsg.StartMessage('����������� ���������� � �������� � �������� ������...');

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
          fmProcessMsg.StartMessage('������ ����� ' + DIR + inn
            + '.xml, ������� �' + IntToStr(k));
          Sleep(1000);
          XMLDocument.FileName := DIR + inn + '.xml';
          XMLDocument.Active := true;
          success := true;
        except
          //on E: Exception do ShowMessage(E.Message);
          if k = 10 then
          begin
            ShowMessage('�� ������� ��������� ���� ' + DIR + inn + '.xml');
            exit;
          end;
        end;
      until success;

      fmProcessMsg.EndMessage;

      root := XMLDocument.DocumentElement;

      if root.NodeName = 'ConnectionError' then
      begin
        msg := '������ ���������� � �������� suggestions.dadata.ru.' + #10#13
          + '��������� ���������� � ����� Internet.';
        cxLog.Lines.Add(msg);
        ShowMessage(msg);
        exit;
      end;

      msg := '������ ��������� � ���� ' + DIR + inn + '.xml';
      cxLog.Lines.Add(msg);

      for i := 0 to root.ChildNodes.Count-1 do
      begin
        dxData.Open;
        dxData.Append;        
        dxDataRowNumber.Value := i + 1;

        //������ ���� � ����������
        node := root.ChildNodes[i];

        value := node.ChildNodes['unrestricted_value'].Text;
        cxLog.Lines.Add('������������: ' + value);
        dxDataName.Value := value;

        value := node.ChildNodes['name'].ChildNodes['full_with_opf'].Text;
        cxLog.Lines.Add('������ ������������ � ���: ' + value);
        dxDataFNameOPF.Value := value;

        value := node.ChildNodes['name'].ChildNodes['short_with_opf'].Text;
        cxLog.Lines.Add('����������� ������������ � ���: ' + value);
        dxDataSNameOPF.Value := value;

        value := node.ChildNodes['name'].ChildNodes['full'].Text;
        cxLog.Lines.Add('������ ������������ ��� ���: ' + value);
        dxDataFName.Value := value;

        value := node.ChildNodes['name'].ChildNodes['short'].Text;
        cxLog.Lines.Add('����������� ������������ ��� ���: ' + value);
        dxDataSName.Value := value;

        data := node.ChildNodes['data'];

        value := data.ChildNodes['type'].Text;
        cxLog.Lines.Add('��� (LEGAL - ���, INDIVIDUAL - ��): ' + value);
        dxDataType.Value := value;

        value := data.ChildNodes['inn'].Text;
        cxLog.Lines.Add('���: '+ value);
        dxDataINN.Value := value;

        value := data.ChildNodes['ogrn'].Text;
        cxLog.Lines.Add('����: '+ value);
        dxDataOGRN.Value := value;

        value := data.ChildNodes['okved'].Text;
        cxLog.Lines.Add('�����: '+ value);
        dxDataOKVED.Value := value;

        address := data.ChildNodes['address'];
        value := address.ChildNodes['unrestricted_value'].Text;
        dxDataAddress.Value := value;
        cxLog.Lines.Add('�����: ' + value);

        dxData.Post;
      end;
      
      dxData.First;
  end
  else
  begin
    fmProcessMsg.EndMessage;

    msg := '������ ��� ������� �������! ���������� � ��������������.';
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
    if MessageDlg('������ �� ��������. C�������� ������ �������� ���������� ��� '
      + dmPublic.tClientClientName.Value + ')?', mtConfirmation,
      [mbYes, mbNo], 0) = mrYes then
    begin
      ClearParameters();
      AddParameter(1, '{%������������%}', '������������', '');
      AddParameter(2, '{%�_������������_���%}', '������ ������������ � ���', '');
      AddParameter(3, '{%�_������������_���%}', '����������� ������������ � ���', '');
      AddParameter(4, '{%�_������������%}', '������ ������������ ��� ���', '');
      AddParameter(5, '{%�_������������%}', '����������� ������������ ��� ���', '');
      AddParameter(6, '{%���%}', '���', '');
      AddParameter(7, '{%����%}', '����', '');
      AddParameter(8, '{%�����%}', '�����', '');
      AddParameter(9, '{%�����%}', '�����', '');
    end;

    exit;
  end;

  if MessageDlg('��������! ��� ���������� ����� ��������� ��������� ����� �������. '
    + #10 + '��������� ��������� ��� ' + dxDataName.Value
    + '(' + dxDataAddress.Value + ')?', mtConfirmation, [mbYes, mbNo], 0)
    = mrYes then
  begin
    ClearParameters();

    AddParameter(1, '{%������������%}', '������������', dxDataName.Value);
    AddParameter(2, '{%�_������������_���%}', '������ ������������ � ���',
      dxDataFNameOPF.Value);
    AddParameter(3, '{%�_������������_���%}', '����������� ������������ � ���',
      dxDataSNameOPF.Value);
    AddParameter(4, '{%�_������������%}', '������ ������������ ��� ���',
      dxDataFName.Value);
    AddParameter(5, '{%�_������������%}', '����������� ������������ ��� ���',
      dxDataSName.Value);
    AddParameter(6, '{%���%}', '���', dxDataINN.Value);
    AddParameter(7, '{%����%}', '����', dxDataOGRN.Value);
    AddParameter(8, '{%�����%}', '�����', dxDataOKVED.Value);
    AddParameter(9, '{%�����%}', '�����', dxDataAddress.Value);

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

