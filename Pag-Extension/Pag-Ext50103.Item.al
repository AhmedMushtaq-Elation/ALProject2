pageextension 50103 FlowField extends "item card"
{
    layout
    {
        addbefore(Description)
        {
            field(CalcItemBonus; Rec.CalcItemBonus)
            {
                ApplicationArea = All;
                ToolTip = 'Shows number of assgined bonuses to item.';
            }

        }
    }
    actions
    {
        addlast(navigation)
        {
            action(MNBBonuses)
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
