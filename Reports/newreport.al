// report 50101 MyReport
// {
//     UsageCategory = ReportsAndAnalysis;
//     ApplicationArea = All;
//     //DefaultRenderingLayout = LayoutName;

//     dataset
//     {
//         dataitem(DataItemName; "MNB Bonus Header")
//         {
//             column(Customer_No_; "Customer No.")
//             {

//             }
//         }
//     }

//     requestpage
//     {
//         layout
//         {
//             area(Content)
//             {
//                 group(GroupName)
//                 {
//                     // field(CurrReport;CurrReport)
//                     // {
//                     //     ApplicationArea = All;

//                     // }
//                 }
//             }
//         }

//         actions
//         {
//             area(processing)
//             {
//                 action(ActionName)
//                 {
//                     ApplicationArea = All;

//                 }
//             }
//         }
//     }

//     // rendering
//     // {
//     //     layout(LayoutName)
//     //     {
//     //         Type = RDLC;
//     //         LayoutFile = 'myreport.rdl';
//     //     }
//     // }

//     var
//         myInt: Integer;
// }