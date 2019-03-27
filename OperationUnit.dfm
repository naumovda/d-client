inherited Operation: TOperation
  Left = 353
  Top = 326
  Width = 1024
  Caption = #1057#1087#1080#1089#1086#1082' '#1086#1087#1077#1088#1072#1094#1080#1081
  PixelsPerInch = 96
  TextHeight = 13
  inherited Grid: TcxGrid
    Width = 1016
    inherited tvMain: TcxGridDBTableView
      DataController.Summary.DefaultGroupSummaryItems = <
        item
          Format = '#0.00'
          Kind = skSum
          Column = tvMainOperationSum
        end
        item
          Format = '#0.00'
          Kind = skSum
          Position = spFooter
          Column = tvMainOperationSum
        end>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = '#0.00'
          Kind = skSum
          Column = tvMainOperationSum
        end>
      OptionsView.Footer = True
      OptionsView.GroupByBox = True
      object tvMainExpense: TcxGridDBColumn
        Caption = #1057#1090#1072#1090#1100#1103' '#1079#1072#1090#1088#1072#1090
        DataBinding.FieldName = 'Expense'
        Width = 153
      end
      object tvMainOperationSum: TcxGridDBColumn
        Caption = #1057#1091#1084#1084#1072' '#1086#1087#1077#1088#1072#1094#1080#1080
        DataBinding.FieldName = 'OperationSum'
        Width = 106
      end
      object tvMainPeriod: TcxGridDBColumn
        Caption = #1055#1077#1088#1080#1086#1076
        DataBinding.FieldName = 'Period'
        Visible = False
        GroupIndex = 0
      end
      object tvMainComment: TcxGridDBColumn
        Caption = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1077
        DataBinding.FieldName = 'Comment'
        Width = 327
      end
      object tvMainIsIncome: TcxGridDBColumn
        Caption = #1055#1088#1080#1093#1086#1076'/'#1056#1072#1089#1093#1086#1076
        DataBinding.FieldName = 'IsIncome'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Images = ImageList
        Properties.Items = <
          item
            Description = #1055#1088#1080#1093#1086#1076
            ImageIndex = 2
            Value = True
          end
          item
            Description = #1056#1072#1089#1093#1086#1076
            ImageIndex = 6
            Value = False
          end>
        Visible = False
        GroupIndex = 1
      end
    end
  end
  inherited DS: TDataSource
    DataSet = dmPublic.tOperation
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
    inherited dxBarManagerBar1: TdxBar
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarSubItem1'
        end
        item
          BeginGroup = True
          UserDefine = [udWidth]
          UserWidth = 185
          Visible = True
          ItemName = 'cxPeriod'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxRefresh'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxNew'
        end
        item
          Visible = True
          ItemName = 'dxEdit'
        end
        item
          Visible = True
          ItemName = 'dxDelete'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxPost'
        end
        item
          Visible = True
          ItemName = 'dxCancel'
        end>
    end
    object cxPeriod: TcxBarEditItem
      Caption = #1042#1099#1073#1086#1088' '#1087#1077#1088#1080#1086#1076#1072':'
      Category = 0
      Hint = #1042#1099#1073#1086#1088' '#1087#1077#1088#1080#1086#1076#1072':'
      Visible = ivAlways
      ShowCaption = True
      Width = 100
      PropertiesClassName = 'TcxButtonEditProperties'
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end
        item
          Caption = 'X'
          Kind = bkText
        end>
      Properties.ReadOnly = True
      Properties.OnButtonClick = cxPeriodPropertiesButtonClick
    end
  end
end
