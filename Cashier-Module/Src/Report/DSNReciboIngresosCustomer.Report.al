report 51104 "ReciboIngresos Customer"
{
    DefaultLayout = RDLC;
    RDLCLayout = 'Src\RDLC\DSReciboDeIngresosF.rdl';
    Caption = 'Recibo de ingresos';
    Permissions =
        tabledata "Bank Account" = R,
        tabledata "Company Information" = R,
        tabledata Currency = R,
        tabledata "Cust. Ledger Entry" = R,
        tabledata Customer = R,
        tabledata "Detailed Cust. Ledg. Entry" = R,
        tabledata "Dimension Set Entry" = R,
        tabledata "DSNHist. Retencion Clientes" = R,
        tabledata "G/L Entry" = R,
        tabledata "General Ledger Setup" = R,
        tabledata Integer = R;

    dataset
    {
        dataitem("Cust. Ledger Entry"; "Cust. Ledger Entry")
        {
            DataItemTableView = SORTING("Document Type", "Customer No.", "Posting Date", "Currency Code") Where("Document Type" = filter(Payment | Refund));
            RequestFilterFields = "Customer No.", "Posting Date", "Document No.";
            column(EntryNo_CustLedgEntry; "Entry No.")
            {
            }
            column(Posting_Date; "Posting Date")
            {
            }
            column(Document_No__; "Cust. Ledger Entry"."Document No.")
            { }
            column(SumaDeString; SumaDeString)
            { }
            column(textDivisa1; textDivisa)
            {
            }
            column(Description; Description)
            { }
            column(AmountClient; "Original Amount")
            { }
            column(Concepto; "Customer Posting Group")
            {
            }
            /////////////////////////////////////////////////////////////////////////
            column(SegmentoSucursal; DimensionSetEntry."Dimension Value Name")
            { }
            column(Comment; Glentry.Comment)
            { }
            column(PaymentMethod; CustLedgerEntryRecord."Payment Method Code")
            { }
            column(NoAplicado; NoAplicado)
            { }
            column(CustomerPhoneNo; CustomerPhoneNo)
            { }
            column(hoy; Today)
            { }
            column(Document_Type; "Document Type")
            { }
            column(Customer_No_; "Customer No.")
            { }
            column(Customer_Name; DSNBeneficiario)
            { }
            column(CustomerVatNo; CustomerVatNo)
            { }
            column(CIPicture; CompanyInformationRecord.Picture)
            {
            }
            column(CIName; CompanyInformationRecord.Name)
            {
            }
            column(CompanyInfo_RNC; CompanyInformationRecord."VAT Registration No.")
            {
            }
            column(CompanyInfo_Address; CompanyInformationRecord.Address)
            {
            }
            column(CompanyInfo_Cuidad; CompanyInformationRecord.City)
            {
            }
            column(CompanyInfo_Address2; CompanyInformationRecord.County)
            {
            }
            column(CompanyInfo_Phone; CompanyInformationRecord."Phone No.")
            {
            }
            column(RealizadoPor; RealizadoPor)
            { }
            column(RealizadoPorDate; RealizadoPorDate)
            { }
            column(Moneda; Moneda)
            { }
            column(FechaLbl; FechaLbl)
            { }
            column(SucursalLbl; SucursalLbl)
            { }
            column(Text001Lbl; Text001Lbl)
            { }
            column(IngresoLbl; IngresoLbl)
            { }
            column(ReferenciaLbl; ReferenciaLbl)
            { }
            column(BancoLbl; BancoLbl)
            { }
            column(FormaPagoLbl; FormaPagoLbl)
            { }
            column("NÚMEROLbl"; "NÚMEROLbl")
            { }
            column(DocumentoLbl; DocumentoLbl)
            { }
            column(NCFLbl; NCFLbl)
            { }
            column(REFERENCIA2Lbl; REFERENCIA2Lbl)
            { }
            column(BalanceLbl; BalanceLbl)
            { }
            column(AplicadoLbl; AplicadoLbl)
            { }
            column(TotalAplicadoLbl; TotalAplicadoLbl)
            { }
            column(TotalNoAplicadoLbl; TotalNoAplicadoLbl)
            { }
            column(Fecha2Lbl; Fecha2Lbl)
            {

            }
            column(Text030Lbl; Text030Lbl)
            {
            }
            column(TextDivisa; textDivisa)
            { }
            /////////////////////////////////////////////////////////////////////////
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
                column(CustomerRNC; "Cust. Ledger Entry"."DSNNo. Comprobante Fiscal")
                {
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
                column(BankAccountName; BankAccount.Name)
                { }
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

                dataitem(Customer; Customer)
                {
                    DataItemLink = "No." = field("Customer No.");
                    DataItemLinkReference = "Cust. Ledger Entry";


                    column(CustomerName; Customer."Name")
                    {
                    }
                    column(CustRnc; "VAT Registration No.")
                    {
                    }
                    column(CustomerAddr; Customer.Address)
                    {
                    }
                    column(CustomerPhone; Customer."Phone No.")
                    {
                    }
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

                        column(DocType_CustLedgEntry1; "Document Type")
                        {
                            IncludeCaption = true;
                        }
                        column(DocumentNo_CustLedgEntry1; "Document No.")
                        {
                            IncludeCaption = true;
                        }
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
                        column(Amount; Amount)
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
                        ////////////////////////////////////////////
                        column(NCF_CustLedgEntry1; CLE."DSNNo. Comprobante Fiscal")
                        {
                        }
                        column(ImportePendienteRecibo; ImportePendienteRecibo)
                        {
                        }
                        ////////////////////////////////////////////

                        trigger OnAfterGetRecord()
                        begin
                            if "Entry No." = "Cust. Ledger Entry"."Entry No." then
                                CurrReport.Skip();

                            Retencion := 0;

                            DSNHistRetencionClientes.Reset();
                            DSNHistRetencionClientes.SetRange("No. documento", CustLedgEntry1."Document No.");
                            if not DSNHistRetencionClientes.FindFirst() then
                                DSNHistRetencionClientes.Init();

                            DetailedCustLedgEntryRecord.Reset();
                            DetailedCustLedgEntryRecord.SetCurrentKey("Cust. Ledger Entry No.", "Entry Type", "Posting Date");
                            DetailedCustLedgEntryRecord.SetRange("Cust. Ledger Entry No.", CustLedgEntry1."Entry No.");
                            DetailedCustLedgEntryRecord.SetRange("Entry Type", DetailedCustLedgEntryRecord."Entry Type"::Application);
                            DetailedCustLedgEntryRecord.SetRange("Customer No.", CustLedgEntry1."Customer No.");
                            if DetailedCustLedgEntryRecord.FindSet() then
                                repeat
                                    if Round(Abs(DetailedCustLedgEntryRecord.Amount), 0.01) = Round(Abs(DSNHistRetencionClientes."Importe Retencion"), 0.01) then
                                        Retencion := DSNHistRetencionClientes."Importe Retencion";
                                until DetailedCustLedgEntryRecord.Next() = 0;
                            //end;

                            //////DAM
                            //NCF
                            CLE.Reset();
                            CLE.SetRange("Document No.", CustLedgEntry1."Document No.");
                            if CLE.FindFirst() then;
                            /////////////////////////

                            PmtDiscInvCurr := 0;
                            PmtTolInvCurr := 0;
                            PmtDiscPmtCurr := 0;
                            PmtTolPmtCurr := 0;

                            //Importe Pendiente
                            ImportePendienteRecibo := 0;
                            DLE3.Reset();
                            DLE3.SetRange("Cust. Ledger Entry No.", CustLedgEntry1."Entry No.");
                            DLE3.SetFilter("Posting Date", '<=%1', "Cust. Ledger Entry"."Posting Date"); //SSM Ajuste Fausto
                            DLE3.SetFilter("Document No.", '<>%1', "Cust. Ledger Entry"."Document No."); //SSM Ajuste Fausto
                            if DLE3.FindSet() then
                                repeat
                                    ImportePendienteRecibo += DLE3.Amount;
                                until DLE3.Next() = 0;
                            /////////////////////////////

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

                            RemainingAmount := (RemainingAmount - AppliedAmount) + PmtDiscPmtCurr + PmtTolPmtCurr;
                            //DSRemainingAmountLCY := (DSRemainingAmountLCY - AppliedAmount) + PmtDiscPmtCurr + PmtTolPmtCurr;
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
                    column(RemainingAmountT; RemainingAmount)
                    {
                    }

                    column(DSRemainingAmountLCY; DSRemainingAmountLCY)
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
                }
            }

            trigger OnAfterGetRecord()
            begin
                GeneralLedgerSetup.Get();
                "Cust. Ledger Entry".CalcFields(Amount);
                CalcFields("Cust. Ledger Entry".Amount);
                SumaDe := ABS("Cust. Ledger Entry".Amount);
                SumaDeString := Format(SumaDe, 0.00);
                CompanyInformationRecord.Get();
                CompanyInformationRecord.CalcFields(Picture);
                CustomerRecord.Get("Customer No.");
                FormatAddressFormat.Customer(CustAddr, CustomerRecord);

                if "Cust. Ledger Entry"."Currency Code" = '' then
                    textDivisa := GeneralLedgerSetup."Local Currency Symbol"
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

                //Obtener Nombre Dimension Sucursal desde el movimiento del cilente
                DimensionSetEntry.Reset();
                DimensionSetEntry.SetRange("Dimension Set ID", "Cust. Ledger Entry"."Dimension Set ID");
                DimensionSetEntry.SetRange("Dimension Value Code", "Cust. Ledger Entry"."Global Dimension 1 Code");
                DimensionSetEntry.SetRange("Dimension Code", GeneralLedgerSetupRecord."Global Dimension 1 Code");
                if DimensionSetEntry.FindFirst() then
                    DimensionSetEntry.CalcFields("Dimension Value Name");

                //Nombre del Banco
                BankAccount.Reset();
                if BankAccount.Get("Bal. Account No.") then;

                //Para halar el campo comentario y usarlo en referencia
                GlEntry.Reset();
                GlEntry.SetRange("Document No.", "Cust. Ledger Entry"."Document No.");
                GlEntry.FindFirst();

                DetailedCustLedgEntryRecord.Reset();
                DetailedCustLedgEntryRecord.SetCurrentKey("Document No.", "Document Type", "Posting Date");
                DetailedCustLedgEntryRecord.SetRange("Document No.", "Document No.");
                DetailedCustLedgEntryRecord.SetRange("Posting Date", "Posting Date");
                DetailedCustLedgEntryRecord.SetRange("Entry Type", DetailedCustLedgEntryRecord."Entry Type"::"Initial Entry");
                DetailedCustLedgEntryRecord.FindFirst();

                DetailedCustomerLedgerEntry2.Reset();
                DetailedCustomerLedgerEntry2.SetCurrentKey("Cust. Ledger Entry No.", "Entry Type", "Posting Date");
                DetailedCustomerLedgerEntry2.SetFilter("Cust. Ledger Entry No.", '<>%1', DetailedCustLedgEntryRecord."Cust. Ledger Entry No.");
                DetailedCustomerLedgerEntry2.SetRange("Document No.", DetailedCustLedgEntryRecord."Document No.");
                if DetailedCustomerLedgerEntry2.FindSet() then
                    repeat
                        CustLedgerEntryRecord.Get(DetailedCustomerLedgerEntry2."Cust. Ledger Entry No.");
                        CustLedgerEntryRecord.CalcFields("Remaining Amount");
                        NoAplicado += CustLedgerEntryRecord."Remaining Amount";
                    until DetailedCustomerLedgerEntry2.Next() = 0;

                Customer.Reset();
                Customer.SetRange("No.", "Customer No.");
                Customer.FindFirst();
                CustomerVatNo := Customer."VAT Registration No.";
                CustomerPhoneNo := customer."Phone No.";
                //BankAccount.get("Bank Account No.");

                CalcFields("Original Amount", "Remaining Amt. (LCY)");
                RemainingAmount := -"Original Amount";
                DSRemainingAmountLCY := -"Remaining Amt. (LCY)";

            end;

            trigger OnPreDataItem()
            begin
                CompanyInformationRecord.Get();
                FormatAddressFormat.Company(CompanyAddr, CompanyInformationRecord);
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
        GeneralLedgerSetup: record "General Ledger Setup";
        DetailedCustLedgEntryRecord: Record "Detailed Cust. Ledg. Entry";
        CustLedgerEntryRecord: Record "Cust. Ledger Entry";
        DSNHistRetencionClientes: Record "DSNHist. Retencion Clientes";
        GeneralLedgerSetupRecord: Record "General Ledger Setup";
        CustomerRecord: Record Customer;
        Currency: Record Currency;
        ///////////////////////////////////////
        DimensionSetEntry: Record "Dimension Set Entry";
        GlEntry: Record "G/L Entry";
        DetailedCustomerLedgerEntry2: Record "Detailed Cust. Ledg. Entry";
        BankAccount: Record "Bank Account";
        CLE: Record "Cust. Ledger Entry";
        DLE3: Record "Detailed Cust. Ledg. Entry";

    protected var
        CompanyInformationRecord: Record "Company Information";
        FormatAddressFormat: Codeunit "Format Address";
        RealizadoPorDate: DateTime;
        CustomerVatNo: Code[20];
        textDivisa: Text[10];
        SumaDeString: Text[50];
        ReportTitle: Text[30];
        PaymentDiscountTitle: Text[30];
        CompanyAddr: Array[8] of Text[100];
        CustAddr: Array[8] of Text[100];
        CustomerPhoneNo: Text[30];
        RealizadoPor: Text[200];
        Moneda: Text[4];
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
        ImportePendienteRecibo: Decimal;
        NoAplicado: Decimal;
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
        Text001Lbl: Label 'Hemos acreditado la suma de ';
        IngresoLbl: Label 'INGRESO';
        FechaLbl: Label 'Fecha';
        Fecha2Lbl: Label 'FECHA';
        ReferenciaLbl: Label 'Referencia';
        BancoLbl: Label 'Banco';
        FormaPagoLbl: Label 'Forma de pago';
        NÚMEROLbl: Label 'NÚMERO';
        DocumentoLbl: Label 'DOCUMENTO';
        NCFLbl: Label 'NCF';
        SucursalLbl: Label 'Sucursal';
        REFERENCIA2Lbl: Label 'REFERENCIA';
        BalanceLbl: Label 'BALANCE';
        AplicadoLbl: Label 'APLICADO';
        TotalAplicadoLbl: Label 'TOTAL APLICADO';
        TotalNoAplicadoLbl: Label 'TOTAL NO APLICADO';
        Text030Lbl: Label 'REALIZADO POR';
        ///////////////////////////////////////
        ExternalDocumentNoCaptionLbl: Label 'External Document No.';

    local procedure CurrencyCode(SrcCurrCode: Code[10]): Code[10]
    begin
        if SrcCurrCode = '' then
            exit(GeneralLedgerSetupRecord."LCY Code");
        exit(SrcCurrCode);
    end;
}

