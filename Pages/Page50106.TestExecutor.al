page 50106 TestExecutor
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Tasks;
    Caption = 'Test Executor';




    actions
    {
        area(Processing)
        {
            action(FirstTestFunction)
            {
                ApplicationArea = All;
                Caption = 'First Test Function';
                ToolTip = 'Execute First Test Codeunit';
                Image = ExecuteBatch;
                RunObject = codeunit TestCodeunit;



            }
            action(SecondTestFunction)
            {
                ApplicationArea = All;
                Caption = 'Second Test Function';
                ToolTip = 'Execute Second Test Function';
                Image = ExecuteBatch;
                RunObject = codeunit TestCodeunit;

            }
            action(SecondTestCodeunit)
            {
                ApplicationArea = All;
                Caption = 'Second Test Codeunit';
                ToolTip = 'Execute Second Test Codeunit';
                Image = ExecuteBatch;
                RunObject = codeunit SecondTestCodeunit;

            }
            action(ThirdTestCodeunit)
            {
                ApplicationArea = All;
                Caption = 'Third Test Codeunit';
                ToolTip = 'Execute Third Test Codeunit';
                Image = ExecuteBatch;
                RunObject = codeunit ThirdTestCodeunit;

            }
        }
    }

    var
        myInt: Integer;
}