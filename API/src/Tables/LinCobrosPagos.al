table 50101 "Lin. Cobros-Pagos "
{
    Caption = 'Lin. Cobros-Pagos ';
    DataClassification = CustomerContent;

    fields
    {
        field(1; "Tipo Transaccion"; Integer)
        {
            Caption = 'Tipo Transaccion';
        }
        field(2; "No Documento"; Code[20])
        {
            Caption = 'No Documento';
        }
        field(3; "Cod. Cliente - Proveedor"; Code[20])
        {
            Caption = 'Cod. Cliente - Proveedor';
        }
        field(4; "Fecha Transaccion"; Date)
        {
            Caption = 'Fecha Transaccion';
        }
        field(5; "No. Linea"; Integer)
        {
            Caption = 'No. Linea';
        }
        field(6; Importe; Decimal)
        {
            Caption = 'Importe';
        }
        field(7; "Cod. Divisa"; Code[10])
        {
            Caption = 'Cod. Divisa';
        }
        field(8; "Tasa de Cambio"; Decimal)
        {
            Caption = 'Tasa de Cambio';
        }
        field(9; "Aplica a No. Documento"; Code[20])
        {
            Caption = 'Aplica a No. Documento';
        }
    }
    keys
    {
        key(PK; "Tipo Transaccion")
        {
            Clustered = true;
        }
    }
}
