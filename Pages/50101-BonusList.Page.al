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
<<<<<<< HEAD
=======

>>>>>>> 9eec5a8b06c3635ee8d9a7abc73b64226577fd8f
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
<<<<<<< HEAD
=======
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
>>>>>>> 9eec5a8b06c3635ee8d9a7abc73b64226577fd8f
        }
    }

    var
        myInt: Integer;
}