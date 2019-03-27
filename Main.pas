unit MAIN;

interface

uses Windows, SysUtils, Classes, Graphics, Forms, Controls, Menus,
  StdCtrls, Dialogs, Buttons, Messages, ExtCtrls, ComCtrls, StdActns,
  ActnList, ToolWin, ImgList, ADODB, DB, DBClient, INIFiles,

  LoginDialog,

  ExtActns, AppEvnts, SConnect,
  ScktComp, ComObj, cxGraphics, cxControls, dxStatusBar, dxBar,
  cxClasses, dxBarExtItems, 
  cxLookAndFeels, cxLookAndFeelPainters;

 
type
  TGUIState = (gsConnected, gsWorkOffline, gsAdminRights, gsUserOMTSRights, gsUserStockRights);

  TGUIStates = set of TGUIState;

  TMainForm = class(TForm)
    OpenDialog1: TOpenDialog;
    ActionList: TActionList;
    WindowCascade1: TWindowCascade;
    WindowTileHorizontal1: TWindowTileHorizontal;
    WindowArrangeAll1: TWindowArrange;
    WindowMinimizeAll1: TWindowMinimizeAll;
    HelpAbout: TAction;
    WindowTileVertical1: TWindowTileVertical;
    ilImageListMain: TImageList;
    actConnectDB: TAction;
    actDisconnectDB: TAction;
    actBlockDB: TAction;
    OpenDialog: TOpenDialog;
    acExit: TAction;
    acPickServer: TAction;
    acPickDatabase: TAction;
    actCloseAll: TAction;
    acDataSetFilter: TAction;
    acRefresh: TAction;
    acHelp: TAction;
    dxBarManager: TdxBarManager;
    dxStatusBar: TdxStatusBar;
    dxBarManager1Bar1: TdxBar;
    dxConnect: TdxBarButton;
    dxFile: TdxBarSubItem;
    dxDisconnect: TdxBarButton;
    dxExit: TdxBarButton;
    dxRegister: TdxBarSubItem;
    dxBarManagerBar1: TdxBar;
    dxBarSubItem1: TdxBarSubItem;
    dxBarLargeButton2: TdxBarLargeButton;
    dxBarLargeButton1: TdxBarLargeButton;
    acDocumentState: TAction;
    dxBarButton2: TdxBarButton;
    dxBarButton5: TdxBarButton;
    dxBarButton9: TdxBarButton;
    dxBarSubItem2: TdxBarSubItem;
    dxBarButton11: TdxBarButton;
    dxBarLargeButton3: TdxBarLargeButton;
    dxBarLargeButton4: TdxBarLargeButton;
    acClientType: TAction;
    acClient: TAction;
    acDocuments: TAction;
    dxBarPopupMenu: TdxBarPopupMenu;
    dxBarButton12: TdxBarButton;
    acClientGroup: TAction;
    dxBarButton13: TdxBarButton;
    acDocumentGroup: TAction;
    acPaymentType: TAction;
    dxBarButton14: TdxBarButton;
    acSaldo: TAction;
    ImageList: TImageList;
    dxBarButton1: TdxBarButton;
    procedure FileExit1Execute(Sender: TObject);
    procedure actConnectDBExecute(Sender: TObject);
    procedure actDisconnectDBExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure acExitExecute(Sender: TObject);
    procedure actCloseAllExecute(Sender: TObject);
    procedure acRefreshExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure acDocumentStateExecute(Sender: TObject);
    procedure acClientTypeExecute(Sender: TObject);
    procedure acClientExecute(Sender: TObject);
    procedure acDocumentsExecute(Sender: TObject);
    procedure acClientGroupExecute(Sender: TObject);
    procedure acDocumentGroupExecute(Sender: TObject);
    procedure acPaymentTypeExecute(Sender: TObject);
    procedure acSaldoExecute(Sender: TObject);
  private
  public
    Err : boolean;

    aServer, aDatabase, aUserName, aPassword : string;

    GUIState    : TGUIStates;

    TableCount  : integer;

    CurrentTable: integer;

    procedure SetGUIState(State : TGUIStates);
  end;

var
  MainForm: TMainForm;

implementation

{$R *.dfm}

uses
  FormAbsUnit
  ,DataModuleUnit
  ,Variants
  ,DocumentStateUnit
  ,ClientTypeUnit
  ,ClientTypeEditUnit
  ,ClientUnit
  ,ClientEditUnit
  ,DocumentUnit
  ,DocumentEditUnit
  ,ClientGroupUnit
  ,ClientGroupEditUnit
  ,DocumentGroupUnit
  ,PaymentTypeUnit
  ,PaymentTypeEditUnit
  ,DocumentGroupEditUnit
  ,SaldoUnit
  ;

procedure TMainForm.FileExit1Execute(Sender: TObject);
begin
  Close;
end;

procedure TMainForm.actConnectDBExecute(Sender: TObject);
var
  success: OleVariant;

  Ini: TIniFile;
begin
  dxStatusBar.Panels[0].Text := 'Соединение c ' + aServer + '://' + aDatabase + ':' + aUserName;

  dmPublic.Conn.Close;

  dmPublic.Conn.Open;

  Success := dmPublic.Conn.Connected;

  if not Success then begin
    MessageDlg('Ошибка соединения с базой данных',  mtCustom, [mbOk], 0);

    exit;
  end;

  if not dmPublic.SetOnline(true, true, false) then begin
    MessageDlg('Ошибка открытия таблиц базы данных',  mtCustom, [mbOk], 0);

    exit;
  end;

  SetGUIState([gsConnected]);

  Caption := 'Информационная система работы с клиентами, v'
    + IntToStr(dmPublic.Version);
end;

procedure TMainForm.actDisconnectDBExecute(Sender: TObject);
begin
  dmPublic.SetOnline(false, false, true);

  actBlockDB.Checked := false;

  SetGUIState([]);
end;

procedure TMainForm.FormShow(Sender: TObject);
begin
  SetGUIState([]);

  self.actConnectDB.Execute();
end;

procedure TMainForm.FormCreate(Sender: TObject);
begin
  SetGUIState([]);
end;

procedure TMainForm.acExitExecute(Sender: TObject);
begin
  try
    dmPublic.Conn.Close;

    SetGUIState([]);
  except
    Application.Terminate;
  end;

  Close;
end;

procedure TMainForm.SetGUIState(State: TGUIStates);
var
  i: integer;

  item: TdxBarItem;

  start: Boolean;

  link: TdxBaritemLink;
begin
  GUIState := State;
  
  if gsConnected in State then begin
    for i := 0 to ActionList.ActionCount-1 do begin
      if (ActionList.Actions[i] as TAction).Category = 'Database' then
        (ActionList.Actions[i] as TAction).Enabled := true;
    end;

    if not (gsWorkOffline in State) then begin
      actConnectDB.Enabled    := false;
      actDisconnectDB.Enabled := true;
      actBlockDB.Enabled      := true;
      actBlockDB.Checked      := false;
      acRefresh.Enabled       := true;

      dxStatusBar.Panels[0].Text := 'Соединено c ' + aServer + '://' + aDatabase + ':' + aUserName;
    end
    else begin
      actConnectDB.Enabled    := true;
      actDisconnectDB.Enabled := false;
      actBlockDB.Checked      := true;
      acRefresh.Enabled       := false;

      dxStatusBar.Panels[0].Text := 'Локальное соединение';
    end;

    start := true;
    
    dmPublic.tClientGroup.First;

    while not dmPublic.tClientGroup.Eof do
    begin
      item := dxBarManager.AddItem(TdxBarLargeButton);

      item.Caption := dmPublic.tClientGroupClientGroupName.Value;
      item.LargeImageIndex := 7;
      item.Tag := dmPublic.tClientGroupObjectIntId.Value;
      item.OnClick := acDocumentsExecute;

      link := dxBarManagerBar1.ItemLinks.Add(item);
      link.BeginGroup := start;

      if start then start := false;

      dmPublic.tClientGroup.Next;
    end;

  end
  else begin
    for i := 0 to ActionList.ActionCount-1 do begin
      if (ActionList.Actions[i] as TAction).Category = 'Database' then
        (ActionList.Actions[i] as TAction).Enabled := false;
    end;

    actConnectDB.Enabled    := true;
    actDisconnectDB.Enabled := false;
    actBlockDB.Enabled      := false;
    acRefresh.Enabled       := false;
    
    dxStatusBar.Panels[0].Text := 'Отключено';

    for i := MDIChildCount-1 downto 0 do
      MDIChildren[i].Close;
  end;
end;

procedure TMainForm.actCloseAllExecute(Sender: TObject);
var
  i: integer;
begin
  for i := MDIChildCount-1 downto 0 do
    MDIChildren[i].Close;
end;

procedure TMainForm.acRefreshExecute(Sender: TObject);
begin
  ShowMessage('Обновление завершено!');
end;

procedure TMainForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  actCloseAllExecute(Self);
end;

procedure TMainForm.acDocumentStateExecute(Sender: TObject);
begin
  TDocumentState.Execute(nil, '');
end;

procedure TMainForm.acClientTypeExecute(Sender: TObject);
begin
  TClientType.Execute(ClientTypeEdit, '');
end;

procedure TMainForm.acClientExecute(Sender: TObject);
var
  aTag: integer;
begin
  aTag := (Sender as TComponent).Tag;

  TClient.Execute(ClientEdit, IntToStr(aTag));
end;

procedure TMainForm.acDocumentsExecute(Sender: TObject);
var
  aTag: integer;
begin
  aTag := (Sender as TComponent).Tag;

  TDocuments.Execute(DocumentEdit, IntToStr(aTag));
end;

procedure TMainForm.acClientGroupExecute(Sender: TObject);
begin
  TClientGroup.Execute(ClientGroupEdit, '');
end;

procedure TMainForm.acDocumentGroupExecute(Sender: TObject);
begin
  TDocumentGroup.Execute(DocumentGroupEdit, '');
end;

procedure TMainForm.acPaymentTypeExecute(Sender: TObject);
begin
  TPaymentType.Execute(PaymentTypeEdit, '');
end;

procedure TMainForm.acSaldoExecute(Sender: TObject);
begin
  TSaldo.Execute(false);
end;

end.
