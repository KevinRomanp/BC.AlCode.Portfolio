page 50103 SalesInvoiceAPI
{
    APIGroup = 'API';
    APIPublisher = 'Kevin';
    APIVersion = 'v2.0';
    ApplicationArea = All;
    Caption = 'facturaVentaAPI';
    DelayedInsert = true;
    EntityName = 'salesInvoiceAPI';
    EntitySetName = 'salesInvoicesAPI';
    PageType = API;
    SourceTable = "Sales Header";
    SourceTableView = WHERE("Document Type" = FILTER(Invoice));
    InsertAllowed = true;
    ModifyAllowed = true;
    DeleteAllowed = false;
    ODataKeyFields = SystemId;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field(documentType; Rec."Document Type")
                {
                    Caption = 'Document Type';
                }
                field(SystemId; Rec.SystemId)
                { }
                field(SystemModifiedAt; Rec.SystemModifiedAt)
                { }
                field(no; Rec."No.")
                {
                    Caption = 'No.';
                }
                field(documentDate; Rec."Document Date")
                {
                    Caption = 'Document Date';
                }
                field(sellToCustomerNo; Rec."Sell-to Customer No.")
                {
                    Caption = 'Sell-to Customer No.';
                }
                field(dueDate; Rec."Due Date")
                {
                    Caption = 'Due Date';
                }
                field("PaymentDiscountPercentaje"; Rec."Payment Discount %")
                {

                }
                field("DSNNoComprobanteFiscal"; Rec."DSNNo. Comprobante Fiscal")
                { }

                field(currencyCode; Rec."Currency Code")
                {
                    Caption = 'Currency Code';
                }
                field("CurrencyFactor"; Rec."Currency Factor")
                {
                    //TODO: tienen que dividir entre 1
                }
                field("ShipToCode"; Rec."Ship-to Code")
                {

                }
                field("AppliesToDocNo"; Rec."Applies-to Doc. No.")
                {

                }
                field("ShortcutDimension1Code"; Rec."Shortcut Dimension 1 Code")
                {

                }
                field("DSNNoComprobanteFiscalRel"; Rec."DSNNo. Comprobante Fiscal Rel.")
                {

                }

                part(SalesInvoiceSubformAPI; "SalesInvoiceSubformAPI")
                {
                    SubPageLink = "Document No." = FIELD("No.");
                }
            }
        }
    }
}
