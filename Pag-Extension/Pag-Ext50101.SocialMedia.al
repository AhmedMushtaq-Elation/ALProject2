pageextension 50101 "MNB Customer card" extends "Customer Card"
{
    layout
    {
        addlast(Control10)
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
            field("MNB Bonuse"; Rec."MNB Bonuse")
            {
                ApplicationArea = All;
                ToolTip = 'show number of assgined to customer';
            }
            // field("Lookup Value Code"; Rec."Lookup Value Code")
            // {

            // }
        }
    }

    actions
    {
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
}
