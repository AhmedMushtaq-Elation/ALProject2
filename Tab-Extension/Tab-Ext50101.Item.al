tableextension 50101 FlowField extends Item
{
    fields
    {
        field(50100; CalcItemBonus; Decimal)
        {
            Caption = 'FlowField';
            FieldClass = FlowField;
            CalcFormula = sum("MNB Bonus Entry"."Bonus Amount"
            where("Item No." = field("No.")));

            //  CalcFormula = Sum("Detailed Cust. Ledg. Entry"."Amount (LCY)"
            // where ("Customer No."=Field("No."),
            // "Initial Entry Global Dim. 1"=Field("Global Dimension 1 Filter"),
            // "Initial Entry Global Dim. 2"=Field("Global Dimension 2 Filter"),
            // "Currency Code"=Field("Currency Filter")
            // ) );
            Editable = false;
        }
    }
    var
        BonusExistsErr: Label 'You can not delete Customer %1 because there is at least one Bonus assigned.';

    trigger OnBeforeDelete()
    var
        MNBBonusHeader: Record "MNB Bonus Header";
    begin
        MNBBonusHeader.SetRange("Customer No.", "No.");
        if not MNBBonusHeader.IsEmpty() then
            Error(BonusExistsErr, "No.");
    end;
}
