tableextension 50100 "MNB Customer " extends Customer
{

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
        field(50104; "MNB Bonuse"; Integer)
        {
            Caption = 'Bonuses';
            FieldClass = FlowField;
            CalcFormula = count("MNB Bonus Header" where("Customer No." = field("No.")));
            Editable = false;
        }

    }
    var
        BonusExistsErr: Label '"You can not delete Customer %1 because there is at least one Bonuse assigned"';

    trigger OnBeforeDelete()
    var
        "MNB Bonus Header": Record "MNB Bonus Header";
    begin
        "MNB Bonus Header".SetRange("Customer No.");

        if not "MNB Bonus Header".IsEmpty() then
            Error(BonusExistsErr, "No.");

    end;
}
