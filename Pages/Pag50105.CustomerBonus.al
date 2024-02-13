page 50105 CustomerBonusPage
{
    ApplicationArea = All;
    Caption = 'CustomerBonus';
    SourceTable = CustomerBonusTab;
    UsageCategory = Lists;
    PageType = List;


    layout
    {
        area(content)
        {
            repeater(Control)
            {
                field("Customer No."; Rec."Customer No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Customer No field.';
                }
                field("Item No."; Rec."Item No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Item No field.';
                }
                field("Bonus."; Rec."Bonus.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Bonus Perc. field.';
                }
            }
        }
    }
    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;

                trigger OnAction()
                begin

                end;
            }
        }
    }
}
