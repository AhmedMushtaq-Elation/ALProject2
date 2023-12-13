query 50100 "List of Five Top Customers"
{
    Caption = 'List of Five Top Customers';
    QueryType = Normal;
    
    elements
    {
        dataitem(Customer; Customer)
        {
            column(Address; Address)
            {
            }
            column(Balance; Balance)
            {
            }
            column(Amount; Amount)
            {
            }
            column(County; County)
            {
            }
            column(Image; Image)
            {
            }
        }
    }
    
    trigger OnBeforeOpen()
    begin
    
    end;
}
