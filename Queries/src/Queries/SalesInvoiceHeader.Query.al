query 52004 "Sales Invoice Header Power BI"
{
    Caption = 'Sales Invoice Header Power BI';
    QueryType = Normal;

    elements
    {
        dataitem(SalesInvoiceHeader; "Sales Invoice Header")
        {
            column(Sell_to_Customer_No_; "Sell-to Customer No.")
            { }
            column(CurrencyCode; "Currency Code")
            {
            }
            column(No_; "No.")
            { }
            column("Núm__Contrato"; "Núm. Contrato")
            { }

        }
    }


    trigger OnBeforeOpen()
    begin

    end;
}
