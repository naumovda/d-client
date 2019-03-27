inherited Techmean: TTechmean
  Caption = #1042#1080#1076' '#1090#1077#1093#1085#1080#1095#1077#1089#1082#1086#1075#1086' '#1089#1088#1077#1076#1089#1090#1074#1072
  PixelsPerInch = 96
  TextHeight = 13
  inherited Grid: TcxGrid
    inherited tvMain: TcxGridDBTableView
      object tvMainTechmeanKindName: TcxGridDBColumn
        Caption = #1042#1080#1076' '#1090#1077#1093#1085#1080#1095#1077#1089#1082#1086#1075#1086' '#1089#1088#1077#1076#1089#1090#1074#1072
        DataBinding.FieldName = 'TechmeanKindName'
        Width = 433
      end
    end
  end
  inherited DS: TDataSource
    DataSet = dmPublic.tTechMeanKind
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
