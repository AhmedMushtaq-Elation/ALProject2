codeunit 50105 ThirdTestCodeunit
{
    Subtype = Test;
    [Test]


    [HandlerFunctions('MessageHandler')]

    procedure FirstTestFunction()
    begin
        // [GIVEN] Given Some State 
        // [WHEN] When Some Action 
        // [THEN] Then Expected Output 
        Message('First Test Function');
    end;

    [MessageHandler]
    procedure MessageHandler(Message: Text[1024])

    begin

    end;
}
