page 50102 "MNB Bonus Card"
{
    UsageCategory = Documents;
    ApplicationArea = All;
    Caption = ' Bonus Card';
    PageType = Document;
    SourceTable = "MNB Bonus Header";

    layout
    {
        area(content)
        {
            group(General)
            {
                Caption = 'General';
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
                field("Ending Date"; Rec."Ending Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the Ending Date.';
                }

                field("Starting Date"; Rec."Starting Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the Starting Date.';
                }
                field(Status; Rec.Status)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the bonus Status.';
                }

            }

            part(Lines; "MNB Bonus Subform")
            {
                ApplicationArea = All;
                SubPageLink = "Document No." = field("No.");
            }
        }
<<<<<<< HEAD
=======

>>>>>>> 9eec5a8b06c3635ee8d9a7abc73b64226577fd8f
    }

    actions
    {

        area(Navigation)
        {
<<<<<<< HEAD

=======
<<<<<<< HEAD
=======
           
>>>>>>> 9eec5a8b06c3635ee8d9a7abc73b64226577fd8f
>>>>>>> 7f8e15037cf08f93cadaf1bcf3fc82111b0ee99b
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
<<<<<<< HEAD


            }
        }
    }
=======
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


            }

        }
    }
    // trigger OnModifyRecord(): Boolean
    // var
    //     FirstTaskTable: Record FirstTaskTable;
    //     MNBBonusHeader: Record "MNB Bonus Header";
    //     MNBBonusLine: Record "MNB Bonus Line";
    // begin

    //     if (MNBBonusHeader."Customer No." = FirstTaskTable."Customer No.")
    //     and (MNBBonusLine."Item No." = FirstTaskTable."Item No.") then
    //         Error('ERRor : Cannot Have Bounus for Customer No. 10000 and Item No. 1906.');

    // end;



>>>>>>> 9eec5a8b06c3635ee8d9a7abc73b64226577fd8f
}

// addafter("Open", "CheckConditionsOnOpen")
//         {
//             ApplicationArea = All;
//             trigger OnAction()
//             var
//                 CustomerRec: Record Customer;
//                 ItemRec: Record Item;
//             begin
//                 // Retrieve selected customer and item information
//                 CustomerRec.Get("No.", SelectedCustomerID);
//                 ItemRec.Get("No.", SelectedItemID);

//                 // Check if customer number is 10000 and item number is 1906
//                 if CustomerRec."No." = 10000 and ItemRec."No." = 1906 then
//                 begin
//                     Error('Cannot open page for Customer No. 10000 and Item No. 1906.');
//                 end;
//             end;
//         }


