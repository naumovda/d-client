inherited FormEditAbs1: TFormEditAbs1
  Left = 949
  Top = 181
  Caption = #1055#1091#1085#1082#1090' '#1076#1086#1075#1086#1074#1086#1088#1072
  ClientHeight = 563
  ClientWidth = 471
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 471
    Height = 210
  end
  inherited cxPageControl: TcxPageControl
    Top = 233
    Width = 471
    Height = 304
    ClientRectBottom = 304
    ClientRectRight = 471
    inherited cxTable: TcxTabSheet
      inherited dxBarDockControl: TdxBarDockControl
        Width = 471
      end
      inherited Grid: TcxGrid
        Width = 471
        Height = 254
      end
    end
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
      DockedLeft = 152
    end
  end
end
