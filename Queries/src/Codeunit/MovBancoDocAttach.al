codeunit 52000 MovBancoDocAttach
{
    [EventSubscriber(ObjectType::Page, Page::"Document Attachment Factbox", 'OnBeforeDrillDown', '', false, false)]
    local procedure OnBeforeDrillDown(DocumentAttachment: Record "Document Attachment"; var RecRef: RecordRef);
    var
        BankAccountLedgerEntry: Record "Bank Account Ledger Entry";
    begin
        case DocumentAttachment."Table ID" of
            DATABASE::"Bank Account Ledger Entry":
                begin
                    RecRef.Open(DATABASE::"Bank Account Ledger Entry");
                    if BankAccountLedgerEntry.Get(DocumentAttachment."No.") then
                        RecRef.GetTable(BankAccountLedgerEntry);
                end;
        end;
    end;


    [EventSubscriber(ObjectType::Page, Page::"Document Attachment Details", 'OnAfterOpenForRecRef', '', false, false)]
    local procedure OnAfterOpenForRecRef(var DocumentAttachment: Record "Document Attachment"; var RecRef: RecordRef);
    var
        FieldRef: FieldRef;
        RecNo: Code[20];
        BankAccountLedgerEntryCodeNo: Integer;
    begin
        case RecRef.Number of
            Database::"Bank Account Ledger Entry":
                begin
                    FieldRef := RecRef.Field(1);
                    RecNo := FieldRef.Value;
                    DocumentAttachment.SetRange("No.", RecNo);

                    DocumentAttachment.Validate("No.", RecNo);
                end;
        end;
    end;

    [EventSubscriber(ObjectType::Table, Database::"Document Attachment", 'OnAfterInitFieldsFromRecRef', '', false, false)]
    local procedure OnAfterInitFieldsFromRecRef(var DocumentAttachment: Record "Document Attachment"; var RecRef: RecordRef)
    var
        FieldRef: FieldRef;
        RecNo: Code[20];
        BankAccountLedgerEntryCodeNo: Integer;
    begin
        case RecRef.Number of
            Database::"Bank Account Ledger Entry":
                begin
                    FieldRef := RecRef.Field(1);
                    RecNo := FieldRef.Value;
                    DocumentAttachment.Validate("No.", RecNo);


                end;

        end;
    end;
}
