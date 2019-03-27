inherited OperationEdit: TOperationEdit
  Left = 704
  Top = 144
  Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077' '#1086#1087#1077#1088#1072#1094#1080#1080
  ClientHeight = 531
  ClientWidth = 445
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 445
    Height = 210
    object cxLabel1: TcxLabel
      Left = 48
      Top = 8
      Caption = #1055#1077#1088#1080#1086#1076':'
    end
    object cxLabel2: TcxLabel
      Left = 14
      Top = 56
      Caption = #1057#1090#1072#1090#1100#1103' '#1079#1072#1090#1088#1072#1090':'
    end
    object cxExpense: TcxDBButtonEdit
      Left = 104
      Top = 56
      DataBinding.DataField = 'Expense'
      DataBinding.DataSource = DSMaster
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = cxExpensePropertiesButtonClick
      TabOrder = 4
      Width = 217
    end
    object cxLabel3: TcxLabel
      Left = 52
      Top = 80
      Caption = #1057#1091#1084#1084#1072':'
    end
    object cxLabel4: TcxLabel
      Left = 16
      Top = 32
      Caption = #1058#1080#1087' '#1086#1087#1077#1088#1072#1094#1080#1080':'
    end
    object cxLabel5: TcxLabel
      Left = 23
      Top = 104
      Caption = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1077':'
    end
    object cxComment: TcxDBMemo
      Left = 104
      Top = 104
      DataBinding.DataField = 'Comment'
      DataBinding.DataSource = DSMaster
      TabOrder = 8
      Height = 97
      Width = 217
    end
    object cxPeriod: TcxDBButtonEdit
      Left = 104
      Top = 8
      DataBinding.DataField = 'Period'
      DataBinding.DataSource = DSMaster
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = cxPeriodPropertiesButtonClick
      TabOrder = 2
      Width = 217
    end
    object cxOperationKind: TcxDBButtonEdit
      Left = 104
      Top = 32
      DataBinding.DataField = 'OperationKind'
      DataBinding.DataSource = DSMaster
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = cxOperationKindPropertiesButtonClick
      TabOrder = 3
      Width = 217
    end
    object cxSum: TcxDBCalcEdit
      Left = 104
      Top = 80
      DataBinding.DataField = 'OperationSum'
      DataBinding.DataSource = DSMaster
      Properties.DisplayFormat = '#0.00'
      Properties.ImmediatePost = True
      TabOrder = 9
      Width = 193
    end
    object cxCalcTotal: TcxButton
      Left = 298
      Top = 80
      Width = 21
      Height = 21
      Caption = '='
      TabOrder = 10
      OnClick = cxCalcTotalClick
    end
  end
  inherited cxPageControl: TcxPageControl
    Top = 233
    Width = 445
    Height = 272
    ClientRectBottom = 272
    ClientRectRight = 445
    inherited cxTable: TcxTabSheet
      inherited dxBarDockControl: TdxBarDockControl
        Width = 445
      end
      inherited Grid: TcxGrid
        Width = 445
        Height = 222
        inherited tvMain: TcxGridDBTableView
          object tvMainPerson: TcxGridDBColumn
            Caption = #1059#1095#1072#1089#1090#1085#1080#1082
            DataBinding.FieldName = 'Person'
            Width = 117
          end
          object tvMainRatioValue: TcxGridDBColumn
            Caption = #1050#1086#1101#1092#1092#1080#1094#1080#1077#1085#1090
            DataBinding.FieldName = 'RatioValue'
            PropertiesClassName = 'TcxCalcEditProperties'
            Width = 101
          end
          object tvMainSumValue: TcxGridDBColumn
            Caption = #1057#1091#1084#1084#1072', '#1088#1091#1073'.'
            DataBinding.FieldName = 'SumValue'
            PropertiesClassName = 'TcxCalcEditProperties'
            Width = 92
          end
        end
      end
    end
  end
  inherited DS: TDataSource
    DataSet = dmPublic.tRatio
    Left = 48
    Top = 176
  end
  inherited DSMaster: TDataSource
    DataSet = dmPublic.tOperation
    Left = 80
    Top = 176
  end
  inherited ActionList: TActionList
    Left = 112
    Top = 176
    object acCalcRatio: TAction
      Caption = #1056#1072#1089#1095#1077#1090' '#1082#1086#1101#1092#1092#1080#1094'.'
      OnExecute = acCalcRatioExecute
    end
    object acCalcSum: TAction
      Caption = #1056#1072#1089#1095#1077#1090' '#1089#1091#1084#1084
      OnExecute = acCalcSumExecute
    end
  end
  inherited ImageList: TImageList
    Left = 16
    Top = 178
  end
  inherited cxStyleRep: TcxStyleRepository
    Left = 144
    Top = 176
  end
  inherited dxBarManager: TdxBarManager
    Categories.ItemsVisibles = (
      2
      2
      2)
    Categories.Visibles = (
      True
      True
      True)
    Left = 176
    Top = 176
    DockControlHeights = (
      0
      0
      23
      26)
    inherited dxButtons: TdxBar
      DockedLeft = 126
    end
    inherited dxBarManagerBar1: TdxBar
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton1'
        end
        item
          Visible = True
          ItemName = 'dxBarButton2'
        end
        item
          Visible = True
          ItemName = 'dxBarButton3'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton4'
        end
        item
          Visible = True
          ItemName = 'dxBarButton5'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton7'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton8'
        end>
    end
    object dxBarButton7: TdxBarButton [12]
      Action = acCalcRatio
      Category = 0
    end
    object dxBarButton8: TdxBarButton [13]
      Action = acCalcSum
      Category = 0
    end
  end
  inherited dxBarDB: TdxBarDBNavigator
    Left = 216
    Top = 177
  end
end
