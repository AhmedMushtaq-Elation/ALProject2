page 50105 ArithmeticOperators
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    Caption = 'Arithmetic Operators';

    layout
    {
        area(Content)
        {
            group(GroupName)
            {
                field("Number 1"; "Number 1")
                {
                    ApplicationArea = All;

                }
                field("Number 2"; "Number 2")
                {
                    ApplicationArea = All;

                }
                field(Result; Result)
                {
                    ApplicationArea = All;

                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(Addition)
            {
                ApplicationArea = All;

                trigger OnAction()
                begin
                    Result := "Number 1" + "Number 2";
                end;
            }
            action(Modulus)
            {
                ApplicationArea = All;

                trigger OnAction()
                begin
                    Result := "Number 1" MOD "Number 2";
                end;
            }
            action(Division)
            {
                ApplicationArea = All;

                trigger OnAction()
                begin
                    Result := "Number 1" / "Number 2";
                end;
            }
            action(Multiplication)
            {
                ApplicationArea = All;

                trigger OnAction()
                begin
                    Result := "Number 1" * "Number 2";
                end;
            }
        }
    }

    var
        "Number 1": Integer;
        "Number 2": Integer;
        Result: Decimal;

}