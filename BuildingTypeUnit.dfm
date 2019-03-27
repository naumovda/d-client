inherited BuildingType: TBuildingType
  Caption = #1058#1080#1087#1099' '#1086#1093#1088#1072#1085#1103#1077#1084#1099#1093' '#1087#1086#1084#1077#1097#1077#1085#1080#1081
  PixelsPerInch = 96
  TextHeight = 13
  inherited Grid: TcxGrid
    inherited tvMain: TcxGridDBTableView
      object tvMainBuildingTypeName: TcxGridDBColumn
        Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1090#1080#1087#1072' '#1086#1093#1088#1072#1085#1103#1077#1084#1086#1075#1086' '#1087#1086#1084#1077#1097#1077#1085#1080#1103
        DataBinding.FieldName = 'BuildingTypeName'
      end
    end
  end
  inherited DS: TDataSource
    DataSet = dmPublic.tBuildingType
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
