query 50100 SaldosClientesAPI
{
    APIGroup = 'API';
    APIPublisher = 'Kevin';
    APIVersion = 'v2.0';
    EntityName = 'saldosClientesAPI';
    EntitySetName = 'saldosClientesAPI';
    QueryType = API;
    elements
    {
        dataitem(customer; Customer)
        {
            column(SystemId; SystemId)
            { }
            column(SystemModifiedAt; SystemModifiedAt)
            { }
            column(no; "No.")
            {
            }
            column(balanceLCY; "Balance (LCY)")
            {
            }
            column(globalDimension1Code; "Global Dimension 1 Code")
            {
            }
        }
    }

    trigger OnBeforeOpen()
    begin

    end;
}
