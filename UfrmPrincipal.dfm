object FrmPrincipal: TFrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Formulario para ListView'
  ClientHeight = 200
  ClientWidth = 600
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 265
    Height = 200
    Align = alLeft
    Padding.Left = 2
    Padding.Top = 2
    Padding.Right = 2
    Padding.Bottom = 2
    TabOrder = 0
    ExplicitLeft = -6
    ExplicitHeight = 291
    object Label1: TLabel
      Left = 3
      Top = 3
      Width = 259
      Height = 13
      Align = alTop
      Caption = 'Nombre'
      ExplicitLeft = 1
      ExplicitTop = 1
      ExplicitWidth = 37
    end
    object Label2: TLabel
      Left = 3
      Top = 37
      Width = 259
      Height = 13
      Align = alTop
      Caption = 'Email'
      ExplicitLeft = 1
      ExplicitTop = 35
      ExplicitWidth = 24
    end
    object edtNombre: TEdit
      Left = 3
      Top = 16
      Width = 259
      Height = 21
      Align = alTop
      TabOrder = 0
      ExplicitLeft = 72
      ExplicitTop = 96
      ExplicitWidth = 121
    end
    object edtEmail: TEdit
      Left = 3
      Top = 50
      Width = 259
      Height = 21
      Align = alTop
      TabOrder = 1
      ExplicitLeft = 0
      ExplicitTop = 43
    end
    object btnMostrar: TButton
      Left = 3
      Top = 167
      Width = 259
      Height = 30
      Align = alBottom
      Caption = '&Mostrar'
      TabOrder = 4
      OnClick = btnMostrarClick
      ExplicitLeft = 0
      ExplicitTop = 173
    end
    object btnRemover: TButton
      Left = 3
      Top = 137
      Width = 259
      Height = 30
      Align = alBottom
      Caption = '&Remover'
      TabOrder = 3
      OnClick = btnRemoverClick
      ExplicitLeft = 1
      ExplicitTop = 240
      ExplicitWidth = 263
    end
    object btnAgregar: TButton
      Left = 3
      Top = 107
      Width = 259
      Height = 30
      Align = alBottom
      Caption = '&Agregar'
      TabOrder = 2
      OnClick = btnAgregarClick
      ExplicitLeft = 0
      ExplicitTop = 101
    end
  end
  object ListaCosas: TListView
    Left = 265
    Top = 0
    Width = 335
    Height = 200
    Align = alClient
    Columns = <
      item
        Caption = 'Nombre'
        Width = 150
      end
      item
        Caption = 'Email'
        Width = 170
      end>
    TabOrder = 1
    ViewStyle = vsReport
    OnDeletion = ListaCosasDeletion
    ExplicitWidth = 338
  end
end
