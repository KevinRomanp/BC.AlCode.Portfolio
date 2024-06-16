page 50106 CobrosPagosAPI
{
    APIGroup = 'API';
    APIPublisher = 'Kevin';
    APIVersion = 'v2.0';
    ApplicationArea = All;
    Caption = 'cobrosPagosAPI';
    DelayedInsert = true;
    EntityName = 'cobroPagoAPI';
    EntitySetName = 'cobrosPagosAPI';
    PageType = API;
    SourceTable = "Cobros-Pagos ";
    ODataKeyFields = SystemId;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field(SystemId; Rec.SystemId)
                { }
                field(SystemModifiedAt; Rec.SystemModifiedAt)
                { }
                field(tipoTransaccion; Rec."Tipo Transacción")
                {
                    Caption = 'Tipo Transacción';
                }
                field(noDocumento; Rec."No. Documento")
                {
                    Caption = 'No. Documento';
                }
                field(noLinea; Rec."No. Linea")
                {
                    Caption = 'No. Linea';
                }
                field(importe; Rec.Importe)
                {
                    Caption = 'Importe';
                }
                field(noDocumentoCliente; Rec."No. Documento Cliente")
                {
                    Caption = 'No. Documento Cliente';
                }
                field(fechaTransaccion; Rec."Fecha Transaccion")
                {
                    Caption = 'Fecha Transaccion';
                }
                field(noCuenta; Rec."No. Cuenta")
                {
                    Caption = 'No. Cuenta';
                }
                field(tipoContrapartida; Rec."Tipo Contrapartida")
                {
                    Caption = 'Tipo Contrapartida';
                }
                field(noCuentaContrapartida; Rec."No. Cuenta Contrapartida")
                {
                    Caption = 'No. Cuenta Contrapartida';
                }
                field(tipoCuenta; Rec."Tipo Cuenta")
                {
                    Caption = 'Tipo Cuenta';
                }
                field(procesado; Rec.Procesado)
                {
                    Caption = 'Procesado';
                }
                field(descripcion; Rec.Descripcion)
                {
                    Caption = 'Descripcion';
                }
            }
        }
    }
}
