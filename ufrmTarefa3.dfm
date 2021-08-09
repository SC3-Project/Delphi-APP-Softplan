object frmTarefa3: TfrmTarefa3
  Left = 328
  Top = 113
  Caption = 'frmTarefa3'
  ClientHeight = 461
  ClientWidth = 775
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poMainFormCenter
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 775
    Height = 25
    Align = alTop
    Alignment = taLeftJustify
    Caption = '  Valores por Projeto'
    TabOrder = 0
  end
  object Panel2: TPanel
    Left = 0
    Top = 357
    Width = 775
    Height = 104
    Align = alBottom
    TabOrder = 1
    TabStop = True
    object Panel3: TPanel
      Left = 489
      Top = 1
      Width = 285
      Height = 102
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 0
      TabStop = True
      object Label1: TLabel
        Left = 154
        Top = 8
        Width = 41
        Height = 13
        Caption = 'Total R$'
      end
      object Label2: TLabel
        Left = 154
        Top = 56
        Width = 84
        Height = 13
        Caption = 'Total Divis'#245'es R$'
      end
      object btnObterTotal: TBitBtn
        Left = 8
        Top = 22
        Width = 90
        Height = 25
        Caption = 'Obter Total'
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          333333333333333333333333333333333333333FFFFFFFFFFF33330000000000
          03333377777777777F33333003333330033333377FF333377F33333300333333
          0333333377FF33337F3333333003333303333333377FF3337333333333003333
          333333333377FF3333333333333003333333333333377FF33333333333330033
          3333333333337733333333333330033333333333333773333333333333003333
          33333333337733333F3333333003333303333333377333337F33333300333333
          03333333773333337F33333003333330033333377FFFFFF77F33330000000000
          0333337777777777733333333333333333333333333333333333}
        NumGlyphs = 2
        TabOrder = 0
        OnClick = btnObterTotalClick
      end
      object btnObterTotalDivisao: TBitBtn
        Left = 8
        Top = 69
        Width = 136
        Height = 25
        Caption = #247' Obter Total Divis'#245'es'
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          333333333333333333333333333333333333333FFFFFFFFFFF33330000000000
          03333377777777777F33333003333330033333377FF333377F33333300333333
          0333333377FF33337F3333333003333303333333377FF3337333333333003333
          333333333377FF3333333333333003333333333333377FF33333333333330033
          3333333333337733333333333330033333333333333773333333333333003333
          33333333337733333F3333333003333303333333377333337F33333300333333
          03333333773333337F33333003333330033333377FFFFFF77F33330000000000
          0333337777777777733333333333333333333333333333333333}
        NumGlyphs = 2
        TabOrder = 1
        OnClick = btnObterTotalClick
      end
      object edtTotal: TEdit
        Left = 154
        Top = 24
        Width = 121
        Height = 21
        TabStop = False
        ReadOnly = True
        TabOrder = 2
      end
      object edtTotalDivisao: TEdit
        Left = 154
        Top = 72
        Width = 121
        Height = 21
        TabStop = False
        ReadOnly = True
        TabOrder = 3
      end
    end
  end
  object dbgProjeto: TDBGrid
    Left = 0
    Top = 25
    Width = 775
    Height = 332
    Align = alClient
    Color = clInfoBk
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
end
