codeunit 50100 "Message Example"
{
    procedure ShowMessageExample()
    var
        CustomerRec: Record Customer;
    begin
        if CustomerRec.Get('10000') then begin
            Message('Cusomer Name :%1, Balance : %2', CustomerRec.Name);
        end

        else begin
            Message('Customer not found.', 'Warning');
        end;


    end;

    trigger OnRun()
    begin

    end;

    var
        myInt: Integer;
}