codeunit 50103 TestCodeunit
{
    Subtype = Test;


    [Test]
    procedure FirstTestFunction()
    begin
        // [GIVEN] Given Some State 
        // [WHEN] When Some Action 
        // [THEN] Then Expected Output 
        Message('haha FirstTestFunction');
    end;

    [Test]
    procedure SecondTestFunction()
    begin
        // [GIVEN] Given Some State 
        // [WHEN] When Some Action 
        // [THEN] Then Expected Output 
        Error('Hahah SecondTestFunction');
    end;
}

