tableextension 50100 "Social Media" extends Customer
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

    }
}
