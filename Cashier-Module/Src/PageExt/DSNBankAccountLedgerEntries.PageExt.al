pageextension 51104 DSNBankAccountLedgerEntries extends "Bank Account Ledger Entries"
{
    actions
    {
        addlast(processing)
        {
            Action(ImprimirInforme)
            {
                ApplicationArea = Basic, Suite;
                Caption = 'Imprimir informe';
                Image = PrintReport;
                ToolTip = 'Executes the Imprimir informe action.';
                trigger OnAction()
                var
                    BankAccountLedgerEntry: Record "Bank Account Ledger Entry";
                begin
                    CurrPage.SetSelectionFilter(BankAccountLedgerEntry);
                    rec.TestField("Document Type", rec."Document Type"::Payment);
                    Report.Run(Report::ReciboIngresos, true, true, BankAccountLedgerEntry);
                end;
            }
        }
    }
}
