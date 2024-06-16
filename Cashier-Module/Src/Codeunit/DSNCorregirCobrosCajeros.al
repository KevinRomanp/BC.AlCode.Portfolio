codeunit 51102 "Corregir Cobros Cajeros"
{
    trigger OnRun()
    var

    begin

    end;

    [Scope('Cloud')]
    procedure SetParameters(var TipoDoc: Enum "Sales Document Type"; var NoFacturaAsignar: Code[20]; var NoDoc: code[20])
    begin
        TipoDoc2 := TipoDoc;
        NoDoc2 := NoDoc;
        NoFacturaAsignar2 := NoFacturaAsignar;
    end;

    [Scope('Cloud')]
    procedure Corregir()
    begin
        SalesInvoiceHeader.get(NoFacturaAsignar2);
        CobrosCajeros.Reset();
        CobrosCajeros.SetRange("Tipo documento", TipoDoc2);
        CobrosCajeros.SetRange("No. Documento", NoDoc2);
        CobrosCajeros.SetRange("No. Registro Factura", '');
        CobrosCajeros.FindSet();
        repeat
            CobrosCajeros."No. Registro Factura" := NoFacturaAsignar2;
            CobrosCajeros."Fecha registro" := SalesInvoiceHeader."Posting Date";
            CobrosCajeros.Modify();
        until CobrosCajeros.Next() = 0;
    end;

    var
        TipoDoc2: Enum "Sales Document Type";
        NoDoc2: Code[20];
        NoFacturaAsignar2: code[20];
        CobrosCajeros: record "Cobros Cajeros";
        SalesInvoiceHeader: record "Sales Invoice Header";
}
