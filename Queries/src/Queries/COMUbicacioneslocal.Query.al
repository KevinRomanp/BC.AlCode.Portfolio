query 52003 "COM - Ubicaciones local"
{
    Caption = 'COM - Ubicaciones local Power BI';
    QueryType = Normal;

    elements
    {
        dataitem("COMUbicacionesLocal"; "COM - Ubicaciones Local")
        {
            column("Descripción"; "Descripción")
            { }
            column("Código_Ubicación"; "Código Ubicación")
            { }
        }
    }


    trigger OnBeforeOpen()
    begin

    end;
}
