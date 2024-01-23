<<<<<<< HEAD
pageextension 50101 "Social Media" extends "Customer Card"
{
    layout
    {
        addlast(General)
=======
pageextension 50101 "MNB Customer card" extends "Customer Card"
{
    layout
    {
        addlast(Control10)
>>>>>>> 9eec5a8b06c3635ee8d9a7abc73b64226577fd8f
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
<<<<<<< HEAD
=======
            field("MNB Bonuse"; Rec."MNB Bonuse")
            {
                ApplicationArea = All;
                ToolTip = 'show number of assgined to customer';
            }
            // field("Lookup Value Code"; Rec."Lookup Value Code")
            // {

            // }
>>>>>>> 9eec5a8b06c3635ee8d9a7abc73b64226577fd8f
        }
    }

    actions
    {
<<<<<<< HEAD
        // Add changes to page actions here
    }

    var
        myInt: Integer;
=======
        addlast(navigation)
        {
            action("MNBBonuses")
            {
                Caption = 'Bonuses';
                ApplicationArea = All;
                Image = Discount;
                RunObject = page "MNB Bonus List";
                RunPageLink = "Customer No." = field("No.");
            }
        }


    }
>>>>>>> 9eec5a8b06c3635ee8d9a7abc73b64226577fd8f
}
