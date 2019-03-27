inherited ExpenseEdit: TExpenseEdit
  Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077' '#1089#1090#1072#1090#1100#1080' '#1079#1072#1090#1088#1072#1090
  ClientHeight = 241
  ClientWidth = 379
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 379
    Height = 242
    object cxLabel1: TcxLabel
      Left = 16
      Top = 32
      Caption = #1050#1086#1076':'
    end
    object cxDBTextEdit1: TcxDBTextEdit
      Left = 104
      Top = 32
      DataBinding.DataField = 'Code'
      DataBinding.DataSource = DSMaster
      TabOrder = 1
      Width = 121
    end
    object cxLabel2: TcxLabel
      Left = 16
      Top = 56
      Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077':'
    end
    object cxDBTextEdit2: TcxDBTextEdit
      Left = 104
      Top = 56
      DataBinding.DataField = 'Name'
      DataBinding.DataSource = DSMaster
      TabOrder = 3
      Width = 265
    end
    object cxLabel3: TcxLabel
      Left = 16
      Top = 8
      Caption = #1043#1088#1091#1087#1087#1072' '#1079#1072#1090#1088#1072#1090':'
    end
    object cxExpense: TcxDBButtonEdit
      Left = 104
      Top = 8
      DataBinding.DataField = 'ParentExpense'
      DataBinding.DataSource = DSMaster
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end
        item
          Caption = #1061
          Kind = bkText
        end>
      Properties.OnButtonClick = cxExpensePropertiesButtonClick
      TabOrder = 5
      Width = 265
    end
    object cxDBCheckBox1: TcxDBCheckBox
      Left = 288
      Top = 32
      Caption = #1040#1082#1090#1080#1074#1085#1072#1103
      DataBinding.DataField = 'IsUsed'
      DataBinding.DataSource = DSMaster
      Properties.Alignment = taRightJustify
      TabOrder = 6
      Width = 81
    end
    object cxGroupBox1: TcxGroupBox
      Left = 16
      Top = 104
      Caption = #1044#1077#1090#1072#1083#1080#1079#1072#1094#1080#1103
      TabOrder = 7
      Height = 73
      Width = 353
      object cxDBCheckBox2: TcxDBCheckBox
        Left = 32
        Top = 16
        Caption = #1087#1086' '#1091#1095#1072#1089#1090#1085#1080#1082#1072#1084
        DataBinding.DataField = 'IsDetailedByPerson'
        DataBinding.DataSource = DSMaster
        Properties.Alignment = taRightJustify
        TabOrder = 0
        Width = 145
      end
      object cxDBCheckBox3: TcxDBCheckBox
        Left = 32
        Top = 40
        Caption = #1087#1086' '#1076#1072#1090#1072#1084
        DataBinding.DataField = 'IsDetailedByDate'
        DataBinding.DataSource = DSMaster
        Properties.Alignment = taRightJustify
        TabOrder = 1
        Width = 145
      end
    end
    object cxDBCheckBox4: TcxDBCheckBox
      Left = 16
      Top = 80
      Caption = #1055#1088#1080#1093#1086#1076'/'#1088#1072#1089#1093#1086#1076
      DataBinding.DataField = 'IsIncome'
      DataBinding.DataSource = DSMaster
      Properties.Alignment = taRightJustify
      TabOrder = 8
      Width = 105
    end
    object cxDBCheckBox5: TcxDBCheckBox
      Left = 248
      Top = 80
      Caption = #1071#1074#1083#1103#1077#1090#1089#1103' '#1075#1088#1091#1087#1087#1086#1081
      DataBinding.DataField = 'IsHasChilds'
      DataBinding.DataSource = DSMaster
      Properties.Alignment = taRightJustify
      TabOrder = 9
      Width = 121
    end
  end
  inherited cxPageControl: TcxPageControl
    Top = 265
    Width = 379
    Height = 1
    ClientRectBottom = 3
    ClientRectRight = 379
    ClientRectTop = 3
    inherited cxTable: TcxTabSheet
      inherited dxBarDockControl: TdxBarDockControl
        Width = 379
      end
      inherited Grid: TcxGrid
        Width = 379
        Height = 41
      end
    end
  end
  inherited DSMaster: TDataSource
    DataSet = dmPublic.tExpense
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
    DockControlHeights = (
      0
      0
      23
      26)
    inherited dxButtons: TdxBar
      DockedLeft = 60
    end
  end
end
