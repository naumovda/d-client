unit OrganizationUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FormAbsUnit, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, dxBar, cxClasses, ActnList, ImgList,
  cxGridLevel, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid;

type
  TOrganization = class(TFormListAbs)
    tvMainOrganizationName: TcxGridDBColumn;
    tvMainOrganizationBase: TcxGridDBColumn;
    tvMainOrganizationINN: TcxGridDBColumn;
    tvMainOrganizationAddress: TcxGridDBColumn;
    tvMainOrganizationSite: TcxGridDBColumn;
    tvMainOrganizationBank: TcxGridDBColumn;
    tvMainOrganizationComment: TcxGridDBColumn;
    tvMainOrganizationKind: TcxGridDBColumn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Organization: TOrganization;

implementation

{$R *.dfm}

uses
  DataModuleUnit
  ;

end.
