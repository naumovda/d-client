inherited Service: TService
  Width = 498
  Caption = #1058#1077#1093#1085#1080#1095#1077#1089#1082#1080#1077' '#1089#1088#1077#1076#1089#1090#1074#1072' '#1087#1086#1076' '#1076#1086#1075#1086#1074#1086#1088#1091
  PixelsPerInch = 96
  TextHeight = 13
  inherited Grid: TcxGrid
    Width = 490
    inherited tvMain: TcxGridDBTableView
      object tvMainTechmeanKind: TcxGridDBColumn
        Caption = #1058#1077#1093#1085#1080#1095#1077#1089#1082#1086#1077' '#1089#1088#1077#1076#1089#1090#1074#1086
        DataBinding.FieldName = 'TechmeanKind'
        Width = 456
      end
    end
  end
  inherited DS: TDataSource
    DataSet = dmPublic.tService
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
