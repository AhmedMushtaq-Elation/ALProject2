codeunit 50101 "Error Example"
{
    procedure ShowErrorExample()
    var
        Quantity: Integer;
    begin
        if Quantity <= 0 then begin
            Error('Invalid quantity');
        end else begin
            Message('Valid quantity');
        end;
    end;

    trigger OnRun()
    begin

    end;

    var
        myInt: Integer;
}