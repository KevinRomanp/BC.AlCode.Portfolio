codeunit 52001 PaymentJournalDocAttach
{
    [EventSubscriber(ObjectType::Page, Page::"Document Attachment Factbox", 'OnBeforeDrillDown', '', false, false)]
    local procedure OnBeforeDrillDown(DocumentAttachment: Record "Document Attachment"; var RecRef: RecordRef);
    var
        GenJnlLine: Record "Gen. Journal Line";
    begin
        case DocumentAttachment."Table ID" of
            DATABASE::"Gen. Journal Line":
                begin
                    RecRef.Open(DATABASE::"Gen. Journal Line");
                    if GenJnlLine.Get(DocumentAttachment."No.") then
                        RecRef.GetTable(GenJnlLine);
                end;
        end;
    end;


    [EventSubscriber(ObjectType::Page, Page::"Document Attachment Details", 'OnAfterOpenForRecRef', '', false, false)]
    local procedure OnAfterOpenForRecRef(var DocumentAttachment: Record "Document Attachment"; var RecRef: RecordRef);
    var
        FieldRef: FieldRef;
        TemplateName: Code[20];
        BatchName: Code[10];
        LineNo: Integer;
    begin
        case RecRef.Number of
            Database::"Gen. Journal Line":
                begin
                    FieldRef := RecRef.Field(1);
                    TemplateName := FieldRef.Value;
                    DocumentAttachment.SetRange("Journal template name", TemplateName);
                    FieldRef := RecRef.Field(51);
                    BatchName := FieldRef.Value;
                    DocumentAttachment.SetRange("Journal Batch name", BatchName);
                    FieldRef := RecRef.Field(2);
                    LineNo := FieldRef.Value;
                    DocumentAttachment.SetRange("Journal Line No", LineNo);

                end;
        end;
    end;

    [EventSubscriber(ObjectType::Table, Database::"Document Attachment", 'OnAfterInitFieldsFromRecRef', '', false, false)]
    local procedure OnAfterInitFieldsFromRecRef(var DocumentAttachment: Record "Document Attachment"; var RecRef: RecordRef)
    var
        FieldRef: FieldRef;
        TemplateName: Code[20];
        BatchName: Code[10];
        LineNo: Integer;
    begin
        case RecRef.Number of
            Database::"Gen. Journal Line":
                begin
                    FieldRef := RecRef.Field(1);
                    TemplateName := FieldRef.Value;
                    DocumentAttachment.SetRange("Journal template name", TemplateName);
                    FieldRef := RecRef.Field(51);
                    BatchName := FieldRef.Value;
                    DocumentAttachment.SetRange("Journal Batch name", BatchName);
                    FieldRef := RecRef.Field(2);
                    LineNo := FieldRef.Value;
                    DocumentAttachment.SetRange("Journal Line No", LineNo);

                end;

        end;
    end;
}
