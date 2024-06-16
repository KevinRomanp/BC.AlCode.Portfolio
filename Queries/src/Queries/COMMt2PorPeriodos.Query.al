query 52006 "COM- Mt2 por periodos"
{
    Caption = 'COM- Mt2 por periodos Power BI';
    QueryType = Normal;

    elements
    {
        dataitem("Mts2PorPeriodos"; "Mts.2 por periodos")
        {
            column(Valor_Mts_2; "Valor Mts.2")
            { }
            column(No_; "No.")
            {
            }
            column(Giro; Giro)
            { }
        }
    }


    trigger OnBeforeOpen()
    begin

    end;
}
