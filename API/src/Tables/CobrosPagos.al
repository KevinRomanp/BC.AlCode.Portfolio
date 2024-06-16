table 50100 "Cobros-Pagos "
{
    Caption = 'Cobros-Pagos ';
    DataClassification = CustomerContent;

    fields
    {
        field(1; "Tipo Transacción"; Integer)
        {
            Caption = 'Tipo Transacción';
        }
        field(2; "No. Documento"; Code[20])
        {
            Caption = 'No. Documento';
        }
        field(3; "No. Linea"; Integer)
        {
            Caption = 'No. Linea';
        }
        field(4; Importe; Decimal)
        {
            Caption = 'Importe';
        }
        field(5; "No. Documento Cliente"; Code[20])
        {
            Caption = 'No. Documento Cliente';
        }
        field(6; "Fecha Transaccion"; Date)
        {
            Caption = 'Fecha Transaccion';
        }
        field(7; "No. Cuenta"; Code[20])
        {
            Caption = 'No. Cuenta';
        }
        field(8; "Tipo Contrapartida"; Integer)
        {
            Caption = 'Tipo Contrapartida';
        }
        field(9; "No. Cuenta Contrapartida"; Code[20])
        {
            Caption = 'No. Cuenta Contrapartida';
        }
        field(10; "Tipo Cuenta"; Integer)
        {
            Caption = 'Tipo Cuenta';
        }
        field(11; Procesado; Boolean)
        {
            Caption = 'Procesado';
        }
        field(12; Descripcion; Code[50])
        {
            Caption = 'Descripcion';
        }
    }
    keys
    {
        key(PK; "Tipo Transacción")
        {
            Clustered = true;
        }
    }
}
