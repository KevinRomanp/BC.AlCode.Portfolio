page 50100 CustomerAPI
{
    APIGroup = 'API';
    APIPublisher = 'Kevin';
    APIVersion = 'v2.0';
    ApplicationArea = All;
    Caption = 'customerAPI';
    DelayedInsert = true;
    EntityName = 'customerAPI';
    EntitySetName = 'customersAPI';
    PageType = API;
    SourceTable = Customer;
    InsertAllowed = true;
    ModifyAllowed = true;
    DeleteAllowed = false;
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
                {
                    Caption = '';
                }
                field(name; Rec.Name)
                {
                    Caption = 'Name';
                }
                field(vatRegistrationNo; Rec."VAT Registration No.")
                {
                    Caption = 'VAT Registration No.';
                }
                field(address; Rec.Address)
                {
                    Caption = 'Address';
                }
                field(address2; Rec."Address 2")
                {
                    Caption = 'Address 2';
                }
                field(phoneNo; Rec."Phone No.")
                {
                    Caption = 'Phone No.';
                }
                //TODO: falta tipo de cliente
            }
        }
    }
}
