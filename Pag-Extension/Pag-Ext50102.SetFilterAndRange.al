pageextension 50102 SetFilterAndRange extends "Item List"
{
    actions
    {
        addfirst(processing)
        {
            action("Set Filter")
            {
                ApplicationArea = All;
                Image = ApplyEntries;
                Promoted = true;
                PromotedIsBig = true;
                PromotedCategory = Process;
                ToolTip = 'Applies the filter and range to the item list.';
                trigger OnAction();
                begin
                    // Call a function in codeunit 50102 that sets up the filters
                    Rec.SetFilter("No.", '%1..%2|%3', '10010', '10012', '10013');
                end;

            }
            action("Set Range")
            {
                ApplicationArea = All;
                Caption = 'Set  Range';
                Image = SortAscending;
                Promoted = true;
                PromotedIsBig = true;
                PromotedCategory = Process;
                trigger OnAction()
                begin
                    Rec.SetRange("Unit Price", 1.79, 1.79);
                end;
            }

        }

    }
}