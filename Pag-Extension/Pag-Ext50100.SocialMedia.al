pageextension 50100 "MNB Customer List" extends "Customer List"
{
    layout
    {
        addlast(Control1)
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
