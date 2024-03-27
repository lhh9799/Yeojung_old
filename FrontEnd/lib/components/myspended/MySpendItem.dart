// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:front/components/myspended/MySpendMap.dart';
// import 'package:front/components/myspended/ShowReceiptBtn.dart';
// import 'package:front/const/colors/Colors.dart';
// import 'package:front/providers/store.dart';
// import 'package:intl/intl.dart';
// import '../../entities/Receipt.dart';
// import '../../models/CustomDivider.dart';
// import '../../screen/YjReceipt.dart';
//
// class MySpendItem extends StatefulWidget {
//   final int groupId;
//   final int paymentId;
//
//   const MySpendItem({
//     required this.groupId,
//     required this.paymentId,
//     super.key,
//   });
//
//   @override
//   State<MySpendItem> createState() => _MySpendItemState();
// }
//
// class _MySpendItemState extends State<MySpendItem> {
//   var userManager = UserManager();
//
//   @override
//   void initState() {
//     super.initState();
//     get();
//     userManager.loadUserInfo();
//   }
//
//   void
//
//
//   @override
//   Widget build(BuildContext context) {
//     userManager.loadUserInfo();
//
//     return Scaffold(
//       appBar: AppBar(
//         scrolledUnderElevation: 0,
//         title: Text(widget.spend['transactionSummary'], style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.sp)),
//       ),
//       body: Padding(
//         padding: EdgeInsets.all(30.w),
//         child: Column(
//           children: [
//             Column(
//               children: [
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Text(
//                       "거래시간",
//                       style: TextStyle(fontSize: 16.sp),
//                     ),
//                     Text(
//                       '${widget.spend['transactionDate']} ${widget.spend['transactionTime']}',
//                       style: TextStyle(fontSize: 16.sp),
//                     ),
//                   ],
//                 ),
//                 SizedBox(
//                   height: 30.h,
//                 ),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Text(
//                       "거래금액",
//                       style: TextStyle(fontSize: 16.sp),
//                     ),
//                     Text(
//                       '${NumberFormat('#,###').format(widget.spend['transactionBalance'])}원',
//                       style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold, color: TEXT_COLOR),
//                     ),
//                   ],
//                 ),
//                 SizedBox(
//                   height: 30.h,
//                 ),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Text(
//                       "결재자",
//                       style: TextStyle(fontSize: 16.sp),
//                     ),
//                     Text(
//                       '${userManager.name}',
//                       style: TextStyle(fontSize: 16.sp),
//                     ),
//                   ],
//                 ),
//                 SizedBox(
//                   height: 50.h,
//                 ),
//                 CustomDivider(),
//                 ShowReceiptBtn(
//                   onPressed: () {
//                     showModalBottomSheet(
//                       context: context,
//                       isScrollControlled: true,
//                       builder: (BuildContext context) {
//                         return Container(
//                           height: MediaQuery.of(context).size.height * 0.8,
//                           color: Colors.white,
//                           child: Center(
//                             child: YjReceipt(spend: widget.spend),
//                           ),
//                         );
//                       },
//                     );
//                   },
//                 ),
//                 CustomDivider(),
//                 SizedBox(
//                   height: 10.h,
//                 ),
//                 MySpendMap(location: widget.spend.addresses ?? "광주 광산구 하남산단6번로 107"),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
