unit FormPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ComCtrls,StrUtils;

type
  TFormPrincipalIni = class(TForm)
    PanelParametros: TPanel;
    lbValor: TLabel;
    txbValor: TEdit;
    lbParcela: TLabel;
    txbParcela: TEdit;
    lbCnpjCliente: TLabel;
    txbCnpjCliente: TEdit;
    txbTexto: TEdit;
    lbTexto: TLabel;
    lbCupom: TLabel;
    lbControle: TLabel;
    lbCnpjParceiro: TLabel;
    txbCupom: TEdit;
    txbControle: TEdit;
    txbCnpjParceiro: TEdit;
    lbData: TLabel;
    blTelefone: TLabel;
    txbTelefone: TEdit;
    TabTipo: TPageControl;
    TabSheetCartao: TTabSheet;
    labBarraCartao: TLabel;
    TabCreditoDebito: TPageControl;
    TabSheetCredito: TTabSheet;
    btnCreditoAVista: TButton;
    btnCreditoParcelaADM: TButton;
    btnCreditoParcelamentoLoja: TButton;
    btnCancelCredito: TButton;
    TabSheetDebito: TTabSheet;
    btnVendeDebitoAVista: TButton;
    btnVendeDebito: TButton;
    btnCancelarDebito: TButton;
    TabSheetQRMultiplus: TTabSheet;
    TabPix: TPageControl;
    TabSheetPix: TTabSheet;
    btnEnviaPix: TButton;
    btnCancelaPix: TButton;
    TabSheetLinkPago: TTabSheet;
    TabLinkPago: TPageControl;
    TabSheetChildLinkPago: TTabSheet;
    btnEnviaLinkPago: TButton;
    btnListaLinks: TButton;
    TabSheetClient: TTabSheet;
    TabSheetOutros: TTabSheet;
    TabOutros: TPageControl;
    TabParceleMais: TTabSheet;
    btnParceleMais: TButton;
    labBarraQR: TLabel;
    labBarraLinkPago: TLabel;
    TabClient: TPageControl;
    TabSheetChildClient: TTabSheet;
    btnAdm: TButton;
    btnAtv: TButton;
    btnSolicitarCpf: TButton;
    btnReimpressao: TButton;
    btnReimpressaoDireta: TButton;
    btnRelatorio: TButton;
    dtDate: TDateTimePicker;
    labClient: TLabel;
    labOutros: TLabel;
    btnManutLink: TButton;
    txbQtdeItens: TEdit;
    txbItens: TEdit;
    lQtdeI: TLabel;
    lItens: TLabel;

    procedure btnCreditoAVistaClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnCreditoParcelaADMClick(Sender: TObject);
    procedure btnCreditoParcelamentoLojaClick(Sender: TObject);
    procedure btnVendeDebitoClick(Sender: TObject);
    procedure btnVendeDebitoAVistaClick(Sender: TObject);
    procedure btnCancelCreditoClick(Sender: TObject);
    procedure btnCancelarDebitoClick(Sender: TObject);
    procedure btnEnviaPixClick(Sender: TObject);
    procedure btnCancelaPixClick(Sender: TObject);
    procedure btnEnviaLinkPagoClick(Sender: TObject);
    procedure btnListaLinksClick(Sender: TObject);
    procedure btnAdmClick(Sender: TObject);
    procedure btnAtvClick(Sender: TObject);
    procedure btnSolicitarCpfClick(Sender: TObject);
    procedure btnReimpressaoClick(Sender: TObject);
    procedure btnReimpressaoDiretaClick(Sender: TObject);
    procedure btnRelatorioClick(Sender: TObject);
    procedure btnParceleMaisClick(Sender: TObject);
    procedure btnManutLinkClick(Sender: TObject);
  private
    { Private declarations }
    sCNPJCliente : PAnsiChar;
    sCNPJParceiro : PAnsiChar;
    sTelefone :    PAnsiChar;
    sTexto :   PAnsiChar;
    sData : PAnsiChar;
    data :  string;
    sNomeOperadora : PAnsiChar;
    sValoresSplit : PAnsiChar;
    sTextSplit : PAnsiChar;

   function Transacionar(sTipo:string) : integer;

  public
    { Public declarations }
  end;

  function VendeCredito (
           sCNPJCliente :  PAnsiChar;
           sCNPJParceiro : PAnsiChar;
           dValor : double;
           iCupom : integer;
           iLeitor : integer
         ): PAnsiChar; stdcall;
            external 'TefClientmc.dll';

  function VendeCreditoVista (
           sCNPJCliente : PAnsiChar;
           sCNPJParceiro : PAnsiChar;
           dValor : double;
           iCupom : integer;
           iLeitor : integer
         ): PAnsiChar; stdcall;
            external 'TefClientmc.dll';

  function VendeCreditoParcLoja (
           sCNPJCliente : PAnsiChar;
           sCNPJParceiro : PAnsiChar;
           iParcelas : integer;
           dValor : double;
           iCupom : integer;
           iLeitor : integer
         ): PAnsiChar; stdcall;
            external 'TefClientmc.dll';

  function VendeCreditoParcAdm (
           sCNPJCliente : PAnsiChar;
           sCNPJParceiro : PAnsiChar;
           iParcelas : integer;
           dValor : double;
           iCupom : integer;
           iLeitor : integer
         ): PAnsiChar; stdcall;
            external 'TefClientmc.dll';

  function VendeDebito (
           sCNPJCliente : PAnsiChar;
           sCNPJParceiro : PAnsiChar;
           dValor : double;
           iCupom : integer;
           iLeitor : integer
         ): PAnsiChar; stdcall;
            external 'TefClientmc.dll';

  function VendeDebitoAVista (
            sCNPJCliente : PAnsiChar;
            sCNPJParceiro : PAnsiChar;
            dValor : double;
            iCupom : integer;
            iLeitor : integer
          ): PAnsiChar; stdcall;
            external 'TefClientmc.dll';

  function Confirmar (
           sCNPJCliente : PAnsiChar;
           sCNPJParceiro : PAnsiChar;
           iCupom : integer
         ): PAnsiChar; stdcall;
            external 'TefClientmc.dll';

  function Cancelar (
           sCNPJCliente : PAnsiChar;
           sCNPJParceiro : PAnsiChar;
           dValor : double;
           iCupom : integer;
           sControle : PAnsiChar;
           iLeitor : integer
         ): PAnsiChar; stdcall;
            external 'TefClientmc.dll';

  function Adm (
           sCNPJCliente : PAnsiChar;
           sCNPJParceiro : PAnsiChar;
           dValor : double;
           iCupom : integer;
           iLeitor : integer
         ): PAnsiChar; stdcall;
            external 'TefClientmc.dll';

  function Atv (
           sCNPJCliente : PAnsiChar;
           sCNPJParceiro : PAnsiChar;
           iCupom : integer;
           iLeitor : integer
         ): PAnsiChar; stdcall;
            external 'TefClientmc.dll';

  function Relatorio (
           sCNPJCliente : PAnsiChar;
           sCNPJParceiro : PAnsiChar;
           iCupom : integer;
           iLeitor : integer
         ): PAnsiChar; stdcall;
            external 'TefClientmc.dll';

  function Desfazimento (
           sCNPJCliente : PAnsiChar;
           sCNPJParceiro : PAnsiChar;
           iCupom : integer
         ): PAnsiChar; stdcall;
            external 'TefClientmc.dll';

  function SolicitarCPF (
           sCNPJCliente : PAnsiChar;
           sCNPJParceiro : PAnsiChar;
           iCupom : integer
         ): PAnsiChar; stdcall;
            external 'TefClientmc.dll';

 function ReimpressaoDireto (
           sCNPJCliente : PAnsiChar;
           sCNPJParceiro : PAnsiChar;
           sControle : PAnsiChar;
           sData : PAnsiChar;
           iCupom : integer;
           iLeitor : integer
         ): PAnsiChar; stdcall;
            external 'TefClientmc.dll';

  function VendeCarteiraDigitalPix (
           sCNPJCliente : PAnsiChar;
           sCNPJParceiro : PAnsiChar;
           dValor : double;
           iCupom : integer;
           iLeitor : integer
         ): PAnsiChar; stdcall;
            external 'TefClientmc.dll';

  function LinkPagamento(
           sCNPJCliente : PAnsiChar;
           sCNPJParceiro : PAnsiChar;
           iParcelas : integer;
           dValor : double;
           iCupom : integer;
           iQtdeItens : integer;
           sItens : PAnsiChar;
           sTelefone : PAnsiChar;
           sTexto  : PAnsiChar;
           iLeitor : integer
         ): PAnsiChar; stdcall;
            external 'TefClientmc.dll';

   function ListarLinkPagamentoPago(
           sCNPJCliente : PAnsiChar;
           sCNPJParceiro : PAnsiChar;
           dValor : double;
           iCupom : integer;
           iLeitor : integer
         ): PAnsiChar; stdcall;
            external 'TefClientmc.dll';

   function ManutencaoLinkPagamento(
           sCNPJCliente : PAnsiChar;
           sCNPJParceiro : PAnsiChar;
           iLeitor : integer
         ): PAnsiChar; stdcall;
            external 'TefClientmc.dll';

   function Reimpressao(
           sCNPJCliente : PAnsiChar;
           sCNPJParceiro : PAnsiChar;
           dValor : double;
           iCupom : integer;
           iLeitor : integer
         ): PAnsiChar; stdcall;
            external 'TefClientmc.dll';

   function ParceleMais(
           sCNPJCliente : PAnsiChar;
           sCNPJParceiro : PAnsiChar;
           dValor : double;
           iCupom : integer;
           iLeitor : integer
         ): PAnsiChar; stdcall;
            external 'TefClientmc.dll';

  function Teste (): PAnsiChar; stdcall; external 'TefClientmc.dll';

  var
  FormPrincipalIni: TFormPrincipalIni;

implementation

{$R *.dfm}

function TFormPrincipalIni.Transacionar(sTipo : string) : integer;
        var dValor : double;
        var iCupom : long;
        var iParcelas : long;

        var sData : PAnsiChar;
        var sControle : PAnsiChar;
        var sControle2 : string;
        var sRetorno : string;
        var sRetornoTransacao : string;
        var sMensagemTransacao : string;
        var sComprovanteTransacao : string;
        var vTipos : TStringList;
        var sLinha : string;
        var vLinhas : TStringList;
        var sListTipo : array of string;
        var iQtdeItens : integer;
        var sItens: PAnsiChar;
begin;


    if (sTipo = 'ATV') or (sTipo = 'RELATORIO') or (sTipo = 'SOLICITAR_CPF') then
        txbValor.Text := '0';

    if(txbValor.Text = '') then
    begin
         txbValor.Text := '0';
    end;

    if (txbCupom.Text = '') then
    begin
        txbCupom.Text := '0';
    end;

    if (txbParcela.Text = '') then
    begin
        txbParcela.Text := '0';
    end;

    if (txbQtdeItens.Text = '') then
    begin
        txbQtdeItens.Text := '0';
    end;

    iParcelas := StrToInt(txbParcela.Text);
    dValor := StrToFloat(txbValor.Text);
    iCupom := StrToInt(txbCupom.Text);

    sControle :=  PAnsiChar(AnsiString(txbControle.Text));
    sCNPJCliente :=  PAnsiChar(AnsiString(txbCnpjCliente.Text));
    sCNPJParceiro := PAnsiChar(AnsiString(txbCnpjParceiro.Text));
    sTelefone :=  PAnsiChar(AnsiString(txbTelefone.Text));
    sTexto := PAnsiChar(AnsiString(txbTexto.Text));
    data := FormatDateTime('dd/mm/yyyy',dtDate.Date);
    sData := PAnsiChar(AnsiString(data));

    iQtdeItens := StrToInt(txbQtdeItens.Text);
    sItens := PAnsiChar(AnsiString(txbItens.Text));


    case AnsiIndexStr(sTipo, ['CREDITO_A_VISTA', 'CREDITO_PARCELAMENTO_ADM', 'CREDITO_PARCELAMENTO_LOJA', 'DEBITO', 'DEBITO_A_VISTA', 'VENDE_CARTEIRA_DIGITAL_PIX', 'CANCELAR', 'LINK_PAGO', 'LISTAR_LINK_PAGO' , 'ADM' ,'ATV', 'SOLICITAR_CPF','REIMPRESSAO','REIMPRESSAO_DIRETO','RELATORIO','PARCELE_MAIS','MANUTENCAO_LINK_PAGO']) of
      0:begin
          if (sCNPJCliente = '') or (sCNPJParceiro = '') or (dValor = 0) or (iCupom = 0) then
          begin
            Application.MessageBox('Verifique os campos solicitados.','WARNING', MB_ICONEXCLAMATION) ;
            Exit;
          end;
          sRetorno := VendeCreditoVista(sCNPJCliente, sCNPJParceiro, dValor, iCupom, 0);
      end;
      1:begin
          if (sCNPJCliente = '') or (sCNPJParceiro = '') or (iParcelas = 0) or (dValor = 0) or (iCupom = 0) then
          begin
            Application.MessageBox('Verifique os campos solicitados.','WARNING', MB_ICONEXCLAMATION) ;
            Exit;
          end;
          sRetorno := VendeCreditoParcAdm(sCNPJCliente, sCNPJParceiro, iParcelas, dValor, iCupom, 0);
      end;
      2:begin
          if (sCNPJCliente = '') or (sCNPJParceiro = '') or (iParcelas = 0) or (dValor = 0) or (iCupom = 0) then
          begin
            Application.MessageBox('Verifique os campos solicitados.','WARNING', MB_ICONEXCLAMATION) ;
            Exit;
          end;
          sRetorno := VendeCreditoParcLoja(sCNPJCliente, sCNPJParceiro, iParcelas, dValor, iCupom, 0);
      end;
      3:begin
          if (sCNPJCliente = '') or (sCNPJParceiro = '') or (dValor = 0) or (iCupom = 0) then
          begin
            Application.MessageBox('Verifique os campos solicitados.','WARNING', MB_ICONEXCLAMATION) ;
            Exit;
          end;
          sRetorno := VendeDebito(sCNPJCliente, sCNPJParceiro, dValor, iCupom, 0);
      end;
      4:begin
          if (sCNPJCliente = '') or (sCNPJParceiro = '') or (dValor = 0) or (iCupom = 0) then
          begin
            Application.MessageBox('Verifique os campos solicitados.','WARNING', MB_ICONEXCLAMATION) ;
            Exit;
          end;
          sRetorno := VendeDebitoAVista(sCNPJCliente, sCNPJParceiro, dValor, iCupom, 0);
      end;
      5:begin
      if (sCNPJCliente = '') or (sCNPJParceiro = '') or (dValor = 0) or (iCupom = 0) then
          begin
            Application.MessageBox('Verifique os campos solicitados.','WARNING', MB_ICONEXCLAMATION) ;
            Exit;
          end;
          sRetorno := VendeCarteiraDigitalPix(sCNPJCliente, sCNPJParceiro, dValor, iCupom, 0);
      end;
      6:begin
          if (sCNPJCliente = '') or (sCNPJParceiro = '') or (dValor = 0) or (iCupom = 0) or (sControle = '') then
          begin
            Application.MessageBox('Verifique os campos solicitados.','WARNING', MB_ICONEXCLAMATION) ;
            Exit;
          end;
          sRetorno := Cancelar(sCNPJCliente, sCNPJParceiro, dValor, iCupom, sControle, 0);
      end;
      7:begin
          if (sCNPJCliente = '') or (sCNPJParceiro = '') or (iParcelas = 0) or (dValor = 0) or (iCupom = 0) or (sTelefone = '') or (sTexto = '')  then
          begin
            Application.MessageBox('Verifique os campos solicitados.','WARNING', MB_ICONEXCLAMATION) ;
            Exit;
          end;
          sRetorno := LinkPagamento(sCNPJCliente, sCNPJParceiro, iParcelas, dValor, iCupom, iQtdeItens, sItens, sTelefone, sTexto, 0);
      end;
      8:begin
          if (sCNPJCliente = '') or (sCNPJParceiro = '') or (dValor = 0) or (iCupom = 0) then
          begin
            Application.MessageBox('Verifique os campos solicitados.','WARNING', MB_ICONEXCLAMATION) ;
            Exit;
          end;
          sRetorno := ListarLinkPagamentoPago(sCNPJCliente, sCNPJParceiro, dValor, iCupom, 0);
      end;
      9:begin
          if (sCNPJCliente = '') or (sCNPJParceiro = '') or (dValor = 0) or (iCupom = 0) then
          begin
            Application.MessageBox('Verifique os campos solicitados.','WARNING', MB_ICONEXCLAMATION) ;
            Exit;
          end;
          sRetorno := Adm(sCNPJCliente, sCNPJParceiro, dValor, iCupom, 0);
      end;
      10:begin
          if (sCNPJCliente = '') or (sCNPJParceiro = '') or (iCupom = 0) then
          begin
            Application.MessageBox('Verifique os campos solicitados.','WARNING', MB_ICONEXCLAMATION) ;
            Exit;
          end;
          sRetorno := Atv(sCNPJCliente, sCNPJParceiro, iCupom, 0);
      end;
      11:begin
          if (sCNPJCliente = '') or (sCNPJParceiro = '') or (iCupom = 0) then
          begin
            Application.MessageBox('Verifique os campos solicitados.','WARNING', MB_ICONEXCLAMATION) ;
            Exit;
          end;
          sRetorno := SolicitarCPF(sCNPJCliente, sCNPJParceiro, iCupom);
      end;
      12:begin
          if (sCNPJCliente = '') or (sCNPJParceiro = '') or (dValor = 0) or (iCupom = 0) then
          begin
            Application.MessageBox('Verifique os campos solicitados.','WARNING', MB_ICONEXCLAMATION) ;
            Exit;
          end;
           sRetorno := Reimpressao(sCNPJCliente, sCNPJParceiro, dValor, iCupom, 0);
      end;
      13:begin
          if (sCNPJCliente = '') or (sCNPJParceiro = '') or (sControle = '') or (sData = '') or (iCupom = 0) then
          begin
            Application.MessageBox('Verifique os campos solicitados.','WARNING', MB_ICONEXCLAMATION) ;
            Exit;
          end;
           sRetorno := ReimpressaoDireto(sCNPJCliente, sCNPJParceiro, sControle, sData, iCupom, 0);
      end;
      14:begin
          if (sCNPJCliente = '') or (sCNPJParceiro = '') or (iCupom = 0) then
          begin
            Application.MessageBox('Verifique os campos solicitados.','WARNING', MB_ICONEXCLAMATION) ;
            Exit;
          end;
           sRetorno := Relatorio(sCNPJCliente, sCNPJParceiro, iCupom, 0);
      end;
      15:begin
          if (sCNPJCliente = '') or (sCNPJParceiro = '') or (dValor = 0) or (iCupom = 0) then
          begin
            Application.MessageBox('Verifique os campos solicitados.','WARNING', MB_ICONEXCLAMATION) ;
            Exit;
          end;
           sRetorno := ParceleMais(sCNPJCliente, sCNPJParceiro, dValor, iCupom, 0);
      end;
      16:begin
          if (sCNPJCliente = '') or (sCNPJParceiro = '') or (dValor = 0) or (iCupom = 0) then
          begin
            Application.MessageBox('Verifique os campos solicitados.','WARNING', MB_ICONEXCLAMATION) ;
            Exit;
          end;
           sRetorno := ManutencaoLinkPagamento(sCNPJCliente, sCNPJParceiro, 0);
      end;
    end;

    vLinhas := TStringList.Create;
    vTipos := TStringList.Create;

    sRetorno := StringReplace(sRetorno, #13#10, '¬', [rfReplaceAll, rfIgnoreCase]);
    ExtractStrings(['¬'], [], PChar(sRetorno), vLinhas);

    for sLinha in vLinhas do
    begin
      ExtractStrings([';'], [], PChar(sLinha), vTipos);

      if vTipos[0] = 'S' then
      begin
        sRetornoTransacao := vTipos[1];
        sMensagemTransacao := vTipos[2];

        if sRetornoTransacao = '0' then
        begin
          ShowMessage(sMensagemTransacao);
          Exit;
        end;
      end
      else
      begin
          if vTipos[0] = 'I' then
             sComprovanteTransacao := sComprovanteTransacao + vTipos[1] + #13#10;
      end;
      vTipos.Clear;
    end;
  ShowMessage(sMensagemTransacao + #13#10 + sComprovanteTransacao);
  sRetorno := Confirmar(sCNPJCliente, sCNPJParceiro, 12354);
  Result := 0;


end;


procedure TFormPrincipalIni.btnAdmClick(Sender: TObject);
begin
  Transacionar('ADM');
end;

procedure TFormPrincipalIni.btnAtvClick(Sender: TObject);
begin
  Transacionar('ATV');
end;

procedure TFormPrincipalIni.btnCancelaPixClick(Sender: TObject);
begin
  Transacionar('CANCELAR');
end;

procedure TFormPrincipalIni.btnCancelarDebitoClick(Sender: TObject);
begin
  Transacionar('CANCELAR');
end;

procedure TFormPrincipalIni.btnCancelCreditoClick(Sender: TObject);
begin
  Transacionar('CANCELAR');
end;

procedure TFormPrincipalIni.btnCreditoAVistaClick(Sender: TObject);
begin
  Transacionar('CREDITO_A_VISTA');
end;

procedure TFormPrincipalIni.btnCreditoParcelaADMClick(Sender: TObject);
begin
  Transacionar('CREDITO_PARCELAMENTO_ADM');
end;

procedure TFormPrincipalIni.btnCreditoParcelamentoLojaClick(Sender: TObject);
begin
  Transacionar('CREDITO_PARCELAMENTO_LOJA');
end;

procedure TFormPrincipalIni.btnEnviaLinkPagoClick(Sender: TObject);
begin
  Transacionar('LINK_PAGO');
end;

procedure TFormPrincipalIni.btnEnviaPixClick(Sender: TObject);
begin
  Transacionar('VENDE_CARTEIRA_DIGITAL_PIX');
end;

procedure TFormPrincipalIni.btnListaLinksClick(Sender: TObject);
begin
  Transacionar('LISTAR_LINK_PAGO');
end;

procedure TFormPrincipalIni.btnManutLinkClick(Sender: TObject);
begin
  Transacionar('MANUTENCAO_LINK_PAGO');
end;

procedure TFormPrincipalIni.btnParceleMaisClick(Sender: TObject);
begin
  Transacionar('PARCELE_MAIS');
end;

procedure TFormPrincipalIni.btnReimpressaoClick(Sender: TObject);
begin
  Transacionar('REIMPRESSAO');
end;

procedure TFormPrincipalIni.btnReimpressaoDiretaClick(Sender: TObject);
begin
  Transacionar('REIMPRESSAO_DIRETO');
end;

procedure TFormPrincipalIni.btnRelatorioClick(Sender: TObject);
begin
  Transacionar('RELATORIO');
end;

procedure TFormPrincipalIni.btnSolicitarCpfClick(Sender: TObject);
begin
  Transacionar('SOLICITAR_CPF');
end;

procedure TFormPrincipalIni.btnVendeDebitoAVistaClick(Sender: TObject);
begin
  Transacionar('DEBITO_A_VISTA');
end;

procedure TFormPrincipalIni.btnVendeDebitoClick(Sender: TObject);
begin
  Transacionar('DEBITO');
end;

procedure TFormPrincipalIni.FormCreate(Sender: TObject);
begin
  sNomeOperadora := '';
  sValoresSplit := '';
  sTextSplit := '';
  dtDate.Date := Now;
  labBarraCartao.Font.Color := clTeal;
  labBarraQR.Font.Color := clFuchsia;
  labBarraLinkPago.Font.Color := clAqua;
  labClient.Font.Color := clMaroon;
  labOutros.Font.Color := clOlive;

end;


end.
