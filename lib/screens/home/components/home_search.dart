import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sixam_tech_assignment/components/snakeBar.dart';

class HomeSearch extends StatelessWidget {
  const HomeSearch({
    Key? key,
  }) : super(key: key);



  @override
  Widget build(BuildContext context) {
    TextEditingController _searching = TextEditingController();
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Container(
          height: 70,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.white10.withOpacity(0),
                  spreadRadius: 5,
                  blurRadius: 8,
                  offset: Offset(0, 1),
                )
              ]),
          child: Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: TextFormField(
                    controller: _searching,
                    readOnly: false,
                    decoration: const InputDecoration(
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        hintText: "Search food or restaurent here...",
                        hintStyle: TextStyle(
                            color: Colors.grey,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                            fontSize: 14)),
                    onTap: (){

                    },

                  ),
                ),
              ),
              GestureDetector(
                onTap: (){
                  CustomSnakeBar.showSnakeBar(context, _searching.text+' Searching ');
                },
                child: SizedBox(
                  height: 60,
                  width: 60,
                  child: Center(
                      child: SvgPicture.asset('assets/icons/Search Icon.svg')),
                ),
              ),
            ],
          )),
    );
  }
}
