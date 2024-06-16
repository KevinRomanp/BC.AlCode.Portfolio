query 52001 "COM-locales Power BI"
{
    Caption = 'COM-locales Power BI';
    QueryType = Normal;

    elements
    {
        dataitem("COMLocales"; "COM-Locales")
        {
            column(metros_2; "metros 2")
            {

            }
            column(Entidad_Legal; "Entidad Legal")
            { }
            column("Descripción"; "Descripción")
            { }
            column("Ubicación"; "Ubicación")
            { }
        }
    }

    trigger OnBeforeOpen()
    begin

    end;
}
