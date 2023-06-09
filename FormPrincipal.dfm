object FormPrincipalIni: TFormPrincipalIni
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderWidth = 1
  Caption = 'Exemplo TefClientMC - Delphi'
  ClientHeight = 562
  ClientWidth = 480
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object PanelParametros: TPanel
    Left = 9
    Top = 8
    Width = 463
    Height = 185
    BorderWidth = 1
    BorderStyle = bsSingle
    TabOrder = 0
    object lbValor: TLabel
      Left = 6
      Top = 8
      Width = 39
      Height = 16
      Caption = 'VALOR'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial Narrow'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
    end
    object lbParcela: TLabel
      Left = 6
      Top = 49
      Width = 53
      Height = 16
      Caption = 'PARCELA'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial Narrow'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
    end
    object lbCnpjCliente: TLabel
      Left = 6
      Top = 92
      Width = 29
      Height = 16
      Caption = 'CNPJ'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial Narrow'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
    end
    object lbTexto: TLabel
      Left = 6
      Top = 133
      Width = 36
      Height = 16
      Caption = 'TEXTO'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial Narrow'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
    end
    object lbCupom: TLabel
      Left = 152
      Top = 8
      Width = 40
      Height = 16
      Caption = 'CUPOM'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial Narrow'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
    end
    object lbControle: TLabel
      Left = 152
      Top = 49
      Width = 61
      Height = 16
      Caption = 'CONTROLE'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial Narrow'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
    end
    object lbCnpjParceiro: TLabel
      Left = 152
      Top = 92
      Width = 89
      Height = 16
      Caption = 'CNPJ PARCEIRO'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial Narrow'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
    end
    object lbData: TLabel
      Left = 296
      Top = 8
      Width = 31
      Height = 16
      Caption = 'DATA'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial Narrow'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
    end
    object blTelefone: TLabel
      Left = 296
      Top = 49
      Width = 58
      Height = 16
      Caption = 'TELEFONE'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial Narrow'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
    end
    object txbValor: TEdit
      Left = 6
      Top = 22
      Width = 121
      Height = 21
      TabOrder = 0
    end
    object txbParcela: TEdit
      Left = 6
      Top = 65
      Width = 121
      Height = 21
      TabOrder = 1
    end
    object txbCnpjCliente: TEdit
      Left = 6
      Top = 106
      Width = 121
      Height = 21
      TabOrder = 2
    end
    object txbTexto: TEdit
      Left = 6
      Top = 147
      Width = 369
      Height = 21
      TabOrder = 3
    end
    object txbCupom: TEdit
      Left = 152
      Top = 22
      Width = 121
      Height = 21
      TabOrder = 4
    end
    object txbControle: TEdit
      Left = 152
      Top = 63
      Width = 121
      Height = 21
      TabOrder = 5
    end
    object txbCnpjParceiro: TEdit
      Left = 152
      Top = 106
      Width = 121
      Height = 21
      TabOrder = 6
    end
    object txbTelefone: TEdit
      Left = 296
      Top = 63
      Width = 121
      Height = 21
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
    end
    object dtDate: TDateTimePicker
      Left = 296
      Top = 22
      Width = 112
      Height = 21
      Date = 44838.000000000000000000
      Time = 0.597054386576928700
      TabOrder = 8
    end
  end
  object TabTipo: TPageControl
    Left = 8
    Top = 199
    Width = 464
    Height = 361
    ActivePage = TabSheetCartao
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial Narrow'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object TabSheetCartao: TTabSheet
      Caption = 'CART'#195'O'
      object labBarraCartao: TLabel
        Left = -4
        Top = 0
        Width = 464
        Height = 20
        Caption = 
          '----------------------------------------------------------------' +
          '----------------------------------------------------'
        Color = clAqua
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object TabCreditoDebito: TPageControl
        Left = 0
        Top = 16
        Width = 456
        Height = 279
        ActivePage = TabSheetCredito
        TabOrder = 0
        object TabSheetCredito: TTabSheet
          Caption = 'CREDITO'
          object btnCreditoAVista: TButton
            Left = 3
            Top = 16
            Width = 170
            Height = 46
            Caption = 'CREDITO A VISTA'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial Narrow'
            Font.Style = [fsBold, fsItalic]
            ParentFont = False
            TabOrder = 0
            OnClick = btnCreditoAVistaClick
          end
          object btnCreditoParcelaADM: TButton
            Left = 3
            Top = 68
            Width = 170
            Height = 46
            Caption = 'CREDITO PARCELAMENTO ADM'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial Narrow'
            Font.Style = [fsBold, fsItalic]
            ParentFont = False
            TabOrder = 1
            OnClick = btnCreditoParcelaADMClick
          end
          object btnCreditoParcelamentoLoja: TButton
            Left = 3
            Top = 120
            Width = 169
            Height = 46
            Caption = 'CREDITO PARCELAMENTO LOJA'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial Narrow'
            Font.Style = [fsBold, fsItalic]
            ParentFont = False
            TabOrder = 2
            OnClick = btnCreditoParcelamentoLojaClick
          end
          object btnCancelCredito: TButton
            Left = 3
            Top = 191
            Width = 140
            Height = 32
            Caption = 'CANCELAR'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial Narrow'
            Font.Style = [fsBold, fsItalic]
            ParentFont = False
            TabOrder = 3
            OnClick = btnCancelCreditoClick
          end
        end
        object TabSheetDebito: TTabSheet
          Caption = 'DEBITO'
          ImageIndex = 1
          object btnVendeDebitoAVista: TButton
            Left = 3
            Top = 68
            Width = 170
            Height = 46
            Caption = 'VENDE DEBITO A VISTA'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial Narrow'
            Font.Style = [fsBold, fsItalic]
            ParentFont = False
            TabOrder = 0
            OnClick = btnVendeDebitoAVistaClick
          end
          object btnVendeDebito: TButton
            Left = 3
            Top = 16
            Width = 169
            Height = 46
            Caption = 'VENDE DEBITO'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial Narrow'
            Font.Style = [fsBold, fsItalic]
            ParentFont = False
            TabOrder = 1
            OnClick = btnVendeDebitoClick
          end
          object btnCancelarDebito: TButton
            Left = 3
            Top = 191
            Width = 140
            Height = 32
            Caption = 'CANCELAR'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial Narrow'
            Font.Style = [fsBold, fsItalic]
            ParentFont = False
            TabOrder = 2
            OnClick = btnCancelarDebitoClick
          end
        end
      end
    end
    object TabSheetQRMultiplus: TTabSheet
      Caption = 'QRMULTIPLUS'
      ImageIndex = 1
      object labBarraQR: TLabel
        Left = -3
        Top = 0
        Width = 464
        Height = 20
        Caption = 
          '----------------------------------------------------------------' +
          '----------------------------------------------------'
        Color = clFuchsia
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object TabPix: TPageControl
        Left = 0
        Top = 16
        Width = 457
        Height = 279
        ActivePage = TabSheetPix
        TabOrder = 0
        object TabSheetPix: TTabSheet
          Caption = 'PIX'
          object btnEnviaPix: TButton
            Left = 0
            Top = 16
            Width = 170
            Height = 46
            Caption = 'ENVIA'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial Narrow'
            Font.Style = [fsBold, fsItalic]
            ParentFont = False
            TabOrder = 0
            OnClick = btnEnviaPixClick
          end
          object btnCancelaPix: TButton
            Left = 3
            Top = 191
            Width = 140
            Height = 32
            Caption = 'CANCELAR'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial Narrow'
            Font.Style = [fsBold, fsItalic]
            ParentFont = False
            TabOrder = 1
            OnClick = btnCancelaPixClick
          end
        end
      end
    end
    object TabSheetLinkPago: TTabSheet
      Caption = 'LINKPAGO'
      ImageIndex = 2
      object labBarraLinkPago: TLabel
        Left = -3
        Top = 0
        Width = 456
        Height = 20
        Caption = 
          '----------------------------------------------------------------' +
          '--------------------------------------------------'
        Color = clAqua
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object TabLinkPago: TPageControl
        Left = 0
        Top = 16
        Width = 457
        Height = 311
        ActivePage = TabSheetChildLinkPago
        TabOrder = 0
        object TabSheetChildLinkPago: TTabSheet
          Caption = 'LINKPAGO'
          object lQtdeI: TLabel
            Left = 3
            Top = 164
            Width = 65
            Height = 16
            Caption = 'QTDE ITENS'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial Narrow'
            Font.Style = [fsBold, fsItalic]
            ParentFont = False
          end
          object lItens: TLabel
            Left = 3
            Top = 221
            Width = 32
            Height = 16
            Caption = 'ITENS'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial Narrow'
            Font.Style = [fsBold, fsItalic]
            ParentFont = False
          end
          object btnEnviaLinkPago: TButton
            Left = 3
            Top = 16
            Width = 170
            Height = 46
            Caption = 'ENVIA'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial Narrow'
            Font.Style = [fsBold, fsItalic]
            ParentFont = False
            TabOrder = 0
            OnClick = btnEnviaLinkPagoClick
          end
          object btnListaLinks: TButton
            Left = 3
            Top = 68
            Width = 170
            Height = 46
            Caption = 'LISTAR LINKS'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial Narrow'
            Font.Style = [fsBold, fsItalic]
            ParentFont = False
            TabOrder = 1
            OnClick = btnListaLinksClick
          end
          object btnManutLink: TButton
            Left = 211
            Top = 16
            Width = 170
            Height = 46
            Caption = 'MANUTEN'#199#195'O'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial Narrow'
            Font.Style = [fsBold, fsItalic]
            ParentFont = False
            TabOrder = 2
            OnClick = btnManutLinkClick
          end
          object txbQtdeItens: TEdit
            Left = 3
            Top = 186
            Width = 121
            Height = 21
            TabOrder = 3
          end
          object txbItens: TEdit
            Left = 3
            Top = 243
            Width = 369
            Height = 21
            TabOrder = 4
          end
        end
      end
    end
    object TabSheetClient: TTabSheet
      Caption = 'CLIENT'
      ImageIndex = 3
      object labClient: TLabel
        Left = 0
        Top = 0
        Width = 456
        Height = 20
        Caption = 
          '----------------------------------------------------------------' +
          '--------------------------------------------------'
        Color = clMaroon
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object TabClient: TPageControl
        Left = 0
        Top = 16
        Width = 457
        Height = 214
        ActivePage = TabSheetChildClient
        TabOrder = 0
        object TabSheetChildClient: TTabSheet
          Caption = 'CLIENT'
          object btnAdm: TButton
            Left = 0
            Top = 16
            Width = 170
            Height = 46
            Caption = 'ADM'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial Narrow'
            Font.Style = [fsBold, fsItalic]
            ParentFont = False
            TabOrder = 0
            OnClick = btnAdmClick
          end
          object btnAtv: TButton
            Left = 1
            Top = 68
            Width = 169
            Height = 46
            Caption = 'ATV'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial Narrow'
            Font.Style = [fsBold, fsItalic]
            ParentFont = False
            TabOrder = 1
            OnClick = btnAtvClick
          end
          object btnSolicitarCpf: TButton
            Left = 3
            Top = 120
            Width = 167
            Height = 46
            Caption = 'SOLICITAR CPF'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial Narrow'
            Font.Style = [fsBold, fsItalic]
            ParentFont = False
            TabOrder = 2
            OnClick = btnSolicitarCpfClick
          end
          object btnReimpressao: TButton
            Left = 260
            Top = 16
            Width = 170
            Height = 46
            Caption = 'REIMPRESSAO'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial Narrow'
            Font.Style = [fsBold, fsItalic]
            ParentFont = False
            TabOrder = 3
            OnClick = btnReimpressaoClick
          end
          object btnReimpressaoDireta: TButton
            Left = 260
            Top = 67
            Width = 170
            Height = 46
            Caption = 'REIMPRESSAO DIRETA'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial Narrow'
            Font.Style = [fsBold, fsItalic]
            ParentFont = False
            TabOrder = 4
            OnClick = btnReimpressaoDiretaClick
          end
          object btnRelatorio: TButton
            Left = 260
            Top = 119
            Width = 170
            Height = 46
            Caption = 'RELATORIO'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial Narrow'
            Font.Style = [fsBold, fsItalic]
            ParentFont = False
            TabOrder = 5
            OnClick = btnRelatorioClick
          end
        end
      end
    end
    object TabSheetOutros: TTabSheet
      Caption = 'OUTROS'
      ImageIndex = 4
      object labOutros: TLabel
        Left = 0
        Top = 0
        Width = 456
        Height = 20
        Caption = 
          '----------------------------------------------------------------' +
          '--------------------------------------------------'
        Color = clOlive
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object TabOutros: TPageControl
        Left = 0
        Top = 16
        Width = 457
        Height = 329
        ActivePage = TabParceleMais
        TabOrder = 0
        object TabParceleMais: TTabSheet
          Caption = 'PARCELE MAIS'
          object btnParceleMais: TButton
            Left = 3
            Top = 16
            Width = 170
            Height = 46
            Caption = 'PARCELE MAIS'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial Narrow'
            Font.Style = [fsBold, fsItalic]
            ParentFont = False
            TabOrder = 0
            OnClick = btnParceleMaisClick
          end
        end
      end
    end
  end
end
