inherited SelfParameters: TSelfParameters
  Left = 265
  Top = 277
  Width = 941
  Caption = #1055#1072#1088#1072#1084#1077#1090#1088#1099' '#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1080
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited Grid: TcxGrid
    Width = 617
    inherited tvMain: TcxGridDBTableView
      object tvMainRowNumber: TcxGridDBColumn
        Caption = #8470
        DataBinding.FieldName = 'RowNumber'
      end
      object tvMainObjectCode: TcxGridDBColumn
        Caption = #1050#1086#1076
        DataBinding.FieldName = 'ObjectCode'
        Width = 68
      end
      object tvMainObjectName: TcxGridDBColumn
        Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
        DataBinding.FieldName = 'ObjectName'
        Width = 168
      end
      object tvMainObjectValue: TcxGridDBColumn
        Caption = #1047#1085#1072#1095#1077#1085#1080#1077
        DataBinding.FieldName = 'ObjectValue'
        Width = 232
      end
    end
  end
  inherited dxLeft: TdxLayoutControl
    inherited cxSearch: TcxButton
      Top = 67
      TabOrder = 1
    end
    inherited cxClear: TcxButton
      Top = 67
      TabOrder = 2
    end
    object cxValue: TcxTextEdit [2]
      Left = 112
      Top = 28
      Style.HotTrack = False
      TabOrder = 0
      Text = 'cxValue'
      Width = 121
    end
    inherited dxLeftGroup_Root: TdxLayoutGroup
      inherited dxLeftGroup: TdxLayoutGroup
        object dxLeftItem1: TdxLayoutItem
          CaptionOptions.Text = #1055#1086#1080#1089#1082' '#1079#1085#1072#1095#1077#1085#1080#1103':'
          Control = cxValue
          ControlOptions.ShowBorder = False
        end
      end
    end
  end
  inherited DS: TDataSource
    DataSet = dmPublic.tSelfParameters
    Left = 96
    Top = 114
  end
  inherited ImageList: TImageList
    Left = 64
    Top = 114
  end
  inherited Actions: TActionList
    Left = 31
    Top = 114
    inherited acSearch: TAction
      OnExecute = acSearchExecute
    end
  end
  inherited cxStyleRepository: TcxStyleRepository
    Left = 134
    Top = 114
  end
  inherited dxBarManager: TdxBarManager
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    Left = 171
    Top = 113
    DockControlHeights = (
      0
      0
      26
      0)
  end
  inherited dxComponentPrinter: TdxComponentPrinter
    Left = 208
    Top = 112
  end
  inherited OpenDialog: TOpenDialog
    Left = 248
    Top = 112
  end
end
