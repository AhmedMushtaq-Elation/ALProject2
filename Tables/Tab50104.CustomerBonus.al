table 50104 CustomerBonusTab
{
    Caption = 'FirstTaskTable';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Customer No."; Code[20])
        {
            DataClassification = CustomerContent;
            Caption = 'Customer No';

            TableRelation = Customer;
        }
        field(2; "Item No."; Code[20])
        {
            DataClassification = CustomerContent;
            Caption = 'Item No';

            TableRelation = Item;
        }
        field(3; "Bonus."; Integer)
        {
            DataClassification = CustomerContent;
            Caption = 'Bonus Pers.';
            MinValue = 0;
            MaxValue = 100;

        }
    }

    keys
    {
        key(PK1; "Customer No.")
        {
            Clustered = true;
        }

    }
}
