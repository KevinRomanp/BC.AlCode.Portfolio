page 50102 PurchaseInvoiceAPI
{
    APIGroup = 'API';
    APIPublisher = 'Kevin';
    APIVersion = 'v2.0';
    ApplicationArea = All;
    Caption = 'purchaseInvoiceAPI';
    DelayedInsert = true;
    EntityName = 'purchaseInvoiceAPI';
    EntitySetName = 'purchaseInvoicesAPI';
    PageType = API;
    SourceTable = "Purchase Header";
    SourceTableView = WHERE("Document Type" = FILTER(Invoice));
    InsertAllowed = true;
    ModifyAllowed = true;
    DeleteAllowed = false;
    ODataKeyFields = SystemId;
    Permissions =
        tabledata "Purchase Header" = RIM;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field(SystemId; Rec.SystemId)
                { }
                field(SystemModifiedAt; Rec.SystemModifiedAt)
                { }
                field(no; Rec."No.")
                {
                    Caption = 'No.';
                }

                field(buyFromVendorNo; Rec."Buy-from Vendor No.")
                {
                    Caption = 'Buy-from Vendor No.';
                }
                field(ShipToAddress; Rec."Ship-to Address") { }
                field(ShipToAddress2; Rec."Ship-to Address 2") { }
                field(ShipToCity; Rec."Ship-to City") { }
                field(DocumentDate; Rec."Document Date") { }
                field(PostingDate; Rec."Posting Date") { }
                field(dueDate; Rec."Due Date")
                {
                    Caption = 'Due Date';
                }
                field(VendorInvoiceNo; Rec."Vendor Invoice No.") { }
                field(VATRegistrationNo; Rec."VAT Registration No.") { }
                field("DSNNoComprobanteFiscal"; Rec."DSNNo. Comprobante Fiscal")
                {
                }
                field("DSNNoComprobanteFiscalRel"; Rec."DSNNo. Comprobante Fiscal Rel.")
                {
                }
                field(DSNTipoRetencion; Rec."DSNTipo Retencion") { }
                field(DSNFechaVencimientoNCF; Rec."DSNFecha vencimiento NCF") { }
                field(DSNTipoITBIS; Rec."DSNTipo ITBIS") { }
                field(DSNProporcionalidad; Rec.DSNProporcionalidad) { }
                field(documentType; Rec."Document Type")
                {
                    Caption = 'Document Type';
                }
                field(Correction; Rec.Correction) { }
                field(currencyCode; Rec."Currency Code")
                {
                    Caption = 'Currency Code';
                }
                field(PaymentTermsCode; Rec."Payment Terms Code") { }
                field(PaymentMethodCode; Rec."Payment Method Code") { }

                field(PmtDiscountDate; Rec."Pmt. Discount Date") { }
                field("PaymentDiscountPercentaje"; Rec."Payment Discount %")
                {
                    Caption = 'PaymentDiscountPercentaje';
                }
                field("CurrencyFactor"; Rec."Currency Factor")
                {
                    Caption = 'Currency Factor';
                }
                field("AppliesToDocNo"; Rec."Applies-to Doc. No.")
                {
                    Caption = 'Applies-to Doc No';
                }
                field("ShortcutDimension1Code"; Rec."Shortcut Dimension 1 Code")
                {
                    Caption = 'ShortcutDimension1Code';
                }
                field(ShortcutDimension2Code; Rec."Shortcut Dimension 2 Code") { }








                //TODO: faltan campos
                part(PurchaseInvoiceSubformAPI; "PurchaseInvoiceSubformAPI")
                {
                    ApplicationArea = basic, suite;
                    EntityName = 'purchaseInvoiceSubformAPI';
                    EntitySetName = 'purchaseInvoiceSubformsAPI';
                    SubPageLink = "Document No." = field("No.");
                }

            }
        }
    }
}
