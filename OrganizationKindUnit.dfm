inherited OrganizationKind: TOrganizationKind
  Caption = #1042#1080#1076#1099' '#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1081'-'#1082#1083#1080#1077#1085#1090#1086#1074
  PixelsPerInch = 96
  TextHeight = 13
  inherited Grid: TcxGrid
    inherited tvMain: TcxGridDBTableView
      object tvMainName: TcxGridDBColumn
        Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
        DataBinding.FieldName = 'Name'
        Width = 426
      end
    end
  end
  inherited DS: TDataSource
    DataSet = dmPublic.tOrganizationKind
  end
  inherited dxBarManager: TdxBarManager
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    DockControlHeights = (
      0
      0
      26
      0)
  end
end
