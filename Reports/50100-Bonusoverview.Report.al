// report 50102 "MNB Bonus Overview"
// {
//     UsageCategory = ReportsAndAnalysis;
//     ApplicationArea = All;
//     Caption = 'Bonus Overview';
//     DefaultLayout = RDLC;
//     RDLCLayout = 'mnbbonus.rdl';

//     dataset
//     {
//         dataitem("MNB Bonus Header"; "MNB Bonus Header")
//         {
//             RequestFilterFields = "No.", "Customer No.";
//             column(No_; "No.")
//             {

//             }
//             column(Customer_No_; "Customer No.")
//             {

//             }
//             column(Starting_Date; "Starting Date")
//             {

//             }
//             column(Ending_Date; "Ending Date")
//             {

//             }
//             column(BonusNoCaptionLbl; 'BonusNoCaptionLbl')
//             {

//             }
//             column(CustomerNoCaptionLbl; 'CustomerNoCaptionLbl')
//             {

//             }
//             column(PostingDateCaptionLbl; 'PostingDateCaptionLbl')
//             {

//             }
//             column(DocumentNoCaptionLbl; 'DocumentNoCaptionLbl')
//             {

//             }
//             column(BonusAmountCaptionLbl; 'BonusAmountCaptionLbl')
//             {

//             }
//             column(ItemNoCaptionLbl; 'ItemNoCaptionLbl')
//             {

//             }
//             column(StartingDateCaptionLbl; 'StartingDateCaptionLbl')
//             {

//             }
//             column(EndingDateCaptionLbl; 'EndingDateCaptionLbl')
//             {

//             }

//             dataitem("MNB Bonus Entry"; "MNB Bonus Entry")
//             {
//                 DataItemLink = "Bonus No." = field("No.");
//                 RequestFilterFields = "Posting Date";

//                 column(Document_No_; "Document No.")
//                 {

//                 }
//                 column(Posting_Date; "Posting Date")
//                 {

//                 }
//                 column(Item_No_; "Item No.")
//                 {

//                 }
//                 column(Bonus_Amount; "Bonus Amount")
//                 {

//                 }

//             }
//         }
//     }


//     var
//         BonusNoCaptionLbl: Label 'Bonus No.';
//         CustomerNoCaptionLbl: Label 'Customer No.';
//         PostingDateCaptionLbl: Label 'Posting Date';
//         DocumentNoCaptionLbl: Label 'Document No.';
//         BonusAmountCaptionLbl: Label 'Amount';
//         ItemNoCaptionLbl: Label 'Item No.';
//         StartingDateCaptionLbl: Label 'Starting Date';
//         EndingDateCaptionLbl: Label 'Ending Date';

// }