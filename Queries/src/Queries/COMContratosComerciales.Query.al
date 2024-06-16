query 52002 "COM-ContratosComerciales Query"
{
    Caption = 'COM-ContratosComerciales Power BI';
    QueryType = Normal;

    elements
    {
        dataitem("ContratosComerciales"; "COM-Contratos Comerciales")
        {
            column(Fecha_Fin; "Fecha Fin")
            { }
            column("Núm__Contrato"; "Núm. Contrato")
            { }
        }
    }

    trigger OnBeforeOpen()
    begin

    end;
}
