codeunit 50104 SecondTestCodeunit
{
    Subtype = Test;

    [Test]
    procedure NegativeTestFunction()
    begin
        // [GIVEN] Given Some State 
        // [WHEN] When Some Action 
        // [THEN] Then Expected Output 
        Error('Error : NegativeTestFunction');

    end;

    [Test]
    procedure PositiveNegativeTestFunction()
    begin
        // [GIVEN] Given Some State 
        // [WHEN] When Some Action 
        // [THEN] Then Expected Output
        asserterror Error('Error : PositiveNegativeTestFunction');
    end;
}
