page 50100 "MNB Bonus Setup"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "MNB Bouns Setup";
    Caption = 'Bonus Setup';
    // DeleteAllowed = true;
    // InsertAllowed = true;

    layout
    {
        area(Content)
        {
            group(Numbering)
            {
                Caption = 'Numbering';
                Editable = true;
                field("Bonus Nos."; Rec."Bonus Nos")
                {
                    ApplicationArea = All;
                    Editable = true;
                    ToolTip = 'Specifies number series what will be used for bonus numbers.';

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

    var
        myInt: Integer;

    trigger OnOpenPage()
    var
        Bonussetup: Record "MNB Bouns Setup";
    begin
        Bonussetup.Reset();
        if not Bonussetup.Get() then begin
            Bonussetup.init();
            Bonussetup.insert();
        end;



    end;

}
