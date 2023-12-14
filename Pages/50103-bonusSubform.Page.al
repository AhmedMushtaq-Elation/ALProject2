page 50103 "MNB Bonus Subform"
{
    PageType = ListPart;
    Caption = 'Lines';
    SourceTable = "MNB Bonus Line";

    layout
    {
        area(Content)
        {
            repeater(Lines)
            {
                field(Type; Rec.Type)
                {
                    ApplicationArea = All;
                    Tooltip = 'Specifies type of the bonus assigned.';
                }
                field("Item No."; Rec."Item No.")
                {
                    ApplicationArea = All;
                    Tooltip = 'Specifies item number for which bonus is assigned.';
                }
                field("Bonus Perc."; Rec."Bonus Perc.")
                {
                    ApplicationArea = All;
                    Tooltip = 'Specifies bonus percent.';
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
}