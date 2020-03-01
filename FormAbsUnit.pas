unit FormAbsUnit;

interface

uses
  Windows, Forms, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB,
  cxDBData, dxBar, cxClasses, Classes, ActnList, ImgList, Controls,
  cxGridLevel, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, FormEditAbsUnit, dxPSGlbl, dxPSUtl, dxPSEngn,
  dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider, dxPSFillPatterns,
  dxPSEdgePatterns, dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils,
  dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon, dxPScxEditorProducers,
  dxPScxExtEditorProducers, dxPScxPageControlProducer, dxPSCore,
  cxSplitter, dxLayoutControl, Menus, StdCtrls, cxButtons, Dialogs;

type
  TFormClass = class of TForm;
  
  TFormListAbs = class(TForm)
    DS: TDataSource;
    ImageList: TImageList;
    Actions: TActionList;
    tvMain: TcxGridDBTableView;
    lvMain: TcxGridLevel;
    Grid: TcxGrid;
    cxStyleRepository: TcxStyleRepository;
    cxStyleEven: TcxStyle;
    dxBarManager: TdxBarManager;
    acHelp: TAction;
    dxBarManagerBar1: TdxBar;
    acNew: TAction;
    dxNew: TdxBarButton;
    dxBarSubItem1: TdxBarSubItem;
    acEdit: TAction;
    dxEdit: TdxBarButton;
    acDelete: TAction;
    dxDelete: TdxBarButton;
    acPost: TAction;
    dxPost: TdxBarButton;
    acCancel: TAction;
    dxCancel: TdxBarButton;
    acRefresh: TAction;
    dxRefresh: TdxBarButton;
    acToggleGroup: TAction;
    dxBarGroup: TdxBarButton;
    dxComponentPrinter: TdxComponentPrinter;
    acPrint: TAction;
    dxBarPrint: TdxBarButton;
    dxLeftGroup_Root: TdxLayoutGroup;
    dxLeft: TdxLayoutControl;
    cxSplitterMain: TcxSplitter;
    dxLeftGroup: TdxLayoutGroup;
    cxSearch: TcxButton;
    dxLeftSearch: TdxLayoutItem;
    cxClear: TcxButton;
    dxLeftClear: TdxLayoutItem;
    dxLeftButtonGroup: TdxLayoutGroup;
    acSearch: TAction;
    acClear: TAction;
    acImport: TAction;
    dxBarImport: TdxBarButton;
    OpenDialog: TOpenDialog;
    acDeleteAll: TAction;
    acCopyRow: TAction;
    dxBarCopy: TdxBarButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    class function FormExist(FormTypeName : string): boolean;
    class function ActivateForm(FormTypeName : string; Modal : boolean = false): boolean;
    procedure FormShow(Sender: TObject);
    procedure btOkClick(Sender: TObject);
    procedure btCloseClick(Sender: TObject);
    procedure acHelpExecute(Sender: TObject);
    procedure tvMainCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure acNewExecute(Sender: TObject);
    procedure acEditExecute(Sender: TObject);
    procedure acDeleteExecute(Sender: TObject);
    procedure acPostExecute(Sender: TObject);
    procedure acCancelExecute(Sender: TObject);
    procedure DSDataChange(Sender: TObject; Field: TField);
    procedure DSStateChange(Sender: TObject);
    procedure acRefreshExecute(Sender: TObject);
    procedure acToggleGroupExecute(Sender: TObject);
    procedure acPrintExecute(Sender: TObject);
    procedure acClearExecute(Sender: TObject);
    procedure acDeleteAllExecute(Sender: TObject);
    procedure acCopyRowExecute(Sender: TObject);
  public
    FEditForm     : TFormEditAbs;
    
    Parameters    : string;
    RuleName      : string;

    CloseResult   : TModalResult;

    Can_Edit,
    Can_Insert,
    Can_Delete,
    Can_ViewAll,
    Can_EditAll,
    Can_DeleteAll  : boolean;

    class function Execute(EditForm: TFormEditAbs; Parameters: string = ''): TForm;
    class function GetFormIfExist(FormTypeName : string): TForm;    

    function CanClose(): boolean;

    procedure RefreshInfo(); virtual;
  end;

var
  FormListAbs: TFormListAbs;

implementation

uses
  ExtActns
  ,Variants
  ,IniFiles
  ,SysUtils
  ,DataModuleUnit
  ,Main;

{$R *.dfm}

function TFormListAbs.CanClose():boolean;
begin
  Result := true;
end;

procedure TFormListAbs.FormClose(Sender: TObject; var Action: TCloseAction);
var
  Ini : TIniFile;
begin
  try
    tvMain.StoreToIniFile(dmPublic.AppPath + '\Ini\'+ self.Name +'.ini');
  except
  end;

  if not CanClose then
  begin
    Action := caNone;

    Exit;
  end;

  if Top < 0 then Top := 0;
  if Left < 0 then Left := 0;
  if Width > Screen.WorkAreaWidth - 50 then Width := Screen.WorkAreaWidth - 50;
  if Height > Screen.WorkAreaHeight - 175 then Height := Screen.WorkAreaHeight - 175;

  Ini := TIniFile.Create(self.Name + Parameters);

  INI.WriteInteger(self.Name + Parameters, 'Top', Top);
  INI.WriteInteger(self.Name + Parameters, 'Left', Left);
  INI.WriteInteger(self.Name + Parameters, 'Width', Width);
  INI.WriteInteger(self.Name + Parameters, 'Height', Height);

  case self.WindowState of
    wsNormal    : INI.WriteString(self.Name + Parameters, 'State', 'wsNormal');
    wsMinimized : INI.WriteString(self.Name + Parameters, 'State', 'wsMinimized');
    wsMaximized : INI.WriteString(self.Name + Parameters, 'State', 'wsMaximized');
  end;

  Ini.Free;

  CloseResult := mrOk;

  Action := caFree;
end;

procedure TFormListAbs.FormActivate(Sender: TObject);
begin
  RefreshInfo();
end;

class function TFormListAbs.Execute(EditForm: TFormEditAbs; Parameters: string = ''):TForm;
var
  F : TForm;
begin
  if Parameters = 'modal' then
    begin
      F := Create(Application);
      (F as TFormListAbs).Parameters := Parameters;
      (F as TFormListAbs).FEditForm := EditForm;
      F.FormStyle := fsNormal;
      F.Visible:= false;
      result := F;
    end
  else
    if not FormExist(ClassName) or (ClassName = 'TDocuments') then
      begin
        F := Create(Application);
        (F as TFormListAbs).Parameters := Parameters;
        (F as TFormListAbs).FEditForm := EditForm;
        F.FormStyle := fsMDIChild;
        result := F;
      end
    else
      begin
        ActivateForm(ClassName);
        result := GetFormIfExist(ClassName);
      end;
end;

class function TFormListAbs.GetFormIfExist(FormTypeName : string): TForm;
var
  i : integer;
begin
  Result := nil;

  for i := 0 to Application.ComponentCount-1 do
  begin
    if UpperCase(Application.Components[i].ClassName) = UpperCase(FormTypeName) then begin
      Result := Application.Components[i] AS TForm;
      break;
    end;
  end;
end;

class function TFormListAbs.FormExist(FormTypeName : string): boolean;
var
  i : integer;
begin
  Result := false;

  for i := 0 to Application.ComponentCount-1 do
  begin
    if UpperCase(Application.Components[i].ClassName) = UpperCase(FormTypeName) then begin
      Result := true;
      break;
    end;
  end;
end;

class function TFormListAbs.ActivateForm(FormTypeName : string; Modal : boolean = false): boolean;
var
  i : integer;
  f : TCustomForm;
begin
  Result := false;

  for i := 0 to Application.ComponentCount-1 do
  begin
    if UpperCase(Application.Components[i].ClassName) = UpperCase(FormTypeName) then
    begin
      f := Application.Components[i] As TCustomForm;
      if Modal then
        Result := f.ShowModal() = mrOk
      else begin
        f.Show();
        Result := true;
      end;
      break;
    end;
  end;
end;

procedure TFormListAbs.FormShow(Sender: TObject);
var
  state: string;

  Ini : TIniFile;
begin
  Ini := TIniFile.Create(self.Name + Parameters);

  Top   := INI.ReadInteger(self.Name + Parameters, 'Top',   0);
  Left  := INI.ReadInteger(self.Name + Parameters, 'Left',  0);
  Width := INI.ReadInteger(self.Name + Parameters, 'Width', 400);
  Height:= INI.ReadInteger(self.Name + Parameters, 'Height',400);

  State := INI.ReadString(self.Name + Parameters, 'State','wsNormal');

  if State = 'wsNormal' then
    self.WindowState := wsNormal
  else
    if State = 'wsMinimized' then
      self.WindowState := wsMinimized
    else
      if State = 'wsMaximized' then
        self.WindowState := wsMaximized;

  try
    tvMain.RestoreFromIniFile('Ini\'+ self.Name +'.ini');
  except
  end;

  Ini.Free;
  
  RefreshInfo();
end;

procedure TFormListAbs.RefreshInfo;
begin
  if Visible then
  begin
    acNew.Enabled := (DS.DataSet <> nil) and (dsBrowse = DS.Dataset.State);

    acEdit.Enabled := (DS.DataSet <> nil) and (dsBrowse = DS.Dataset.State) and (not DS.DataSet.IsEmpty);

    acDelete.Enabled := acEdit.Enabled;

    acCopyRow.Enabled := acEdit.Enabled;

    acPost.Enabled := (DS.DataSet <> nil) and (DS.Dataset.State in [dsEdit, dsInsert]);

    acCancel.Enabled := acPost.Enabled;

    tvMain.OptionsData.Editing := (tvMain.OptionsData.Editing and Can_Edit)
      or acPost.Enabled or acCancel.Enabled;
   end;
end;

procedure TFormListAbs.btOkClick(Sender: TObject);
begin
  if DS.DataSet.State in [dsEdit, dsInsert] then
    DS.DataSet.Cancel;

  CloseResult := mrOk;

  Tag := mrOk;

  Close;
end;

procedure TFormListAbs.btCloseClick(Sender: TObject);
begin
  if DS.DataSet.State in [dsEdit, dsInsert] then
    DS.DataSet.Cancel;

  CloseResult := mrCancel;

  Tag := mrCancel;

  Close;
end;

procedure TFormListAbs.acHelpExecute(Sender: TObject);
var
  fr: TFileRun;
begin
  fr := TFileRun.Create(self);

  fr.FileName := 'help\manual.hlp';

  try
    fr.Execute;
  except
    ShowMessage('Не могу найти файл помощи ' + fr.FileName + ' !' );
  end
end;

procedure TFormListAbs.tvMainCellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  if Parameters = 'modal' then
  begin
    Tag := mrOk;

    Close;
  end
  else
    acEditExecute(Sender);
end;

procedure TFormListAbs.acNewExecute(Sender: TObject);
begin
   if FEditForm <> nil then begin

    (FEditForm as TFormEditAbs).Mode := dsInsert;

    FEditForm.ShowModal();
  end
  else
  begin
    DS.DataSet.Append;
  end;

  RefreshInfo();
end;

procedure TFormListAbs.acEditExecute(Sender: TObject);
begin
  if FEditForm <> nil then begin

    (FEditForm as TFormEditAbs).Mode := dsEdit;

    FEditForm.ShowModal();
  end
  else
  begin
    DS.DataSet.Edit;
  end;

  RefreshInfo();
end;

procedure TFormListAbs.acDeleteExecute(Sender: TObject);
begin
  if MessageDlg('Удалить запись?', mtCustom, [mbYes, mbNo], 0) = mrYes then
  begin
    try
      DS.DataSet.Delete();

    except
      on E : Exception do
        ShowMessage(E.Message);
    end;
  end;

  RefreshInfo();
end;

procedure TFormListAbs.acPostExecute(Sender: TObject);
begin
  try
    if DS.Dataset.State in [dsEdit, dsInsert] then
    begin
      DS.DataSet.Post();

    end;
  except
    on E : Exception do
      ShowMessage(E.Message);
  end;

  RefreshInfo();
end;

procedure TFormListAbs.acCancelExecute(Sender: TObject);
begin
  try
    if DS.Dataset.State in [dsEdit, dsInsert] then
      DS.DataSet.Cancel();
  except
    on E : Exception do
      ShowMessage(E.Message);
  end;

  RefreshInfo();
end;

procedure TFormListAbs.DSDataChange(Sender: TObject; Field: TField);
begin
  RefreshInfo();
end;

procedure TFormListAbs.DSStateChange(Sender: TObject);
begin
  RefreshInfo();
end;

procedure TFormListAbs.acRefreshExecute(Sender: TObject);
begin
  DS.Dataset.Close;

  DS.Dataset.Open;

  RefreshInfo();
end;

procedure TFormListAbs.acToggleGroupExecute(Sender: TObject);
begin
  tvMain.OptionsView.GroupByBox := not tvMain.OptionsView.GroupByBox; 
end;

procedure TFormListAbs.acPrintExecute(Sender: TObject);
begin
  dxComponentPrinter.Preview();
end;

procedure TFormListAbs.acClearExecute(Sender: TObject);
begin
  tvMain.BeginUpdate;

  tvMain.DataController.Filter.Root.Clear;

  tvMain.EndUpdate;  
  {
  tvMain.BeginUpdate;

  tvMain.DataController.Filter.Root.Clear;

  with tvMain.DataController.Filter.Root do
  begin
    Clear;

    BoolOperatorKind := fboAnd;

    if TypeId <> '' then
      AddItem(tvMain.GetColumnByFieldName('ProductionType'),
        foEqual,
        TypeId,
        cxType.EditText
      );

    if cxExpenseCode.EditText <> '' then
      AddItem(tvMain.GetColumnByFieldName('ProductsionCost_Code'),
        foLike,
        '%' + cxExpenseCode.EditText + '%',
        cxExpenseCode.EditText
      );

    if cxExpenseName.EditText <> '' then
      AddItem(tvMain.GetColumnByFieldName('Production_ShortName'),
        foLike,
        '%' + cxExpenseName.EditText + '%',
        cxExpenseName.EditText
      );

    if cxObjectState.ItemIndex <> 0 then
      AddItem(tvMain.GetColumnByFieldName('ObjectState'),
        foEqual,
        cxObjectState.EditValue,
        cxObjectState.Properties.Items[cxObjectState.ItemIndex].Caption
      );
  end;

  tvMain.DataController.Filter.Active := true;

  tvMain.EndUpdate;
  }
end;

procedure TFormListAbs.acDeleteAllExecute(Sender: TObject);
begin
  if MessageDlg('Удалить все записи?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    DS.DataSet.First;

    while not DS.DataSet.Eof do
      DS.DataSet.Delete;
  end;
end;

procedure TFormListAbs.acCopyRowExecute(Sender: TObject);
var
  Records: Array of Variant;

  i: integer;
begin
  if DS.Dataset <> nil then
  begin
    SetLength(Records, DS.DataSet.FieldCount);

    Records[0] := NewGUID();
    Records[1] := NULL;

    for i := 2 to DS.DataSet.FieldCount - 1 do
      Records[i] := DS.DataSet.Fields[i].Value;

    if DS.DataSet.State in [dsEdit, dsInsert] then
      DS.DataSet.Post;

    DS.DataSet.Append;

    for i := 0 to DS.DataSet.FieldCount - 1 do
      if Records[i] <> NULL then
        DS.DataSet.Fields[i].Value := Records[i];
  end;

  if FEditForm <> nil then
  begin
    (FEditForm as TFormEditAbs).Mode := dsEdit;

    FEditForm.ShowModal();

    RefreshInfo();
  end;
end;

end.
