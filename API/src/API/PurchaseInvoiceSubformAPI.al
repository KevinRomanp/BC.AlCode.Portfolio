page 50104 PurchaseInvoiceSubformAPI
{
    APIGroup = 'API';
    APIPublisher = 'Kevin';
    APIVersion = 'v2.0';
    ApplicationArea = All;
    Caption = 'purchaseInvoiceSubformAPI';
    DelayedInsert = true;
    EntityName = 'purchaseInvoiceSubformAPI';
    EntitySetName = 'purchaseInvoiceSubformsAPI';
    PageType = API;
    SourceTable = "Purchase Line";
    SourceTableView = WHERE("Document Type" = FILTER(Invoice));
    InsertAllowed = true;
    ModifyAllowed = true;
    DeleteAllowed = false;
    ODataKeyFields = SystemId;
    Permissions = tabledata "Purchase Line" = RIM;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field(documentType;
                Rec."Document Type")
                {
                    Caption = 'Document Type';
                }
                field(SystemId; Rec.SystemId)
                { }
                field(SystemModifiedAt; Rec.SystemModifiedAt)
                { }
                field(documentNo; Rec."Document No.")
                {
                    Caption = 'Document No.';
                }
                field(lineNo; Rec."Line No.")
                {
                    Caption = 'Line No.';
                }
                field("No"; Rec."No.")
                {

                }
                field("VATProdPostingGroup"; Rec."VAT Prod. Posting Group")
                {

                }
                //TODO: van a tener que poner un grupo contable en su aplicacion para enviarlo a nosotros. Esto es para el campo exenta
                field(description; Rec.Description)
                {
                    Caption = 'Description';
                }
                field(quantity; Rec.Quantity)
                {
                    Caption = 'Quantity';
                }
                field(unitPriceLCY; Rec."Unit Price (LCY)")
                {
                    Caption = 'Unit Price (LCY)';
                }
                field(lineDiscountAmount; Rec."Line Discount Amount")
                {
                    Caption = 'Line Discount Amount';
                }
            }
        }
    }
}
