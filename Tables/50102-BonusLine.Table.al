table 50102 "MNB Bonus Line"
{
    DataClassification = ToBeClassified;
    Caption = 'Bonus Line';
    fields
    {
        field(1; "Document No."; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Document No';
            TableRelation = "MNB Bonus Header";

        }
        field(2; Type; Enum "MNB Bouns Type")
        {
            DataClassification = ToBeClassified;
            Caption = 'Type';


        }
        field(3; "Item No."; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Item No.';

            TableRelation = if (Type = filter(Item)) Item;
        }
        field(4; "Bonus Perc."; Integer)
        {
            DataClassification = ToBeClassified;
            Caption = 'Bonus Pers.';
            MinValue = 0;
            MaxValue = 100;
        }
    }

    keys
    {
        key(Key1; "Document No.", Type, "Item No.")
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