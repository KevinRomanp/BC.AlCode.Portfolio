report 51100 "FacturaVenta"
{
    DefaultLayout = RDLC;
    RDLCLayout = 'Src\RDLC\DSFacturaVenta.rdl';
    Caption = 'Factura de ventas';

    dataset
    {
        dataitem("Cust. Ledger Entry"; "Cust. Ledger Entry")
        {
            DataItemTableView = SORTING("Document Type", "Customer No.", "Posting Date", "Currency Code") Where("Document Type" = filter(Payment | Refund));
            RequestFilterFields = "Customer No.", "Posting Date", "Document No.";
            column(EntryNo_CustLedgEntry; "Entry No.")
            {
            }
            column(Moneda; Moneda)
            { }
            column(CustomerVatNo; CustomerVatNo)
            { }
            /*column(MetodoPagoArray1; metodoPagoArray[1])
            { }
            column(MetodoPagoArray2; metodoPagoArray[2])
            { }

            column(MetodoPagoArray3; metodoPagoArray[3])
            { }

            column(MetodoPagoArray4; metodoPagoArray[4])
            { }
            column(MetodoPagoArray5; metodoPagoArray[5])
            { }
            column(MetodoPagoArray6; metodoPagoArray[6])
            { }
            column(MetodoPagoImporteArray1; MetodoPagoImporteArray[1])
            { }
            column(MetodoPagoImporteArray2; MetodoPagoImporteArray[2])
            { }
            column(MetodoPagoImporteArray3; MetodoPagoImporteArray[3])
            { }

            column(MetodoPagoImporteArray4; MetodoPagoImporteArray[4])
            { }
            column(MetodoPagoImporteArray5; MetodoPagoImporteArray[5])
            { }
            column(MetodoPagoImporteArray6; MetodoPagoImporteArray[6])
            { }*/

            column(MetodoPagoDevuelta; MetodoPagoDevuelta)
            { }
            column(Document_No__; "Cust. Ledger Entry"."Document No.")
            { }
            column(SumaDeString; SumaDeString)
            { }
            column(Description; Description)
            { }
            column(FacturaVentaLbl; FacturaVentaLbl)
            { }
            column(FechaLbl; FechaLbl)
            { }
            column(ReciboNumeroLbl; ReciboNumeroLbl)
            { }
            column(SumaDeLbl; SumaDeLbl)
            { }
            column(RecibidoDeLbl; RecibidoDeLbl)
            { }
            column(PagoALbl; PagoALbl)
            { }
            column(NoDocLbl; NoDocLbl)
            { }
            column(ImporteInicalLbl; ImporteInicalLbl)
            {

            }
            column(ImportePendienteLbl; ImportePendienteLbl)
            { }
            column(TotalLbl; TotalLbl)
            { }
            column(DevueltaLbl; DevueltaLbl)
            { }
            column(RecibidoPorLbl; RecibidoPorLbl)
            { }

            dataitem(PageLoop; "Integer")
            {
                DataItemTableView = SORTING(Number) Where(Number = const(1));
                column(CustAddr6; CustAddr[6])
                {
                }

                column(PostDate; "Cust. Ledger Entry"."Posting Date")
                { }
                column(CompanyInfo_Picture; CompanyInformationRecord.Picture)
                { }
                column(CustName; "Cust. Ledger Entry"."Customer Name")
                { }

                column(CustAddr7; CustAddr[7])
                {
                }
                column(CustAddr8; CustAddr[8])
                {
                }
                column(CustAddr4; CustAddr[4])
                {
                }
                column(CustAddr5; CustAddr[5])
                {
                }
                column(CustAddr3; CustAddr[3])
                {
                }
                column(CustAddr1; CustAddr[1])
                {
                }
                column(CustAddr2; CustAddr[2])
                {
                }

                column(Document_No_; "Cust. Ledger Entry"."Document No.")
                { }
                column(CustomerNo_CustLedgEntry; "Cust. Ledger Entry"."Customer No.")
                {
                    IncludeCaption = true;
                }
                column(DocDate_CustLedgEntry; Format("Cust. Ledger Entry"."Document Date", 0, 7))
                {
                }
                column(CompanyAddr1; CompanyAddr[1])
                {
                }
                column(CompanyAddr2; CompanyAddr[2])
                {
                }
                column(CompanyAddr3; CompanyAddr[3])
                {
                }
                column(CompanyAddr4; CompanyAddr[4])
                {
                }
                column(CompanyAddr5; CompanyAddr[5])
                {
                }
                column(CompanyAddr6; CompanyAddr[6])
                {
                }
                column(CompanyAddr7; CompanyAddr[7])
                {
                }
                column(CompanyAddr8; CompanyAddr[8])
                {
                }
                column(CompanyInfoEMail; CompanyInformationRecord."E-Mail")
                {
                }
                column(CompanyInfoPhoneNo; CompanyInformationRecord."Phone No.")
                {
                }
                column(CompanyInfoHomePage; CompanyInformationRecord."Home Page")
                {
                }
                column(CompanyInfoVATRegNo; CompanyInformationRecord."VAT Registration No.")
                {
                }
                column(CompanyInfoGiroNo; CompanyInformationRecord."Giro No.")
                {
                }
                column(CompanyInfoBankName; CompanyInformationRecord."Bank Name")
                {
                }
                column(CompanyInfoBankAccountNo; CompanyInformationRecord."Bank Account No.")
                {
                }
                column(ReportTitle; ReportTitle)
                {
                }
                column(DocumentNo_CustLedgEntry; "Cust. Ledger Entry"."Document No.")
                {
                }
                column(PaymentDiscountTitle; PaymentDiscountTitle)
                {
                }
                column(CompanyInfoPhoneNoCaption; CompanyInfoPhoneNoCaptionLbl)
                {
                }
                column(CompanyInfoGiroNoCaption; CompanyInfoGiroNoCaptionLbl)
                {
                }
                column(CompanyInfoBankNameCptn; CompanyInfoBankNameCptnLbl)
                {
                }
                column(CompanyInfoBankAccNoCptn; CompanyInfoBankAccNoCptnLbl)
                {
                }
                column(ReceiptNoCaption; ReceiptNoCaptionLbl)
                {
                }
                column(CompanyInfoVATRegNoCptn; CompanyInfoVATRegNoCptnLbl)
                {
                }
                column(CustLedgEntry1PostDtCptn; CustLedgEntry1PostDtCptnLbl)
                {
                }
                column(AmountCaption; AmountCaptionLbl)
                {
                }
                column(PaymAmtSpecificationCptn; PaymAmtSpecificationCptnLbl)
                {
                }
                column(PmtTolInvCurrCaption; PmtTolInvCurrCaptionLbl)
                {
                }
                column(DocumentDateCaption; DocumentDateCaptionLbl)
                {
                }
                column(CompanyInfoEMailCaption; CompanyInfoEMailCaptionLbl)
                {
                }
                column(CompanyInfoHomePageCptn; CompanyInfoHomePageCptnLbl)
                {
                }

                dataitem(DetailedCustLedgEntry1; "Detailed Cust. Ledg. Entry")
                {
                    DataItemLink = "Applied Cust. Ledger Entry No." = field("Entry No.");
                    DataItemLinkReference = "Cust. Ledger Entry";
                    DataItemTableView = SORTING("Applied Cust. Ledger Entry No.", "Entry Type") Where(Unapplied = const(false));
                    dataitem(CustLedgEntry1; "Cust. Ledger Entry")
                    {
                        DataItemLink = "Entry No." = field("Cust. Ledger Entry No.");
                        DataItemLinkReference = DetailedCustLedgEntry1;
                        DataItemTableView = SORTING("Entry No.");
                        column(PostDate_CustLedgEntry1; Format("Posting Date"))
                        {
                        }
                        column(TextDivisa; TextDivisa)
                        { }
                        column(DocType_CustLedgEntry1; "Document Type")
                        {
                            IncludeCaption = true;
                        }
                        column(DocumentNo_CustLedgEntry1; "Document No.")
                        {
                            IncludeCaption = true;
                        }
                        column(AmountInWords1; AmountInWords[1])
                        { }
                        column(AmountInWords2; AmountInWords[2])
                        { }
                        column(Retencion; Retencion)
                        { }
                        column(Desc_CustLedgEntry1; Description)
                        {
                            IncludeCaption = true;
                        }
                        column(CurrCode_CustLedgEntry1; CurrencyCode("Currency Code"))
                        {
                        }
                        column(ShowAmount; ShowAmount)
                        {
                        }
                        column(DSShowAmountLCY; DSShowAmountLCY)
                        { }
                        column(PmtDiscInvCurr; PmtDiscInvCurr)
                        {
                        }
                        column(PmtTolInvCurr; PmtTolInvCurr)
                        {
                        }
                        column(CurrencyCodeCaption; FieldCaption("Currency Code"))
                        {
                        }

                        trigger OnAfterGetRecord()
                        begin

                            Retencion := 0;

                            DSNHistRetencionClientes.Reset();
                            DSNHistRetencionClientes.SetRange("No. documento", CustLedgEntry1."Document No.");
                            if DSNHistRetencionClientes.FindFirst() then begin
                            end;
                            CustLedgerEntryRecord.Reset();
                            CustLedgerEntryRecord.SetRange("Entry No.", CustLedgEntry1."Entry No.");
                            CustLedgerEntryRecord.SetRange("Customer No.", "Cust. Ledger Entry"."Customer No.");
                            if CustLedgerEntryRecord.FindFirst() then begin
                                DetailedCustLedgEntryRecord.Reset();
                                DetailedCustLedgEntryRecord.SetRange("Cust. Ledger Entry No.", CustLedgerEntryRecord."Entry No.");
                                DetailedCustLedgEntryRecord.SetRange("Customer No.", CustLedgerEntryRecord."Customer No.");
                                DetailedCustLedgEntryRecord.SetRange("Entry Type", DetailedCustLedgEntryRecord."Entry Type"::Application);
                                if DetailedCustLedgEntryRecord.FindSet() then
                                    repeat
                                        if Round(Abs(DetailedCustLedgEntryRecord.Amount), 0.01) = Round(Abs(DSNHistRetencionClientes."Importe Retencion"), 0.01) then
                                            Retencion := DSNHistRetencionClientes."Importe Retencion";
                                    until DetailedCustLedgEntryRecord.Next() = 0;
                            end;



                            if "Entry No." = "Cust. Ledger Entry"."Entry No." then
                                CurrReport.Skip();

                            PmtDiscInvCurr := 0;
                            PmtTolInvCurr := 0;
                            PmtDiscPmtCurr := 0;
                            PmtTolPmtCurr := 0;



                            ShowAmount := -DetailedCustLedgEntry1.Amount;
                            DSShowAmountLCY := -DetailedCustLedgEntry1."Amount (LCY)";

                            if "Cust. Ledger Entry"."Currency Code" <> "Currency Code" then begin
                                PmtDiscInvCurr := Round("Pmt. Disc. Given (LCY)" * "Original Currency Factor");
                                PmtTolInvCurr := Round("Pmt. Tolerance (LCY)" * "Original Currency Factor");
                                AppliedAmount :=
                                  Round(
                                    -DetailedCustLedgEntry1.Amount / "Original Currency Factor" *
                                    "Cust. Ledger Entry"."Original Currency Factor", Currency."Amount Rounding Precision");
                            end else begin
                                PmtDiscInvCurr := Round("Pmt. Disc. Given (LCY)" * "Cust. Ledger Entry"."Original Currency Factor");
                                PmtTolInvCurr := Round("Pmt. Tolerance (LCY)" * "Cust. Ledger Entry"."Original Currency Factor");
                                AppliedAmount := -DetailedCustLedgEntry1.Amount;
                            end;

                            PmtDiscPmtCurr := Round("Pmt. Disc. Given (LCY)" * "Cust. Ledger Entry"."Original Currency Factor");
                            PmtTolPmtCurr := Round("Pmt. Tolerance (LCY)" * "Cust. Ledger Entry"."Original Currency Factor");
                            RemainingAmount := 0;
                            RemainingAmount := (RemainingAmount - AppliedAmount) + PmtDiscPmtCurr + PmtTolPmtCurr;
                        end;
                    }
                }
                dataitem(DetailedCustLedgEntry2; "Detailed Cust. Ledg. Entry")
                {
                    DataItemLink = "Cust. Ledger Entry No." = field("Entry No.");
                    DataItemLinkReference = "Cust. Ledger Entry";
                    DataItemTableView = SORTING("Cust. Ledger Entry No.", "Entry Type", "Posting Date") Where(Unapplied = const(false));
                    dataitem(CustLedgEntry2; "Cust. Ledger Entry")
                    {
                        DataItemLink = "Entry No." = field("Applied Cust. Ledger Entry No.");
                        DataItemLinkReference = DetailedCustLedgEntry2;
                        DataItemTableView = SORTING("Entry No.");
                        column(AppliedAmount; AppliedAmount)
                        {
                        }

                        column(Desc_CustLedgEntry2; Description)
                        {
                        }
                        column(DocumentNo_CustLedgEntry2; "Document No.")
                        {
                        }
                        column(DocType_CustLedgEntry2; "Document Type")
                        {
                        }
                        column(PostDate_CustLedgEntry2; Format("Posting Date"))
                        {
                        }
                        column(PmtDiscInvCurr1; PmtDiscInvCurr)
                        {
                        }
                        column(PmtTolInvCurr1; PmtTolInvCurr)
                        {
                        }

                        trigger OnAfterGetRecord()
                        begin
                            if "Entry No." = "Cust. Ledger Entry"."Entry No." then
                                CurrReport.Skip();

                            PmtDiscInvCurr := 0;
                            PmtTolInvCurr := 0;
                            PmtDiscPmtCurr := 0;
                            PmtTolPmtCurr := 0;

                            ShowAmount := DetailedCustLedgEntry2.Amount;
                            DSShowAmountLCY := DetailedCustLedgEntry2."Amount (LCY)";

                            if "Cust. Ledger Entry"."Currency Code" <> "Currency Code" then begin
                                PmtDiscInvCurr := Round("Pmt. Disc. Given (LCY)" * "Original Currency Factor");
                                PmtTolInvCurr := Round("Pmt. Tolerance (LCY)" * "Original Currency Factor");
                            end else begin
                                PmtDiscInvCurr := Round("Pmt. Disc. Given (LCY)" * "Cust. Ledger Entry"."Original Currency Factor");
                                PmtTolInvCurr := Round("Pmt. Tolerance (LCY)" * "Cust. Ledger Entry"."Original Currency Factor");
                            end;

                            PmtDiscPmtCurr := Round("Pmt. Disc. Given (LCY)" * "Cust. Ledger Entry"."Original Currency Factor");
                            PmtTolPmtCurr := Round("Pmt. Tolerance (LCY)" * "Cust. Ledger Entry"."Original Currency Factor");

                            AppliedAmount := DetailedCustLedgEntry2.Amount;
                            RemainingAmount := (RemainingAmount - AppliedAmount) + PmtDiscPmtCurr + PmtTolPmtCurr;
                        end;
                    }
                }
                dataitem(Total; "Integer")
                {
                    DataItemTableView = SORTING(Number) Where(Number = const(1));


                    column(DSRemainingAmountLCY; DSRemainingAmountLCY)
                    {
                    }

                    column(RemainingAmount; RemainingAmount)
                    {
                    }

                    column(CurrCode_CustLedgEntry; CurrencyCode("Cust. Ledger Entry"."Currency Code"))
                    {
                    }
                    column(OriginalAmt_CustLedgEntry; "Cust. Ledger Entry"."Original Amount")
                    {
                    }
                    column(OriginalAmntLCY; "Cust. Ledger Entry"."Original Amt. (LCY)")
                    { }
                    column(ExtDocNo_CustLedgEntry; "Cust. Ledger Entry"."External Document No.")
                    {
                    }
                    column(PaymAmtNotAllocatedCptn; PaymAmtNotAllocatedCptnLbl)
                    {
                    }
                    column(CustLedgEntryOrgAmtCptn; CustLedgEntryOrgAmtCptnLbl)
                    {
                    }
                    column(ExternalDocumentNoCaption; ExternalDocumentNoCaptionLbl)
                    {
                    }
                    dataitem("Cobros Cajeros"; "Cobros Cajeros")
                    {
                        DataItemLink = "No. Registro Factura" = field("Document No.");
                        DataItemLinkReference = "Cust. Ledger Entry";
                        column(importe; importe)
                        { }
                        column(CodFormaPago; DSNConfMediosDePagos."Cod. Forma pago")
                        { }

                        trigger OnAfterGetRecord()
                        begin

                            DSNConfMediosDePagos.Reset();
                            DSNConfMediosDePagos.SetRange("Cod. med. pago", "Cobros Cajeros"."Cod. Medio de pago");
                            DSNConfMediosDePagos.FindFirst();
                        end;
                    }

                }

            }

            trigger OnAfterGetRecord()
            begin
                "Cust. Ledger Entry".CalcFields(Amount);
                SumaDe := ABS("Cust. Ledger Entry".Amount);
                SumaDeString := Format(SumaDe, 9);
                CompanyInformationRecord.Get();
                CompanyInformationRecord.CalcFields(Picture);
                CustomerRecord.Get("Customer No.");
                FormatAddressRecord.Customer(CustAddr, CustomerRecord);

                if "Cust. Ledger Entry"."Currency Code" = '' then
                    textDivisa := 'RD$'
                else
                    textDivisa := "Cust. Ledger Entry"."Currency Code";

                if not Currency.Get("Currency Code") then
                    Currency.InitRoundingPrecision();

                if "Document Type" = "Document Type"::Payment then begin
                    ReportTitle := Text003Lbl;
                    PaymentDiscountTitle := Text006Lbl;
                end else begin
                    ReportTitle := Text004Lbl;
                    PaymentDiscountTitle := Text007Lbl;
                end;

                CalcFields("Original Amount");
                RemainingAmount := -"Original Amount";
                CalcFields("Original Amt. (LCY)");
                DSRemainingAmountLCY := -"Original Amt. (LCY)";

                MetodoPagoDevuelta := 0;
                SalesInvoiceHeader.Reset();
                SalesInvoiceHeader.SetRange("No.", "Cust. Ledger Entry"."Document No.");
                SalesInvoiceHeader.SetRange("Sell-to Customer No.", "Cust. Ledger Entry"."Customer No.");
                SalesInvoiceHeader.FindFirst();

                CustomerVatNo := SalesInvoiceHeader."VAT Registration No.";
                Moneda := 'RD';
                if SalesInvoiceHeader."Currency Code" <> '' then
                    Moneda := "Currency Code";

                /*cobrosCajeros.Reset();
                cobrosCajeros.SetRange("No. Registro Factura", SalesInvoiceHeader."No.");
                if cobrosCajeros.FindSet then
                    repeat
                        DSNConfMediosDePagos.Reset();
                        DSNConfMediosDePagos.SetRange("Cod. med. pago", cobrosCajeros."Cod. Medio de pago");
                        DSNConfMediosDePagos.FindFirst();
                        /*MetodoPago:= DSNConfMediosDePagos."Cod. Forma Pago";
                        MetodoPagoImporte := cobrosCajeros."Importe($)";
                        MetodoPagoArray[MetodoPagoIndex] := DSNConfMediosDePagos."Cod. Forma Pago";
                        MetodoPagoImporteArray[MetodoPagoIndex] := cobrosCajeros."Importe($)";
                        MetodoPagoIndex += 1;
                        if cobrosCajeros."Devuelta efectivo" = true then
                            MetodoPagoDevuelta := cobrosCajeros.Importe;
                    until cobrosCajeros.Next() = 0;*/

                amountInWordsUSFormat(RemainingAmount);
            end;

            trigger OnPreDataItem()
            begin
                CompanyInformationRecord.Get();
                FormatAddressRecord.Company(CompanyAddr, CompanyInformationRecord);
                GeneralLedgerSetupRecord.Get();
            end;
        }
    }

    RequestPage
    {

        layout
        {
        }

        actions
        {
        }
    }

    labels
    {
    }

    var

        SalesInvoiceHeader: Record "Sales Invoice Header";
        DSNConfMediosDePagos: Record "Conf. Medios de Pagos";
        DetailedCustLedgEntryRecord: Record "Detailed Cust. Ledg. Entry";
        CustLedgerEntryRecord: Record "Cust. Ledger Entry";
        DSNHistRetencionClientes: Record "DSNHist. Retencion Clientes";
        GeneralLedgerSetupRecord: Record "General Ledger Setup";
        CustomerRecord: Record Customer;
        Currency: Record Currency;



    protected var
        CompanyInformationRecord: Record "Company Information";
        FormatAddressRecord: Codeunit "Format Address";
        CustomerVatNo: Code[20];
        Moneda: Text[10];
        TextDivisa: Text[10];
        SumaDeString: Text[50];
        ReportTitle: Text[30];
        PaymentDiscountTitle: Text[30];
        CompanyAddr: Array[8] of Text[100];
        CustAddr: Array[8] of Text[100];
        AmountInWords: Array[2] of Text[80];
        MetodoPagoDevuelta: Decimal;
        SumaDe: Decimal;
        Retencion: Decimal;
        DSShowAmountLCY: Decimal;
        RemainingAmount: Decimal;
        DSRemainingAmountLCY: Decimal;
        AppliedAmount: Decimal;
        PmtDiscInvCurr: Decimal;
        PmtTolInvCurr: Decimal;
        PmtDiscPmtCurr: Decimal;
        PmtTolPmtCurr: Decimal;
        ShowAmount: Decimal;

        FacturaVentaLbl: Label 'FACTURA DE VENTAS';
        FechaLbl: Label 'Fecha: ';
        ReciboNumeroLbl: Label 'Recibo #';
        SumaDeLbl: Label 'La suma de: ';
        RecibidoDeLbl: Label 'Recibido de: ';
        PagoALbl: Label 'Observación: Pago a ';
        NoDocLbl: Label 'No. Doc.';
        ImporteInicalLbl: Label 'Importe Inicial';
        ImportePendienteLbl: Label 'Importe Pendiente';
        TotalLbl: Label 'Total';
        DevueltaLbl: Label 'Devuelta';
        RecibidoPorLbl: Label 'Recibido por ';




        Text003Lbl: Label 'Payment Receipt';
        Text004Lbl: Label 'Payment Voucher';
        Text006Lbl: Label 'Pmt. Disc. Given';
        Text007Lbl: Label 'Pmt. Disc. Rcvd.';
        CompanyInfoPhoneNoCaptionLbl: Label 'Phone No.';
        CompanyInfoGiroNoCaptionLbl: Label 'Giro No.';
        CompanyInfoBankNameCptnLbl: Label 'Bank';
        CompanyInfoBankAccNoCptnLbl: Label 'Account No.';
        ReceiptNoCaptionLbl: Label 'Receipt No.';
        CompanyInfoVATRegNoCptnLbl: Label 'GST Reg. No.';
        CustLedgEntry1PostDtCptnLbl: Label 'Posting Date';
        AmountCaptionLbl: Label 'Amount';
        PaymAmtSpecificationCptnLbl: Label 'Payment Amount Specification';
        PmtTolInvCurrCaptionLbl: Label 'Pmt Tol.';
        DocumentDateCaptionLbl: Label 'Document Date';
        CompanyInfoEMailCaptionLbl: Label 'Email';
        CompanyInfoHomePageCptnLbl: Label 'Home Page';
        PaymAmtNotAllocatedCptnLbl: Label 'Payment Amount Not Allocated';
        CustLedgEntryOrgAmtCptnLbl: Label 'Payment Amount';
        ExternalDocumentNoCaptionLbl: Label 'External Document No.';

    local procedure amountInWordsUSFormat(amount: Decimal)
    var
        DSNCheckTranslationDS: Report DSNCheckTranslationDS;

    begin
        DSNCheckTranslationDS.InitTextVariable();
        DSNCheckTranslationDS.FormatNoText(AmountInWords, amount, '');
    end;


    local procedure CurrencyCode(SrcCurrCode: Code[10]): Code[10]
    begin
        if SrcCurrCode = '' then
            exit(GeneralLedgerSetupRecord."LCY Code");
        exit(SrcCurrCode);
    end;
}

