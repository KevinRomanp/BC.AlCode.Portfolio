tableextension 52000 "Document Attachment" extends "Document Attachment"
{
    fields
    {
        field(52000; "Entry No"; Integer)
        {
            Caption = 'Entry No';
            DataClassification = CustomerContent;
        }
        field(52001; "Journal template name"; code[20])
        {
            Caption = 'Journal Template Name';
            DataClassification = CustomerContent;
        }
        field(52002; "Journal Batch name"; code[20])
        {
            Caption = 'Journal Batch Name';
            DataClassification = CustomerContent;
        }
        field(52003; "Journal Line No"; Integer)
        {
            Caption = 'Line No';
            DataClassification = CustomerContent;
        }
    }
}
