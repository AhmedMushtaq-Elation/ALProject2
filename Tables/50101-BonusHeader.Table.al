table 50101 "MNB Bonus Header"
{
    Caption = 'Bonus';
    DataClassification = ToBeClassified;
    DrillDownPageId = "MNB Bonus List";
    LookupPageId = "MNB Bonus List";

    fields
    {
        field(1; "No."; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'No.';

        }
        field(2; "Customer No."; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Customer No.';
            TableRelation = Customer;

        }
        field(3; "Starting Date"; Date)
        {
            DataClassification = ToBeClassified;
            Caption = 'Starting Date';

        }
        field(4; "Ending Date"; Date)
        {
            DataClassification = ToBeClassified;
            Caption = 'Ending Date';

        }
        field(5; Status; Enum "MNB Bonus Status")
        {
            DataClassification = ToBeClassified;
            Caption = 'Status';
        }

    }

    keys
    {
        key(Key1; "No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
        // Add changes to field groups here
    }

    var
        myInt: Integer;

    trigger OnInsert()
    begin

    end;

    trigger OnModify()
    begin

    end;

    trigger OnDelete()
    begin

    end;

    trigger OnRename()
    begin

    end;

}