inherited ServiceKind: TServiceKind
  Caption = #1042#1080#1076#1099' '#1091#1089#1083#1091#1075
  PixelsPerInch = 96
  TextHeight = 13
  inherited Grid: TcxGrid
    inherited tvMain: TcxGridDBTableView
      object tvMainServiceKindName: TcxGridDBColumn
        Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1074#1080#1076#1072' '#1091#1089#1083#1091#1075#1080
        DataBinding.FieldName = 'ServiceKindName'
        Width = 531
      end
    end
  end
  inherited DS: TDataSource
    DataSet = dmPublic.tServiceKind
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
