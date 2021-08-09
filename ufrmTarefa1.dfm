object frmTarefa1: TfrmTarefa1
  Left = 0
  Top = 0
  Caption = 'Tarefa 1'
  ClientHeight = 505
  ClientWidth = 757
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poMainFormCenter
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object scbTarefa1: TScrollBox
    Left = 0
    Top = 0
    Width = 757
    Height = 505
    Align = alClient
    TabOrder = 0
    TabStop = True
    object pnlSQLGerado: TPanel
      Left = 0
      Top = 334
      Width = 753
      Height = 167
      Align = alBottom
      TabOrder = 3
      TabStop = True
      object Label1: TLabel
        Left = 8
        Top = 1
        Width = 57
        Height = 13
        Caption = 'SQL Gerado'
      end
      object memSQLGerado: TMemo
        Left = 1
        Top = 19
        Width = 751
        Height = 147
        Align = alBottom
        Color = clInfoBk
        ReadOnly = True
        TabOrder = 0
      end
    end
    object pnlColuna: TPanel
      Left = 0
      Top = 0
      Width = 209
      Height = 334
      Align = alLeft
      TabOrder = 0
      TabStop = True
      object Label2: TLabel
        Left = 8
        Top = 4
        Width = 38
        Height = 13
        Caption = 'Colunas'
      end
      object memColuna: TMemo
        Left = 1
        Top = 22
        Width = 207
        Height = 311
        Align = alBottom
        TabOrder = 0
      end
    end
    object pnlCondicao: TPanel
      Left = 441
      Top = 0
      Width = 213
      Height = 334
      Align = alRight
      TabOrder = 2
      TabStop = True
      object Label3: TLabel
        Left = 8
        Top = 4
        Width = 49
        Height = 13
        Caption = 'Condi'#231#245'es'
      end
      object memCondicao: TMemo
        Left = 1
        Top = 22
        Width = 211
        Height = 311
        Align = alBottom
        TabOrder = 0
      end
    end
    object pnlTabela: TPanel
      Left = 209
      Top = 0
      Width = 232
      Height = 334
      Align = alClient
      TabOrder = 1
      TabStop = True
      object Label4: TLabel
        Left = 8
        Top = 4
        Width = 37
        Height = 13
        Caption = 'Tabelas'
      end
      object memTabela: TMemo
        Left = 1
        Top = 22
        Width = 230
        Height = 311
        Align = alBottom
        TabOrder = 0
      end
    end
    object Panel1: TPanel
      Left = 654
      Top = 0
      Width = 99
      Height = 334
      Align = alRight
      TabOrder = 4
      object btnGerarSQL: TBitBtn
        Left = 5
        Top = 156
        Width = 89
        Height = 25
        Caption = 'Gerar SQL'
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
          B78183B78183B78183B78183B78183B78183B78183B78183B78183B78183B781
          83B78183B78183FF00FFFF00FFFF00FFB78183FEEED4F7E3C5F6DFBCF5DBB4F3
          D7ABF3D3A2F1CF9AF0CF97F0CF98F0CF98F5D49AB78183FF00FFFF00FFFF00FF
          B78183FDEFD99FCBD037ADD337ADD337ADD337ADD39EC0B7EECC99EECC97EECC
          97F3D199B78183FF00FFFF00FFFF00FFB48176FEF3E337ADD393DCF572D1F04A
          C4EC3FBDE937ADD3F0D0A3EECC9AEECC97F3D199B78183FF00FFFF00FFFF00FF
          B48176FFF7EB37ADD3C1EFFE98DDF662CFF14EC8EE37ADD3F1D4AAF0D0A1EFCD
          99F3D198B78183FF00FFFF00FFFF00FFBA8E85FFFCF437ADD3D8F8FFBCEBFD7C
          DDF863D5F537ADD3F1D7B2F1D3AAF0D0A1F3D29BB78183FF00FFFF00FFFF00FF
          BA8E85FFFFFD37ADD3DDF9FFCDF4FF8FE8FE76E2FB37ADD3F4DBBAF2D7B1F0D4
          A9F5D5A3B78183FF00FFFF00FFFF00FFCB9A82FFFFFF37ADD3DBF9FFCDF3FF94
          ECFE86EBFF37ADD3F5DEC2F4DBBAF2D8B2F6D9ACB78183FF00FFFF00FFFF00FF
          CB9A82FFFFFF37ADD3DCF9FFCFF4FF95EDFE8AEFFF37ADD3F6E2CAF6DEC1F4DB
          B9F8DDB4B78183FF00FFFF00FFFF00FFDCA887FFFFFF37ADD3E1FBFFD1F4FF95
          EDFF8CF0FF37ADD3F8E6D1F6E2C8F7E1C2F0DAB7B78183FF00FFFF00FFFF00FF
          DCA887FFFFFF37ADD337ADD337ADD337ADD337ADD337ADD3FAEDDCFCEFD9E6D9
          C4C6BCA9B78183FF00FFFF00FFFF00FFE3B18EFFFFFF37ADD398E1F494E4F982
          E2F871DBF337ADD3F1E1D5B8857AB8857AB8857AB78183FF00FFFF00FFFF00FF
          E3B18EFFFFFF99D7EB37ADD337ADD337ADD337ADD39BD7E8E3CFC9B8857AE8B2
          70ECA54AC58768FF00FFFF00FFFF00FFEDBD92FFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFE4D4D2B8857AFAC577CD9377FF00FFFF00FFFF00FFFF00FF
          EDBD92FCF7F4FCF7F3FBF6F3FBF6F3FAF5F3F9F5F3F9F5F3E1D0CEB8857ACF9B
          86FF00FFFF00FFFF00FFFF00FFFF00FFEDBD92DCA887DCA887DCA887DCA887DC
          A887DCA887DCA887DCA887B8857AFF00FFFF00FFFF00FFFF00FF}
        TabOrder = 0
        OnClick = btnGerarSQLClick
      end
    end
  end
end
