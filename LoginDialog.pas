unit LoginDialog;

interface

  function DBLoginDialog(const AServer, ADatabaseName: string; var AUserName, APassword: string; NameReadOnly: Boolean): Boolean stdcall;

implementation

  function DBLoginDialog; external 'Libs\LoginDialog.dll';

end.
