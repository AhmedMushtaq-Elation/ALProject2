<<<<<<< HEAD
tableextension 50100 "Social Media" extends Customer
{
=======
tableextension 50100 "MNB Customer " extends Customer
{

>>>>>>> 9eec5a8b06c3635ee8d9a7abc73b64226577fd8f
    fields
    {
        field(50100; Facebook; Text[50])
        {
            Caption = 'Facebook';
            DataClassification = ToBeClassified;
        }
        field(50101; "Insatagram"; Text[50])
        {
            Caption = 'Insatagram ';
            DataClassification = ToBeClassified;
        }
        field(50102; "Linkedin"; Text[50])
        {
            Caption = 'Linkedin ';
            DataClassification = ToBeClassified;
        }
        field(50103; GitHub; Text[50])
        {
            Caption = 'GitHub';
            DataClassification = ToBeClassified;
        }
<<<<<<< HEAD

    }
=======
        field(50104; "MNB Bonuse"; Integer)
        {
            Caption = 'Bonuses';
            FieldClass = FlowField;
            CalcFormula = count("MNB Bonus Header" where("Customer No." = field("No.")));
            Editable = false;
        }
        // field(50105; "Lookup Value Code"; Code[10])
        // {
        //     TableRelation = LookupValue;
        // }

    }
    var
        BonusExistsErr: Label '"You can not delete Customer %1 because there is at least one Bonuse assigned"';

    trigger OnBeforeDelete()
    var
        "MNB Bonus Header": Record "MNB Bonus Header";
    begin
        "MNB Bonus Header".SetRange("Customer No.", "No.");

        if not "MNB Bonus Header".IsEmpty() then
            Error(BonusExistsErr, "No.");

    end;
>>>>>>> 9eec5a8b06c3635ee8d9a7abc73b64226577fd8f
}
