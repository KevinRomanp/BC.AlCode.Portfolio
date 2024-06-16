query 52000 "Sales Invoice Line Power BI"
{
    Caption = 'Sales Invoice Line Power BI';
    QueryType = Normal;

    elements
    {
        dataitem(SalesInvoiceLine; "Sales Invoice Line")
        {
            column(Document_No_; "Document No.")
            { }
            column(AmountIncludingVAT; "Amount Including VAT")
            {
            }
            column(PostingDate; "Posting Date")
            {
            }
            column(Id__Local; "Id. Local")
            { }
            column(Giro; Giro)
            { }

        }
    }

    trigger OnBeforeOpen()
    begin

    end;
}
