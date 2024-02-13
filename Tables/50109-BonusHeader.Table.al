table 50109 "MNB Bonus Header"
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
            trigger OnValidate()
            var
                MNBBonusSetup: Record "MNB Bouns Setup";
                NoSeriesManagement: Codeunit NoSeriesManagement;
            begin
                //TestStatusOpen();
                if "No." <> xRec."No." then begin
                    MNBBonusSetup.Get();
                    MNBBonusSetup.TestField("Bonus Nos");
                    NoSeriesManagement.TestManual(MNBBonusSetup."Bonus Nos");
                end;
            end;

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



    trigger OnModify()
    begin

    end;

    trigger OnDelete()
    begin

    end;

    trigger OnRename()
    begin

    end;

    trigger OnInsert()
    var
        MNBBonusSetup: Record "MNB Bouns Setup";
        NoSeriesManagement: Codeunit NoSeriesManagement;
    begin
        if "No." = '' then begin
            MNBBonusSetup.Get();
            MNBBonusSetup.TestField("Bonus Nos");
            NoSeriesManagement.InitSeries(MNBBonusSetup."Bonus Nos", MNBBonusSetup."Bonus Nos", WorkDate(), "No.", MNBBonusSetup."Bonus Nos");
        end;
    end;


}