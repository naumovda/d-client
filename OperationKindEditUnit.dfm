inherited OperationKindEdit: TOperationKindEdit
  Left = 454
  Top = 404
  Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077' '#1090#1080#1087#1072' '#1086#1087#1077#1088#1072#1094#1080#1081
  ClientHeight = 164
  ClientWidth = 394
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 394
    Height = 186
    object cxLabel1: TcxLabel
      Left = 64
      Top = 8
      Caption = #1050#1086#1076':'
    end
    object cxDBTextEdit1: TcxDBTextEdit
      Left = 96
      Top = 8
      DataBinding.DataField = 'Code'
      DataBinding.DataSource = DSMaster
      TabOrder = 1
      Width = 121
    end
    object cxLabel2: TcxLabel
      Left = 8
      Top = 32
      Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077':'
    end
    object cxDBTextEdit2: TcxDBTextEdit
      Left = 96
      Top = 32
      DataBinding.DataField = 'Name'
      DataBinding.DataSource = DSMaster
      TabOrder = 3
      Width = 281
    end
    object cxDBCheckBox1: TcxDBCheckBox
      Left = 8
      Top = 56
      Caption = #1055#1083#1072#1085#1080#1088#1086#1074#1072#1085#1080#1077':'
      DataBinding.DataField = 'IsPlan'
      DataBinding.DataSource = DSMaster
      Properties.Alignment = taRightJustify
      TabOrder = 4
      Width = 105
    end
    object cxDBCheckBox2: TcxDBCheckBox
      Left = 8
      Top = 80
      Caption = #1055#1088#1080#1093#1086#1076'/'#1056#1072#1089#1093#1086#1076':'
      DataBinding.DataField = 'IsIncome'
      DataBinding.DataSource = DSMaster
      Properties.Alignment = taRightJustify
      TabOrder = 5
      Width = 105
    end
  end
  inherited cxPageControl: TcxPageControl
    Top = 209
    Width = 394
    Height = 7
    ClientRectBottom = 9
    ClientRectRight = 394
    ClientRectTop = 9
    inherited cxTable: TcxTabSheet
      inherited dxBarDockControl: TdxBarDockControl
        Width = 394
      end
      inherited Grid: TcxGrid
        Width = 394
        Height = 13
      end
    end
  end
  inherited DSMaster: TDataSource
    DataSet = dmPublic.tOperationKind
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
      DockedLeft = 75
    end
  end
end
