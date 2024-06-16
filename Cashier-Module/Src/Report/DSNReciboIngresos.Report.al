report 51101 "ReciboIngresos"
//Este reporte no se va a utilizar, fue cambiado por el 51104 //fes 25-08-2023
{
    Caption = 'DSReciboIngresos';
    /*

DefaultLayout = RDLC;
RDLCLayout = 'Src\RDLC\DSReciboIngresos.rdl';
Caption = 'Recibo de ingresos';

dataset
{
dataitem("Bank Account Ledger Entry"; "Bank Account Ledger Entry")
{
DataItemTableView = SORTING("Document Type", "Bank Account No.", "Posting Date") WHERE("Document Type" = FILTER(Payment | Refund));
RequestFilterFields = "Bank Account No.", "Posting Date", "Document No.";
column(EntryNo_CustLedgEntry; "Entry No.")
{
}
column(Comment; Glentry.Comment)
{ }
column(PaymentMethod; CustomerLedgerEntry."Payment Method Code")
{ }
column(NoAplicado; NoAplicado)
{ }
column(CustomerPhoneNo; CustomerPhoneNo)
{ }
column(hoy; hoy)
{ }
column(Document_Type; "Document Type")
{ }
column(Amount; Abs(Amount))
{ }
column(Customer_No_; "Bal. Account No.")
{ }
column(Customer_Name; DSNBeneficiario)
{ }
column(Posting_Date; "Posting Date")
{ }
column(CustomerVatNo; CustomerVatNo)
{ }
column(CIPicture; CompanyInfo.Picture)
{
}
column(CIName; CompanyInfo.Name)
{
}
column(CompanyInfo_RNC; CompanyInfo."VAT Registration No.")
{
}
column(CompanyInfo_Address; CompanyInfo.Address)
{
}
column(CompanyInfo_Cuidad; CompanyInfo.City)
{
}
column(CompanyInfo_Address2; CompanyInfo.County)
{
}
column(CompanyInfo_Phone; CompanyInfo."Phone No.")
{
}
column(RealizadoPor; RealizadoPor)
{ }
column(RealizadoPorDate; RealizadoPorDate)
{ }
column(Moneda; Moneda)
{ }


column(Document_No__; "Document No.")
{ }
column(SumaDeString; SumaDeString)
{ }
column(Description; Description)
{ }

column(FechaLbl; FechaLbl)
{ }

column(Text001; Text001)
{ }
column(IngresoLbl; IngresoLbl)
{ }
column(ReferenciaLbl; ReferenciaLbl)
{ }
column(BancoLbl; BancoLbl)
{ }
column(FormaPagoLbl; FormaPagoLbl)
{ }
column("NÚMEROLbl"; "NÚMEROLbl")
{ }
column(DocumentoLbl; DocumentoLbl)
{ }
column(NCFLbl; NCFLbl)
{ }
column(REFERENCIALbl2; REFERENCIALbl2)
{ }
column(BalanceLbl; BalanceLbl)
{ }
column(AplicadoLbl; AplicadoLbl)
{ }
column(TotalAplicadoLbl; TotalAplicadoLbl)
{ }
column(TotalNoAplicadoLbl; TotalNoAplicadoLbl)
{ }
column(Fecha2Lbl; Fecha2Lbl)
{

}
column(Text030; Text030)
{
}
column(TextDivisa; TextDivisa)
{ }

dataitem(PageLoop; "Integer")
{
DataItemTableView = SORTING(Number) WHERE(Number = CONST(1));
column(CustAddr6; CustAddr[6])
{
}

column(PostDate; "Bank Account Ledger Entry"."Posting Date")
{ }
column(CompanyInfo_Picture; CompanyInfo.Picture)
{ }


column(CustAddr7; CustAddr[7])
{
}
column(CustAddr8; CustAddr[8])
{
}
column(CustAddr4; CustAddr[4])
{
}
column(CustAddr5; CustAddr[5])
{
}
column(CustAddr3; CustAddr[3])
{
}
column(CustAddr1; CustAddr[1])
{
}
column(CustAddr2; CustAddr[2])
{
}
column(CompanyAddr1; CompanyAddr[1])
{
}
column(CompanyAddr2; CompanyAddr[2])
{
}
column(CompanyAddr3; CompanyAddr[3])
{
}
column(CompanyAddr4; CompanyAddr[4])
{
}
column(CompanyAddr5; CompanyAddr[5])
{
}
column(CompanyAddr6; CompanyAddr[6])
{
}
column(CompanyAddr7; CompanyAddr[7])
{
}
column(CompanyAddr8; CompanyAddr[8])
{
}
column(CompanyInfoEMail; CompanyInfo."E-Mail")
{
}
column(CompanyInfoPhoneNo; CompanyInfo."Phone No.")
{
}
column(CompanyInfoHomePage; CompanyInfo."Home Page")
{
}
column(CompanyInfoVATRegNo; CompanyInfo."VAT Registration No.")
{
}
column(CompanyInfoGiroNo; CompanyInfo."Giro No.")
{
}
column(CompanyInfoBankName; CompanyInfo."Bank Name")
{
}
column(CompanyInfoBankAccountNo; CompanyInfo."Bank Account No.")
{
}
column(ReportTitle; ReportTitle)
{
}
column(BankAccountName; BankAccount.Name)
{ }
column(PaymentDiscountTitle; PaymentDiscountTitle)
{
}
column(CompanyInfoPhoneNoCaption; CompanyInfoPhoneNoCaptionLbl)
{
}
column(CompanyInfoGiroNoCaption; CompanyInfoGiroNoCaptionLbl)
{
}
column(CompanyInfoBankNameCptn; CompanyInfoBankNameCptnLbl)
{
}
column(CompanyInfoBankAccNoCptn; CompanyInfoBankAccNoCptnLbl)
{
}
column(ReceiptNoCaption; ReceiptNoCaptionLbl)
{
}
column(CompanyInfoVATRegNoCptn; CompanyInfoVATRegNoCptnLbl)
{
}
column(CustLedgEntry1PostDtCptn; CustLedgEntry1PostDtCptnLbl)
{
}
column(AmountCaption; AmountCaptionLbl)
{
}
column(PaymAmtSpecificationCptn; PaymAmtSpecificationCptnLbl)
{
}
column(PmtTolInvCurrCaption; PmtTolInvCurrCaptionLbl)
{
}
column(DocumentDateCaption; DocumentDateCaptionLbl)
{
}
column(CompanyInfoEMailCaption; CompanyInfoEMailCaptionLbl)
{
}
column(CompanyInfoHomePageCptn; CompanyInfoHomePageCptnLbl)
{
}
dataitem(Total; "Integer")
{
DataItemTableView = SORTING(Number) WHERE(Number = CONST(1));
column(DSRemainingAmountLCY; DSRemainingAmountLCY)
{
}
column(RemainingAmount; RemainingAmount)
{
}
column(PaymAmtNotAllocatedCptn; PaymAmtNotAllocatedCptnLbl)
{
}
column(CustLedgEntryOrgAmtCptn; CustLedgEntryOrgAmtCptnLbl)
{
}
column(ExternalDocumentNoCaption; ExternalDocumentNoCaptionLbl)
{
}
}

}

trigger OnAfterGetRecord()
begin

hoy := System.CurrentDateTime();

SumaDe := ABS("Bank Account Ledger Entry".Amount);
SumaDeString := Format(SumaDe, 9);
CompanyInfo.Get();
CompanyInfo.CalcFields(Picture);
Customer.Get("Bal. Account No.");
FormatAddr.Customer(CustAddr, Customer);

IF "Bank Account Ledger Entry"."Currency Code" = '' THEN
textDivisa := 'RD$ '
ELSE
textDivisa := "Bank Account Ledger Entry"."Currency Code";

if not Currency.Get("Currency Code") then
Currency.InitRoundingPrecision();

if "Document Type" = "Document Type"::Payment then begin
ReportTitle := Text003;
PaymentDiscountTitle := Text006;
end else begin
ReportTitle := Text004;
PaymentDiscountTitle := Text007;
end;
//Para halar el campo comentario y usarlo en referencia
GlEntry.Reset();
GlEntry.SetRange("Document No.", "Bank Account Ledger Entry"."Document No.");
GlEntry.FindFirst();

DetailedCustomerLedgerEntry.Reset();
DetailedCustomerLedgerEntry.SetCurrentKey("Document No.", "Document Type", "Posting Date");
DetailedCustomerLedgerEntry.SetRange("Document No.", "Document No.");
DetailedCustomerLedgerEntry.SetRange("Posting Date", "Posting Date");
DetailedCustomerLedgerEntry.SetRange("Entry Type", DetailedCustomerLedgerEntry."Entry Type"::"Initial Entry");
DetailedCustomerLedgerEntry.FindFirst();

DetailedCustomerLedgerEntry2.Reset();
DetailedCustomerLedgerEntry2.SetCurrentKey("Cust. Ledger Entry No.", "Entry Type", "Posting Date");
DetailedCustomerLedgerEntry2.SetFilter("Cust. Ledger Entry No.", '<>%1', DetailedCustomerLedgerEntry."Cust. Ledger Entry No.");
DetailedCustomerLedgerEntry2.SetRange("Document No.", DetailedCustomerLedgerEntry."Document No.");
if DetailedCustomerLedgerEntry2.FindSet() then
repeat
CustomerLedgerEntry.get(DetailedCustomerLedgerEntry2."Cust. Ledger Entry No.");
CustomerLedgerEntry.CalcFields("Remaining Amount");
NoAplicado += CustomerLedgerEntry."Remaining Amount";
until DetailedCustomerLedgerEntry2.Next() = 0;

Customer.Reset();
Customer.SetRange("No.", "Bal. Account No.");
Customer.FindFirst();
CustomerVatNo := Customer."VAT Registration No.";
CustomerPhoneNo := customer."Phone No.";
BankAccount.get("Bank Account No.");
end;

trigger OnPreDataItem()
begin
CompanyInfo.Get();
FormatAddr.Company(CompanyAddr, CompanyInfo);
GLSetup.Get();
end;
}
}
var

SalesInvoiceHeader: record "Sales Invoice Header";
ConfMedioPagos: record "Conf. Medios de Pagos";
DetailedCustomerLedgerEntry: Record "Detailed Cust. Ledg. Entry";
DetailedCustomerLedgerEntry2: Record "Detailed Cust. Ledg. Entry";
CustomerLedgerEntry: Record "Cust. Ledger Entry";
DSHistRetencionClientes: Record "DSNHist. Retencion Clientes";
GlEntry: Record "G/L Entry";
GLSetup: Record "General Ledger Setup";
Customer: Record Customer;
Currency: Record Currency;
BankAccount: record "Bank Account";
CustomerPhoneNo: Text[30];
RealizadoPorDate: DateTime;

RealizadoPor: Text[200];
Moneda: text[4];
TextDivisa: text[10];
SumaDe: Decimal;
SumaDeString: text[50];
CustomerVatNo: Code[20];
hoy: DateTime;

FormatAddr: Codeunit "Format Address";
ReportTitle: Text[30];
PaymentDiscountTitle: Text[30];
CompanyAddr: array[8] of Text[100];
CustAddr: array[8] of Text[100];
AmountInWords: array[2] of text[80];
RemainingAmount: Decimal;
DSRemainingAmountLCY: Decimal;
NoAplicado: Decimal;
Text001: Label 'Hemos acreditado la suma de ';
IngresoLbl: Label 'INGRESO';

FechaLbl: Label 'Fecha';
Fecha2Lbl: label 'FECHA';
ReferenciaLbl: Label 'Referencia';
BancoLbl: Label 'Banco';
FormaPagoLbl: label 'Forma de pago';
NÚMEROLbl: Label 'NÚMERO';
DocumentoLbl: label 'DOCUMENTO';
NCFLbl: label 'NCF';
REFERENCIALbl2: label 'REFERENCIA';
BalanceLbl: Label 'BALANCE';
AplicadoLbl: label 'APLICADO';
TotalAplicadoLbl: Label 'TOTAL APLICADO';
TotalNoAplicadoLbl: label 'TOTAL NO APLICADO';
Text030: Label 'REALIZADO POR';


Text003: Label 'Payment Receipt';
Text004: Label 'Payment Voucher';
Text006: Label 'Pmt. Disc. Given';
Text007: Label 'Pmt. Disc. Rcvd.';
PmtTolPmtCurr: Decimal;
ShowAmount: Decimal;
CompanyInfoPhoneNoCaptionLbl: Label 'Phone No.';
CompanyInfoGiroNoCaptionLbl: Label 'Giro No.';
CompanyInfoBankNameCptnLbl: Label 'Bank';
CompanyInfoBankAccNoCptnLbl: Label 'Account No.';
ReceiptNoCaptionLbl: Label 'Receipt No.';
CompanyInfoVATRegNoCptnLbl: Label 'GST Reg. No.';
CustLedgEntry1PostDtCptnLbl: Label 'Posting Date';
AmountCaptionLbl: Label 'Amount';
PaymAmtSpecificationCptnLbl: Label 'Payment Amount Specification';
PmtTolInvCurrCaptionLbl: Label 'Pmt Tol.';
DocumentDateCaptionLbl: Label 'Document Date';
CompanyInfoEMailCaptionLbl: Label 'Email';
CompanyInfoHomePageCptnLbl: Label 'Home Page';
PaymAmtNotAllocatedCptnLbl: Label 'Payment Amount Not Allocated';
CustLedgEntryOrgAmtCptnLbl: Label 'Payment Amount';
ExternalDocumentNoCaptionLbl: Label 'External Document No.';



protected var
CompanyInfo: Record "Company Information";


local procedure amountInWordsUSFormat(amount: Decimal)
var
ReportCheck: report DSNCheckTranslationDS;

begin
ReportCheck.InitTextVariable();
ReportCheck.FormatNoText(AmountInWords, amount, '');
end;


local procedure CurrencyCode(SrcCurrCode: Code[10]): Code[10]
begin
if SrcCurrCode = '' then
exit(GLSetup."LCY Code");
exit(SrcCurrCode);
end;
*/
}

