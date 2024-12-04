// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';

// // import '../../gen/fonts.gen.dart';

// class BuildText extends StatelessWidget {
//   const BuildText({
//     super.key,
//     this.text = '',
//     this.fontSize,
//     this.color = ColorName.blackTextColor,
//     this.family = FontFamily.manrope,
//     this.height = 1.1,
//     this.letterSpacing,
//     this.decoration = TextDecoration.none,
//     this.textAlign = TextAlign.start,
//     this.maxLines = 100,
//     this.italics = false,
//     this.fontWeight = FontWeight.w500,
//     this.shadows,
//     this.onTextPressed,
//     this.overflow = TextOverflow.ellipsis,
//   });

//   final String text;
//   final double? fontSize;
//   final double height;
//   final double? letterSpacing;
//   final Color? color;
//   final TextDecoration decoration;
//   final TextAlign textAlign;
//   final int maxLines;
//   final bool italics;
//   final String? family;
//   final List<Shadow>? shadows;

//   final dynamic Function()? onTextPressed;
//   final FontWeight? fontWeight;
//   final TextOverflow overflow;

//   @override
//   Widget build(BuildContext context) {
//     return InkWell(
//       onTap: onTextPressed,
//       child: Text(
//         text,
//         textAlign: textAlign,
//         maxLines: maxLines,
//         overflow: TextOverflow.ellipsis,
//         style: TextStyle(
//           fontSize: fontSize,
//           letterSpacing: letterSpacing,
//           height: height,
//           color: color ?? Colors.black,
//           decoration: decoration,
//           fontFamily: family,
//           fontWeight: fontWeight,
//           shadows: shadows,
//           overflow: overflow,
//         ),
//       ),
//     );
//   }
// }

// class BuildTextField extends StatefulWidget {
//   const BuildTextField({
//     required this.label,
//     required this.keyBoardType,
//     required this.controller,
//     required this.iconData,
//     super.key,
//     this.hint = '',
//     this.obscureText = false,
//     this.validator,
//     this.textInputAction = TextInputAction.done,
//     this.trailingIcon = false,
//     this.showIcon = true,
//     this.float = FloatingLabelBehavior.auto,
//     this.isEnable = true,
//     this.changed,
//     this.autoFocus = false,
//     this.onDone,
//     this.type = 'normal',
//     this.readOnly,
//     this.trailIcon,
//     this.textInputFormatter,
//     this.fontSize = 14,
//     this.isPassword = false,
//     this.stream,
//   });

//   final double fontSize;
//   final Stream<String>? stream;
//   final String label;
//   final String hint;
//   final String type;
//   final IconData iconData;
//   final TextInputType keyBoardType;
//   final bool obscureText;
//   final TextEditingController controller;

//   // ignore: prefer_typing_uninitialized_variables
//   final String? Function(String?)? validator;
//   final TextInputAction textInputAction;
//   final bool? trailingIcon;
//   final bool? showIcon;
//   final bool? isEnable;
//   final bool? autoFocus;
//   final FloatingLabelBehavior float;
//   final String? Function(String)? changed;
//   final String? Function(String)? onDone;
//   final bool? readOnly;
//   final Widget? trailIcon;
//   final bool? isPassword;

//   final List<TextInputFormatter>? textInputFormatter;

//   @override
//   State<BuildTextField> createState() => _BuildTextFieldState();
// }

// class _BuildTextFieldState extends State<BuildTextField> {
//   FocusNode _focusNode = FocusNode();
//   bool? obsecureText;

//   @override
//   void initState() {
//     obsecureText = widget.obscureText;
//     super.initState();
//     _focusNode = FocusNode();
//   }

//   @override
//   void dispose() {
//     _focusNode.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return StreamBuilder<String>(
//         stream: widget.stream,
//         builder: (context, snapshot) {
//           return Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               _createTextField(
//                   context, (widget.trailIcon != null && widget.trailingIcon!)),
//               if (snapshot.hasError) ...[
//                 SizedBox(
//                   height: 4.h,
//                 ),
//                 Row(
//                   children: [
//                     10.horizontalSpace,
//                     BuildText(
//                       text: snapshot.error.toString(),
//                       color: ColorName.redColor,
//                       fontSize: 12.sp,
//                     ),
//                   ],
//                 )
//               ]
//             ],
//           );
//         });
//   }

//   Widget _createTextField(BuildContext context, bool hasTrialingIcon) {
//     return Container(
//       padding: hasTrialingIcon
//           ? const EdgeInsets.fromLTRB(24, 12, 12, 4)
//           : const EdgeInsets.fromLTRB(24, 6, 12, 6),
//       decoration: BoxDecoration(
//         color: const Color(0x0C003D86),
//         borderRadius: BorderRadius.circular(8),
//       ),
//       child: TextFormField(
//         inputFormatters: widget.textInputFormatter,
//         style: widget.isEnable!
//             ? TextStyle(
//                 color: ColorName.blackTextColor,
//                 fontFamily: FontFamily.manrope,
//                 fontSize: 16.sp,
//               )
//             : TextStyle(
//                 color: ColorName.formGreyColor,
//                 fontFamily: FontFamily.manrope,
//                 fontSize: 16.sp,
//               ),
//         autofocus: widget.autoFocus!,
//         controller: widget.controller,
//         validator: widget.validator,
//         onTap: () {
//           setState(() {
//             FocusScope.of(context).requestFocus(_focusNode);
//           });
//         },

//         enabled: widget.isEnable,
//         focusNode: _focusNode,
//         maxLines: widget.textInputAction == TextInputAction.newline ? 8 : 1,
//         keyboardType: widget.keyBoardType,
//         obscureText: obsecureText!,
//         // obscuringCharacter: '●',
//         obscuringCharacter: '*',
//         textInputAction: widget.textInputAction,
//         decoration: InputDecoration(
//           labelText: widget.label != '' ? widget.label : null,
//           hintText: widget.hint,
//           contentPadding: widget.textInputAction == TextInputAction.newline
//               ? EdgeInsets.symmetric(vertical: 12)
//               : EdgeInsets.zero,

//           prefixIcon: widget.showIcon!
//               ? Icon(
//                   widget.iconData,
//                   size: 15.w,
//                   color: _focusNode.hasFocus
//                       ? Theme.of(context).primaryColor
//                       : Colors.black,
//                 )
//               : null,
//           suffixIcon: widget.trailingIcon!
//               ? IconButton(
//                   onPressed: () {
//                     setState(() {
//                       obsecureText = !obsecureText!;
//                     });
//                   },
//                   // ignore: use_named_constants
//                   padding: const EdgeInsets.all(0),
//                   icon: widget.isPassword!
//                       ? SizedBox(
//                           width: 24.w,
//                           child: obsecureText!
//                               ? Assets.svg.eyeSlash.svg()
//                               : Assets.svg.eye.svg(),
//                         )
//                       : widget.trailIcon ?? SizedBox(),
//                 )
//               : null,
//           // icon ,
//           border: InputBorder.none,
//           fillColor: Colors.green,
//           focusedBorder: InputBorder.none,
//           floatingLabelBehavior: widget.float,

//           labelStyle: TextStyle(
//             color: ColorName.labelColor,
//             fontFamily: FontFamily.manrope,
//             fontSize: 16.sp,
//             fontWeight: FontWeight.w600,
//           ),
//           floatingLabelStyle: TextStyle(
//             color: ColorName.textGreyColor,
//             fontSize: 18.sp,
//             fontFamily: FontFamily.manrope,
//           ),
//           hintStyle: TextStyle(
//             color: ColorName.labelColor,
//             fontFamily: FontFamily.manrope,
//             fontSize: 16.sp,
//             fontWeight: FontWeight.w600,
//           ),
//           focusColor: ColorName.primaryColor,
//           errorBorder: InputBorder.none,
//         ),
//         onChanged: (value) {
//           value = widget.controller.text;
//           if (value.isNotEmpty && widget.changed != null) {
//             widget.changed!(value);
//           }
//         },
//         onFieldSubmitted: widget.onDone,
//       ),
//     );
//   }
// }
