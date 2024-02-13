codeunit 50106 FourthTestCodeunit
{

    Subtype = Test;

    [Test]
    procedure FirstTestPageTestFunction()
    var
        PaymentTerms: TestPage "Payment Terms";
    begin
        PaymentTerms.OpenView();
        PaymentTerms.Last();
        PaymentTerms.Code.AssertEquals('LUC');
        PaymentTerms.Close();
    end;

    [Test]
    procedure SecondTestPageTestFunction()
    var
        PaymentTerms: TestPage "payment Terms";
    begin
        PaymentTerms.OpenNew();
        PaymentTerms.Code.SetValue('LUC');
        PaymentTerms."Discount %".SetValue('56');
        PaymentTerms.Description.SetValue(PaymentTerms.Code.Value());
        Error('Code : %1 \ Discount %:%2 \ Description:%3',
        PaymentTerms.Code.Value(),
        PaymentTerms."Discount %".Value(),
        PaymentTerms.Description.Value()
        );
        PaymentTerms.Close();
    end;

    trigger OnRun()
    var
        myInt: Integer;
    begin

    end;
}
