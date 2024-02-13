<<<<<<< HEAD
=======

>>>>>>> 9eec5a8b06c3635ee8d9a7abc73b64226577fd8f
query 50100 "List of Five Top Customers"
{
    Caption = 'List of Five Top Customers';
    QueryType = Normal;
    QueryCategory = 'Customer List';

    elements
    {
        dataitem(Customer;
        Customer)
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
