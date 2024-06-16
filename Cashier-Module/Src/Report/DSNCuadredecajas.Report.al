report 51102 "Cuadre de cajas"
{
    Caption = 'Cuadre de cajas';
    DefaultLayout = Word;
    //RDLCLayout = 'Src\RDLC\DSCuadreDeCajas.rdl';
    WordLayout = 'Src\RDLC\DSCuadreDeCajas.docx';
    Permissions =
        tabledata "Cobros Cajeros" = RD,
        tabledata "Company Information" = R,
        tabledata "Conf. Medios de Pagos" = R,
        tabledata ControlCajeros = R,
        tabledata "Dimension Value" = R,
        tabledata Integer = R,
        tabledata PuntosDeVenta = R,
        tabledata "Sales Invoice Header" = R,
        tabledata "Sales Invoice Line" = R;
    dataset
    {
        dataitem(ControlCajeros; ControlCajeros)
        {
            DataItemTableView = sorting(Usuario, CodigoCaja, CodigoTurno, HoraInicio, BatchNo) Where(EstadoRegistro = const(Cerrado));
            RequestFilterFields = Usuario, CodigoCaja, CodigoTurno, BatchNo;
            column(Usuario; Usuario)
            {
            }
            column(BatchNo; BatchNo)
            { }
            column(Fondoefectivo; "Fondo efectivo")
            {
            }
            column(FechaInicio; Format(FechaInicio, 0, '<Day,2>/<Month,2>/<Year4>'))
            {
            }
            column(FechaFin; Format(FechaFin, 0, '<Day,2>/<Month,2>/<Year4>'))
            {
            }
            column(CodigoCaja; CodigoCaja)
            {
            }
            column(CodigoTurno; CodigoTurno)
            {
            }

            column(TotalImporteCajero; TotalImporteCajero)
            { }
            column(TotalDiferencia; TotalDiferencia)
            { }
            column(POSCode; DSNPuntosDeVenta.Codigo)
            { }
            column(POSDescription; DSNPuntosDeVenta.Descripcion)
            { }
            column(CIPicture; CompanyInformationRecord.Picture)
            { }
            column(CantidadTransacciones; CantidadTransacciones)
            { }
            column(hoy; hoy)
            { }
            column(CuadreDeCajaLbl; CuadreDeCajaLbl)
            { }
            column(ParametrosLbl; ParametrosLbl)
            {
            }
            column(FechaDesdeLbl; FechaDesdeLbl)
            { }
            column(FechaHastaLbl; FechaHastaLbl)
            { }
            column(CajaLbl; CajaLbl)
            { }
            column(FechaLbl; FechaLbl)
            { }
            column(NumeroLbl; NumeroLbl)
            { }
            column(ClienteLbl; ClienteLbl)
            { }
            column(ReferenciaLbl; ReferenciaLbl)
            { }
            column(FacturaLbl; FacturaLbl)
            { }
            column(FormaLbl; FormaLbl)
            {
            }
            column(NoBatchLbl; NoBatchLbl)
            { }
            column(AUDITORLbl; AUDITORLbl)
            { }
            column(CAJEROLbl; CAJEROLbl)
            { }
            column(MontoLbl; MontoLbl)
            { }
            column(TransaccionesLbl; TransaccionesLbl)
            { }
            column(RegistradoLbl; RegistradoLbl)
            { }
            column(EnCajaLbl; EnCajaLbl)
            { }


            column(Diferencialbl; Diferencialbl)
            { }
            column(EfectivoLbl; EfectivoLbl)
            { }
            column(ChequeLbl; ChequeLbl)
            { }
            column(TarjetaLbl; TarjetaLbl)
            { }
            column(CreditoLbl; CreditoLbl)
            { }
            column(PermutaLbl; PermutaLbl)
            { }
            column(NotaCredLbl; NotaCredLbl)
            { }
            column(SucursalLbl; SucursalLbl)
            { }
            dataitem("Cobros Cajeros"; "Cobros Cajeros")
            {
                DataItemLink = "No. Batch" = field(BatchNo);

                column(Importe___; "Importe($)")
                { }
                column(CodFormaPago; DSNConfMediosDePagos."Cod. Forma pago")
                {

                }
                column(NoDoc; "No. Registro Factura")
                { }
                trigger OnPreDataItem()
                begin
                    CantidadTransacciones := 0;
                end;

                trigger OnAfterGetRecord()
                begin

                    /*DSNConfMediosDePagos.Get("Cod. Medio de pago");
                    if DSNConfMediosDePagos."Devuelta efectivo" then begin
                        TotalImporteRegistrado += "Importe($)";
                        CurrReport.Skip(); //TODO: para volarse un campo en WORD
                    end;*/

                    //TempDSNCobrosCajerosRecord.Init();
                    SalesInvoiceHeader.Reset();
                    SalesInvoiceHeader.SetRange("No.", "Cobros Cajeros"."No. Registro Factura");
                    SalesInvoiceHeader.FindFirst();
                    SalesInvoiceHeader.CalcFields("Amount Including VAT");


                    TotalImporteCajero += SalesInvoiceHeader."Amount Including VAT";

                    TotalImporteRegistrado += "Importe($)";


                    //TODO: para cuando usas una tabla temporal para agrupar en Word.
                    /*Se busca un record con un tipo de documento X y No Doc 0 ya que solo
                    nos interesa el medio de pago y el importe. Se hace eso para que no nos de 
                    error al insertar.

                    Se inserta el medio de pago y el importe y si en otro documento aparece el mismo
                    medio de pago, se suma el importe en vez de insertarse otra linea.
                    */
                    TempDSNCobrosCajerosRecord.Reset();
                    TempDSNCobrosCajerosRecord.SetRange("Tipo documento", 0);
                    TempDSNCobrosCajerosRecord.SetRange("No. Documento", '');
                    TempDSNCobrosCajerosRecord.SetRange("ID Agrupacion", "Cobros Cajeros"."ID Agrupacion");
                    if TempDSNCobrosCajerosRecord.FindFirst() then begin
                        TempDSNCobrosCajerosRecord."Importe($)" += "Cobros Cajeros"."Importe($)";
                        TempDSNCobrosCajerosRecord.Modify()
                    end

                    else begin
                        //Se usa Quote ya que el modulo de cajas no utiliza nada con quotes; No hay records con quote
                        TempDSNCobrosCajerosRecord."Tipo documento" := TempDSNCobrosCajerosRecord."Tipo documento"::Quote;
                        TempDSNCobrosCajerosRecord."Cod. Medio de pago" := "Cobros Cajeros"."Cod. Medio de pago";
                        TempDSNCobrosCajerosRecord."ID Agrupacion" := "Cobros Cajeros"."ID Agrupacion";
                        TempDSNCobrosCajerosRecord."Importe($)" := "Cobros Cajeros"."Importe($)";
                        TempDSNCobrosCajerosRecord.Insert();
                        CantidadDeInsert += 1;
                    end;
                    CantidadTransacciones += 1;

                    /*
                    /////////////////////////////////////////////////////////////////
                    //TODO: esto se hace para cuando se necesita encontrar diferntes numeros de doc
                    FirstTime := true;
                    if FirstTime then begin
                        FirstTime := false;
                        NoDocAnterior := "Cobros Cajeros"."No. Registro Factura";
                        CantidadTransacciones := 1;
                        TotalImporteCajero += SalesInvoiceHeader."Amount Including VAT";
                    end;
                    if NoDocAnterior <> "Cobros Cajeros"."No. Registro Factura" then begin
                        NoDocAnterior := "Cobros Cajeros"."No. Registro Factura";
                        TotalImporteCajero += SalesInvoiceHeader."Amount Including VAT";
                        CantidadTransacciones += 1;
                    end;
                    ///////////////////////////////////////////////////////////////
                    */

                    //DSNPuntosDeVenta.Get("Cobros Cajeros"."Codigo DSNPuntosDeVenta");
                end;
            }
            dataitem("Sales Invoice Header"; "Sales Invoice Header")
            {
                DataItemLink = BatchNo = field(BatchNo);
                column(TotalDoc; "Sales Invoice Header"."Amount Including VAT")
                { }
                column(NoCliente; "Sales Invoice Header"."Sell-to Customer No.")
                { }
                column(dueDate; Format("Sales Invoice Header"."Due Date", 0, '<Day,2>/<Month,2>/<Year4>'))
                { }
                column(NoDoc2; "Sales Invoice Header"."No.")
                { }
                column(External_Document_No_; "External Document No.")
                { }
                column(Payment_Method_Code; "Payment Method Code")
                { }
                column(Sell_to_Customer_Name; "Sell-to Customer Name")
                { }
                column(TotalImporteRegistrado; TotalImporteRegistrado)
                { }
                column(TotalDoc2; TotalDoc2)
                { }
                dataitem("Sales Invoice Line"; "Sales Invoice Line")
                {
                    DataItemLink = "Document No." = field("No.");
                    column(DimSucural; "Shortcut Dimension 1 Code")
                    { }
                    column(DimLinNegocio; "Shortcut Dimension 2 Code")
                    { }
                    column(DimName1; DimensionValue.Name)
                    { }
                    column(DimName2; DimensionValue2.Name)
                    { }
                    trigger OnAfterGetRecord()
                    begin
                        DimensionValue.Reset();
                        DimensionValue.SetRange(Code, "Sales Invoice Line"."Shortcut Dimension 1 Code");
                        if DimensionValue.FindFirst() then;
                        DimensionValue2.Reset();
                        DimensionValue2.SetRange(Code, "Sales Invoice Line"."Shortcut Dimension 2 Code");
                        if DimensionValue2.FindFirst() then;
                    end;
                }
                trigger OnAfterGetRecord()
                var
                    Currency: record Currency;
                begin
                    if "Sales Invoice Header"."Currency Code" <> '' then begin
                        Currency.get("Sales Invoice Header"."Currency Code");
                        TotalDoc2 := Round((1 / "Sales Invoice Header"."Currency Factor") * "Sales Invoice Header"."Amount Including VAT", Currency."Amount Rounding Precision")
                    end
                    else
                        TotalDoc2 := "Sales Invoice Header"."Amount Including VAT"
                end;
            }
            dataitem(CobrosCajerosInteger; Integer)
            {
                DataItemTableView = sorting(Number);

                column(Importe; TempDSNCobrosCajerosRecord."Importe($)")
                { }
                column(CodFormaPago1; DSNConfMediosDePagos."Cod. Forma Pago")
                { }

                trigger OnPreDataItem()
                begin
                    TempDSNCobrosCajerosRecord.Reset();
                    CobrosCajerosInteger.SetRange(Number, 1, CantidadDeInsert);
                end;

                trigger OnAfterGetRecord()
                begin

                    //TODO: cuando necesitas hacer un loop y volarte lineas
                    if number = 1 then
                        TempDSNCobrosCajerosRecord.Find('-')
                    else
                        TempDSNCobrosCajerosRecord.Next();
                    DSNConfMediosDePagos.Get(TempDSNCobrosCajerosRecord."Cod. Medio de pago");
                end;

                /*trigger OnPostDataItem()
                begin
                    CantidadDeInsert := 0;
                end;*/
            }



            trigger OnAfterGetRecord()
            begin
                hoy := CurrentDateTime;
                CompanyInformationRecord.CalcFields(Picture);


            end;
        }

    }

    var
        TempDSNCobrosCajerosRecord: Record "Cobros Cajeros" temporary;
        SalesInvoiceHeader: Record "Sales Invoice Header";
        DSNConfMediosDePagos: Record "Conf. Medios de Pagos";
        DSNPuntosDeVenta: Record PuntosDeVenta;
        CompanyInformationRecord: Record "Company Information";
        DimensionValue: Record "Dimension Value";
        DimensionValue2: Record "Dimension Value";
        hoy: DateTime;
        CantidadDeInsert: Decimal;
        TotalDoc2: Decimal;
        TotalImporteRegistrado: Decimal;
        TotalImporteCajero: Decimal;
        TotalDiferencia: Decimal;
        CantidadTransacciones: Integer;
        NoBatchLbl: Label 'No. Batch: ';
        CuadreDeCajaLbl: Label 'CUADRE DE CAJA';
        ParametrosLbl: Label 'Parámetros: ';
        FechaDesdeLbl: Label 'Fecha Desde: ';
        FechaHastaLbl: Label 'Fecha Hasta: ';
        CajaLbl: Label 'Caja: ';
        CAJEROLbl: Label 'CAJERO';
        AUDITORLbl: Label 'AUDITOR';
        FechaLbl: Label 'FECHA';
        NumeroLbl: Label 'NÚMERO';
        ClienteLbl: Label 'CLIENTE';
        ReferenciaLbl: Label 'REFERENCIA';
        FacturaLbl: Label 'FACTURA';
        FormaLbl: Label 'FORMA';
        MontoLbl: Label 'MONTO';
        TransaccionesLbl: Label 'Transacciones = ';
        RegistradoLbl: Label 'REGISTRADO';
        EnCajaLbl: Label 'EN CAJA';
        DiferenciaLbl: Label 'DIFERENCIA';
        EfectivoLbl: Label 'EFECTIVO';
        ChequeLbl: Label 'CHEQUE';
        TarjetaLbl: Label 'TARJETA CRÉDITO/ DÉBITO';
        PermutaLbl: Label 'PERMUTA';
        NotaCredLbl: Label 'NOTA DE CRÉDITO';
        SucursalLbl: Label 'SUCURSAL';
        CreditoLbl: Label 'VENTA A CRÉDITO';

}
