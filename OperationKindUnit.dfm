inherited OperationKind: TOperationKind
  Left = 387
  Top = 307
  Width = 658
  Caption = #1058#1080#1087#1099' '#1086#1087#1077#1088#1072#1094#1080#1081
  PixelsPerInch = 96
  TextHeight = 13
  inherited Grid: TcxGrid
    Width = 650
    inherited tvMain: TcxGridDBTableView
      object tvMainCode: TcxGridDBColumn
        Caption = #1050#1086#1076
        DataBinding.FieldName = 'Code'
        Width = 95
      end
      object tvMainName: TcxGridDBColumn
        Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
        DataBinding.FieldName = 'Name'
        Width = 231
      end
      object tvMainIsPlan: TcxGridDBColumn
        Caption = #1054#1087#1077#1088#1072#1094#1080#1103' '#1087#1083#1072#1085#1080#1088#1086#1074#1072#1085#1080#1103
        DataBinding.FieldName = 'IsPlan'
        Width = 136
      end
      object tvMainIsIncome: TcxGridDBColumn
        Caption = #1055#1088#1080#1093#1086#1076'/'#1056#1072#1089#1093#1086#1076
        DataBinding.FieldName = 'IsIncome'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Images = ImageList
        Properties.Items = <
          item
            Description = #1055#1088#1080#1093#1086#1076
            ImageIndex = 3
            Value = True
          end
          item
            Description = #1056#1072#1089#1093#1086#1076
            ImageIndex = 4
            Value = False
          end>
        Width = 117
      end
    end
  end
  inherited DS: TDataSource
    DataSet = dmPublic.tOperationKind
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
