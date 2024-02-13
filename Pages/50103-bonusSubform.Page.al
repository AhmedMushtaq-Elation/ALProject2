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
                    trigger OnValidate()
                    var
                        CustomerBonusTab: Record CustomerBonusTab;
                        MNBBonusHeader: Record "MNB Bonus Header";
                        MNBBonusLine: Record "MNB Bonus Line";
                    begin
                        MNBBonusHeader.Reset();
                        MNBBonusHeader.SetRange("No.", rec."Document No.");
                        if MNBBonusHeader.FindFirst() then begin
                            //CustomerBonusTab.Reset();
                            CustomerBonusTab.SetRange("Customer No.", MNBBonusHeader."Customer No.");
                            if CustomerBonusTab.FindFirst then begin
                                if (rec."Bonus Perc." <= CustomerBonusTab."Bonus.") then
                                    Error('Cannot  able to select %1 you have  to select more then %2', Rec."Bonus Perc.", CustomerBonusTab."Bonus.")
                                else begin
                                    Rec."Bonus Perc." := Rec."Bonus Perc." + CustomerBonusTab."Bonus.";
                                end;

                            end;

                        end;

                    end;

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