page 50107 LinCobrosPagosAPI
{
    APIGroup = 'API';
    APIPublisher = 'Kevin';
    APIVersion = 'v2.0';
    ApplicationArea = All;
    Caption = 'linCobrosPagosAPI';
    DelayedInsert = true;
    EntityName = 'linCobrosPagosAPI';
    EntitySetName = 'linCobrosPagosAPI';
    PageType = API;
    SourceTable = "Lin. Cobros-Pagos ";
    ODataKeyFields = SystemId;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field(tipoTransaccion; Rec."Tipo Transaccion")
                {
                    Caption = 'Tipo Transaccion';
                }
                field(SystemId; Rec.SystemId)
                { }
                field(SystemModifiedAt; Rec.SystemModifiedAt)
                { }
                field(noDocumento; Rec."No Documento")
                {
                    Caption = 'No Documento';
                }
                field(codClienteProveedor; Rec."Cod. Cliente - Proveedor")
                {
                    Caption = 'Cod. Cliente - Proveedor';
                }
                field(fechaTransaccion; Rec."Fecha Transaccion")
                {
                    Caption = 'Fecha Transaccion';
                }
                field(noLinea; Rec."No. Linea")
                {
                    Caption = 'No. Linea';
                }
                field(importe; Rec.Importe)
                {
                    Caption = 'Importe';
                }
                field(codDivisa; Rec."Cod. Divisa")
                {
                    Caption = 'Cod. Divisa';
                }
                field(tasaDeCambio; Rec."Tasa de Cambio")
                {
                    Caption = 'Tasa de Cambio';
                }
                field(aplicaANoDocumento; Rec."Aplica a No. Documento")
                {
                    Caption = 'Aplica a No. Documento';
                }
            }
        }
    }
}
