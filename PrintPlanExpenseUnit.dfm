inherited PrintPlanExpense: TPrintPlanExpense
  Left = 428
  Top = 375
  Caption = #1055#1077#1095#1072#1090#1100' '#1087#1083#1072#1085#1072' '#1079#1072#1090#1088#1072#1090' '#1085#1072' '#1087#1077#1088#1080#1086#1076
  PixelsPerInch = 96
  TextHeight = 13
  object cxGroupBox: TcxGroupBox [0]
    Left = 0
    Top = 26
    Align = alTop
    Caption = #1042#1074#1086#1076' '#1087#1072#1088#1072#1084#1077#1090#1088#1086#1074
    TabOrder = 4
    Height = 105
    Width = 716
  end
  object cxSplitter: TcxSplitter [1]
    Left = 0
    Top = 131
    Width = 716
    Height = 8
    AlignSplitter = salTop
    Control = cxGroupBox
  end
  object Grid: TcxGrid [2]
    Left = 0
    Top = 139
    Width = 716
    Height = 196
    Align = alClient
    TabOrder = 6
    object tvMain: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      NavigatorButtons.First.Visible = True
      NavigatorButtons.PriorPage.Visible = True
      NavigatorButtons.Prior.Visible = True
      NavigatorButtons.Next.Visible = True
      NavigatorButtons.NextPage.Visible = True
      NavigatorButtons.Last.Visible = True
      NavigatorButtons.Insert.Visible = True
      NavigatorButtons.Append.Visible = False
      NavigatorButtons.Delete.Visible = True
      NavigatorButtons.Edit.Visible = True
      NavigatorButtons.Post.Visible = True
      NavigatorButtons.Cancel.Visible = True
      NavigatorButtons.Refresh.Visible = True
      NavigatorButtons.SaveBookmark.Visible = True
      NavigatorButtons.GotoBookmark.Visible = True
      NavigatorButtons.Filter.Visible = True
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
      DataController.Summary.SummaryGroups = <>
      Filtering.ColumnMRUItemsList = False
      Filtering.ColumnPopup.MaxDropDownItemCount = 0
      Filtering.ColumnPopup.MultiSelect = False
      FilterRow.InfoText = #1053#1072#1089#1090#1088#1086#1081#1082#1072' '#1092#1080#1083#1100#1090#1088#1072
      NewItemRow.InfoText = #1044#1086#1073#1072#1074#1080#1090#1100
      OptionsBehavior.FocusCellOnTab = True
      OptionsBehavior.FocusFirstCellOnNewRecord = True
      OptionsBehavior.GoToNextCellOnEnter = True
      OptionsBehavior.ImmediateEditor = False
      OptionsBehavior.IncSearch = True
      OptionsBehavior.ExpandMasterRowOnDblClick = False
      OptionsBehavior.FocusCellOnCycle = True
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsSelection.HideFocusRectOnExit = False
      OptionsSelection.InvertSelect = False
      OptionsSelection.UnselectFocusedRecordOnExit = False
      OptionsView.FocusRect = False
      OptionsView.Footer = True
      OptionsView.Indicator = True
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
    object lvMain: TcxGridLevel
      GridView = tvMain
    end
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
    inherited dxActions: TdxBar
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarSubItem1'
        end
        item
          Visible = True
          ItemName = 'dxBarButton1'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton2'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton4'
        end>
    end
    inherited dxBarSubItem1: TdxBarSubItem
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton1'
        end
        item
          Visible = True
          ItemName = 'dxBarButton2'
        end>
    end
  end
end
