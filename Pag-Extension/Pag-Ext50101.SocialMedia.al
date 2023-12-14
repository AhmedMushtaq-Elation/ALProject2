pageextension 50101 "Social Media" extends "Customer Card"
{
    layout
    {
        addlast(General)
        {
            field(Facebook; Rec.Facebook)
            {
                ApplicationArea = All;
            }
            field(Insatagram; Rec.Insatagram)
            {
                ApplicationArea = All;
            }
            field(Linkedin; Rec.Linkedin)
            {
                ApplicationArea = All;
            }
            field(GitHub; Rec.GitHub)
            {
                ApplicationArea = All;
            }
        }
    }

    actions
    {
        // Add changes to page actions here
    }

    var
        myInt: Integer;
}
