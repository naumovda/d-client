inherited PeriodEdit: TPeriodEdit
  Left = 449
  Top = 399
  Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077' '#1087#1077#1088#1080#1086#1076#1072
  ClientHeight = 150
  ClientWidth = 355
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 355
    Height = 106
    object cxLabel1: TcxLabel
      Left = 32
      Top = 8
      Caption = #1044#1072#1090#1072' '#1085#1072#1095#1072#1083#1072':'
    end
    object cxLabel2: TcxLabel
      Left = 16
      Top = 32
      Caption = #1044#1072#1090#1072' '#1086#1082#1086#1085#1095#1072#1085#1080#1103':'
    end
    object cxDBCheckBox1: TcxDBCheckBox
      Left = 0
      Top = 56
      Caption = #1055#1088#1080#1079#1085#1072#1082' '#1086#1090#1082#1088#1099#1090#1080#1103
      DataBinding.DataField = 'IsOpen'
      DataBinding.DataSource = DSMaster
      Properties.Alignment = taRightJustify
      TabOrder = 2
      Width = 129
    end
    object cxDBDateEdit1: TcxDBDateEdit
      Left = 112
      Top = 8
      DataBinding.DataField = 'DateStart'
      DataBinding.DataSource = DSMaster
      TabOrder = 3
      Width = 121
    end
    object cxDBDateEdit2: TcxDBDateEdit
      Left = 112
      Top = 32
      DataBinding.DataField = 'DateEnd'
      DataBinding.DataSource = DSMaster
      TabOrder = 4
      Width = 121
    end
  end
  inherited cxPageControl: TcxPageControl
    Top = 129
    Width = 355
    Height = 0
    ClientRectBottom = 2
    ClientRectRight = 355
    ClientRectTop = 2
    inherited cxTable: TcxTabSheet
      inherited dxBarDockControl: TdxBarDockControl
        Width = 355
      end
      inherited Grid: TcxGrid
        Width = 355
        Height = 6
      end
    end
  end
  inherited DSMaster: TDataSource
    DataSet = dmPublic.tPeriod
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
      DockedLeft = 36
    end
  end
end
