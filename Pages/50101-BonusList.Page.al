page 50101 "MNB Bonus List"
{
    PageType = List;
    Caption = 'Bonuses';
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "MNB Bonus Header";
    Editable = false;
    CardPageId = "MNB Bonus Card";


    layout
    {
        area(Content)
        {

            repeater(Control1)
            {
                field("No."; Rec."No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the bonus number.';

                }
                field("Customer No."; Rec."Customer No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the customer number.';
                }
                field("Starting Date"; Rec."Starting Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the Starting Date.';
                }
                field("Ending Date"; Rec."Ending Date")
                {

                    ApplicationArea = All;
                    ToolTip = 'Specifies the Ending Date.';

                }
                field(Status; Rec.Status)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the bonus Status.';

                }

            }
        }
    }

    actions
    {
        area(Navigation)
        {
            action(customerCard)
            {
                ApplicationArea = All;
                Caption = 'customer Card';
                Image = Customer;
                Promoted = true;
                PromotedCategory = Process;
                RunObject = page "customer Card";
                RunPageLink = "No." = field("Customer No.");
                ToolTip = 'Open Customer Card.';


            }

            action(BonusEntries)
            {
                ApplicationArea = All;
                Caption = 'Bonus Entries';
                Image = Entry;
                Promoted = true;
                PromotedCategory = Process;
                RunObject = page "MNB Bonus Entries";
                RunPageLink = "Bonus No." = field("No.");
                ToolTip = 'Opens bonus entries.';


                trigger OnAction()
                begin

                end;
            }
        }
    }

    var
        myInt: Integer;
}