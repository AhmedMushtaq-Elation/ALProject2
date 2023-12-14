page 50100 "MNB Bonus Setup"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "MNB Bouns Setup";
    Caption = 'Bonus Setup';
    DeleteAllowed = false;
    InsertAllowed = false;

    layout
    {
        area(Content)
        {
            group(Numbering)
            {
                Caption = 'Numbering';
                field("Bonus Nos."; 'Bonus Nos.')
                {
                    ApplicationArea = All;
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
    begin

        rec.Reset();
        if not rec.Get() then begin
            rec.Init();
            rec.Insert();
        end
    end;

}
