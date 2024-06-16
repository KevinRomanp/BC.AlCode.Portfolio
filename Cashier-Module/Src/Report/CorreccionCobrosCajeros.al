report 51105 "Correccion Cobros Cajeros"
{
    ApplicationArea = All;
    Caption = 'Correccion Cobros Cajeros';
    UsageCategory = Tasks;
    ProcessingOnly = true;

    dataset
    {
        dataitem(Integer; Integer)
        {
            DataItemTableView = SORTING(Number) WHERE(Number = CONST(1));
            //RequestFilterFields = "Order No.";

            trigger OnAfterGetRecord()
            var
                Text002: Label 'Debe seleccionar No. Documento.';
                CorregirCobrosCajeros: codeunit "Corregir Cobros Cajeros";
            begin
                if NoDoc = '' then
                    Error(Text002);
                CorregirCobrosCajeros.SetParameters(TipoDoc, NoFacturaAsignar, NoDoc);
                CorregirCobrosCajeros.corregir();
            end;
        }
    }
    requestpage
    {
        SaveValues = true;
        layout
        {
            area(Content)
            {
                group(Filtros)
                {
                    field(TipoDoc; tipodoc)
                    {
                        ApplicationArea = all;
                        Caption = 'Tipo Documento';
                    }
                    field(NoFacturaAsignar; NoFacturaAsignar)
                    {
                        ApplicationArea = all;
                        Caption = 'No. Documento Registrado';
                        TableRelation = "Sales Invoice Header"."No.";
                        trigger OnValidate()
                        var
                            SalesInvoiceHeader2: Record "Sales Invoice Header";
                        begin
                            SalesInvoiceHeader2.get(NoFacturaAsignar);
                            NoDoc := SalesInvoiceHeader2."Order No."
                        end;

                    }
                    field(NoDoc; NoDoc)
                    {
                        ApplicationArea = all;
                        Caption = 'No. Documento';
                        Editable = false;

                    }
                }
            }
        }
        actions
        {
            area(Processing)
            {
            }
        }
    }
    var
        TipoDoc: Enum "Sales Document Type";
        NoDoc: code[20];
        NoFacturaAsignar: code[20];
}
