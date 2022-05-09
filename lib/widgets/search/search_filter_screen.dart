// import 'package:flutter/material.dart';
// import 'package:kossearch/models/space.dart';
// import 'package:kossearch/theme.dart';
// import 'package:provider/provider.dart';
//
// import '../../core/api.dart';
// import '../../core/app_state.dart';
// import '../../providers/space_provider.dart';
//
// class SearchFilterScreen extends StatefulWidget {
//   final Space space;
//
//   SearchFilterScreen(this.space);
//
//
//   @override
//   _SearchFilterScreenState createState() => _SearchFilterScreenState();
// }
//
// class _SearchFilterScreenState extends State<SearchFilterScreen> {
//
//   @override
//   Widget build(BuildContext context) {
//     final api = Provider.of<SpaceProvider>(context);
//     //final state = Provider.of<AppState>(context);
//     return Scaffold(
//         appBar: AppBar(
//         title: Text('Filter your search'),backgroundColor: primaryColor,
//     ),
//     body: Container(
//     child: ListView(
//     children: [
//       SizedBox(height: 20),
//     Padding(
//     padding: const EdgeInsets.symmetric(horizontal: 15),
//     child: Column(
//     crossAxisAlignment: CrossAxisAlignment.start,
//     children: [
//                   Text(
//                     'Categories:',
//                     style: TextStyle(
//                       fontSize: 15,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                   // Wrap(
//                   //   spacing: 10,
//                   //   children:
//                     // List<Widget>.generate((index) {
//                     //   final category = SpaceProvider[index];
//                     // // List<Widget>.generate(api.categories.length, (index) {
//                     // //   final category = api.categories[index];
//                     //   final isSelected =
//                     //   state.searchOptions.categories.contains(category.id);
//                     //List<dynamic>.generate( SpaceProvider.getData(index),(index) {
//
//                       //return
//                 //final isSelected =
//                     FilterChip(
//                         label:Text(widget.space.name),
//                         labelStyle: TextStyle(color: primaryColor,
//                           // color: isSelected
//                           //     ? Colors.white
//                           //     : Theme.of(context).textTheme.bodyText1.color,
//
//                           fontWeight: FontWeight.bold,
//                         ),
//                         //selected: isSelected,
//                         selectedColor: primaryColor,
//                         checkmarkColor: Colors.white,
//                         onSelected: (bool selected) {
//                           setState(() {
//                             // if (selected) {
//                             //   state.searchOptions.categories.add(category.id);
//                             // } else {
//                             //   state.searchOptions.categories
//                             //       .remove(category.id);
//                             // }
//                           });
//                         },
//                       ));
//                     }),
//                   ),
//                   SizedBox(height: 30),
//                   Text(
//                     'Location type:',
//                     style: TextStyle(
//                       fontSize: 15,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                   DropdownButton<String>(
//                       // isExpanded: true,
//                       // value: state.searchOptions.location,
//                       // items: api.location.map<DropdownMenuItem<String>>(
//                       //       (value) {
//                       //     return DropdownMenuItem<String>(
//                       //       value: value,
//                       //       child: Text(value),
//                       //     );
//                       //   },
//                       // ).toList(),
//                       onChanged: (value) {
//                         setState(() {
//                           //state.searchOptions.location = value;
//                         });
//                       }),
//                   SizedBox(height: 30),
//                   Text(
//                     'Order by:',
//                     style: TextStyle(
//                       fontSize: 15,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                   //for (int idx = 0; idx < api.order.length; idx++)
//                     RadioListTile(
//                         // title: Text(api.order[idx]),
//                         // value: api.order[idx],
//                         // groupValue: state.searchOptions.order,
//                         onChanged: (selection) {
//                           setState(() {
//                             //state.searchOptions.order = selection;
//                           });
//                         }),
//                   SizedBox(height: 30),
//                   Text(
//                     'Sort by:',
//                     style: TextStyle(
//                       fontSize: 15,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                   Wrap(
//                     spacing: 10,
//                     children: api.Sort.map<ChoiceChip>((sort) {
//   //   return ChoiceChip(
//   //     label: Text(sort),
//   //     selected: state.searchOptions.sort == sort,
//   //     onSelected: (selected) {
//   //       if (selected) {
//   //         setState(() {
//   //           state.searchOptions.sort = sort;
//   //         });
//   //       }
//   //     },
//   //   );
//   // }).toList(),
//   //),
//   // SizedBox(height: 30),
//   // Text(
//   //   '# of results to show:',
//   //   style: TextStyle(
//   //     fontSize: 15,
//   //     fontWeight: FontWeight.bold,
//   //   ),
//   // ),
//   // Slider(
//   //     //value: state.searchOptions.count ?? 5,
//   //     min: 5,
//   //    // max: api.count,
//   //    // label: state.searchOptions.count?.round().toString(),
//   //     divisions: 3,
//   //     onChanged: (value) {
//   //       setState(() {
//   //         //state.searchOptions.count = value;
//   //       });
//   //     });
//   // ];
//   //);
//   }
//             ),
//             )
//           ],
//       ),
//       ),
//     );
//   }
// }
// // import 'package:flutter/cupertino.dart';
// // import 'package:flutter/material.dart';
// //
// //
// // import '../../theme.dart';
// //
// // class SearchFilterScreen extends StatefulWidget {
// //   // final Space space;
// //   //
// //   // SearchFilterScreen(this.space);
// //
// //
// //   @override
// //   _SearchFilterScreenState createState() => _SearchFilterScreenState();
// // }
// //
// // class _SearchFilterScreenState extends State<SearchFilterScreen> {
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     int _value = 5;
// //     //double _currentSliderValue = 5;
// //     bool selected = false;
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: Text('Filter your search'),
// //         backgroundColor: primaryColor,
// //       ),
// //     body: Container(
// //         child: ListView(
// //           children: [
// //             SizedBox(height: 20),
// //             Padding(
// //               padding: EdgeInsets.symmetric(horizontal: 15),
// //               child: Column(
// //                 crossAxisAlignment: CrossAxisAlignment.start,
// //                 children: [
// //                   Text(
// //                     'Categories:',
// //                     style: TextStyle(
// //                       fontSize: 15,
// //                       fontWeight: FontWeight.bold,
// //                     ),
// //                   ),
// //                   Wrap(
// //                     spacing: 10,
// //                     children:[
// //                       Padding(
// //                         padding: EdgeInsets.all(4),
// //                         child: FilterChip(
// //                           onSelected: (bool value){},
// //                         ),
// //                       ),
// //                       Container(
// //                           alignment: Alignment.topCenter,
// //                           margin: EdgeInsets.only(top:20),
// //                           child: FilterChip(
// //                             //side: Text("Kota 1"),
// //
// //                             selected: selected,
// //                             onSelected: (bool value){
// //                               selected = value;
// //                               setState(() {});
// //                             },
// //                             pressElevation: 15,
// //                             selectedColor: primaryColor,
// //                           )
// //                       ),
// //                       SizedBox(height: 30),
// //                       Text(
// //                         'Rating:',
// //                         style: TextStyle(
// //                           fontSize: 15,
// //                           fontWeight: FontWeight.bold,
// //                         ),
// //                       ),
// //                     // Slider(
// //                     //     value: _value.toDouble(),
// //                     //     min: 1.0,
// //                     //     max: 20.0,
// //                     //     divisions: 10,
// //                     //     activeColor: Colors.purple,
// //                     //     inactiveColor: Colors.grey,
// //                     //     //label: 'Set volume value',
// //                     //     onChanged: (double newValue) {
// //                     //       setState(() {
// //                     //         _value = newValue.round();
// //                     //       });
// //                     //       },
// //                     //     semanticFormatterCallback: (double newValue) {
// //                     //       return '${newValue.round()} dollars';
// //                     //     }
// //                     //     ),
// //
// //
// //       // Slider(
// //                       //   value: _currentSliderValue, min: 1, max: 5, divisions: 3,
// //                       //   label: _currentSliderValue.round().toString(),
// //                       //   onChanged: (double value) {
// //                       //     setState(() {
// //                       //       _currentSliderValue = value;
// //                       //     });
// //                       //   },
// //                       // ),
// //                     ],
// //                   ),
// //                 ],
// //               ),
// //             ),
// //           ],
// //         )
// //     ),
// //     );
// //   }
// // }
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:kossearch/theme.dart';

class SearchFilterScreen extends StatefulWidget {
  @override
  _SearchFilterScreenState createState() => _SearchFilterScreenState();
}

class _SearchFilterScreenState extends State<SearchFilterScreen> {
  double _value = 1;
  bool selected = false;
  int _all = 0;
  RangeLabels labels = RangeLabels('1', '1000');

  RangeValues _values = RangeValues(1, 1000);

  final listChoices = <ItemChoice>[
    ItemChoice(1, 'kitchen 1'),
    ItemChoice(2, 'kitchen 2'),
    ItemChoice(3, 'kitchen 3'),
    ItemChoice(4, 'No Kitchen'),
  ];

  final listBd = <ItemBd>[
    ItemBd(1, 'Bedroom 1'),
    ItemBd(2, 'Bedroom 2'),
    ItemBd(3, 'Bedroom 3'),
  ];
  final listLM = <ItemLM>[
    ItemLM(1, 'Lemari 1'),
    ItemLM(2, 'Lemari 2'),
    ItemLM(3, 'Lemari 3'),
    ItemLM(4, 'No Lemari'),
  ];
  var idSelected = 0;
  var bdSelected = 0;
  var LompatLemari = 0;
  // onChanged: (value) {
  // _search = value;
  // }
  final _formKey = GlobalKey<FormState>();

  bool _autoValidate = false;
  var _search;


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Filter your search'),
        backgroundColor: primaryColor,
        // actions: [
        //   IconButton(
        //     icon: Icon(Icons.delete),
        //     color: whiteColor,
        //     onPressed: () {
        //       //ChoiceChip.remove();
        //     },
        //   ),
          // add more IconButton
        //],
      ),
      body: Container(
        child: ListView(
          children: [
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Categories:',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  SizedBox(height: 20),
                  Text(
                    'Kitchen:',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 20),
                  Wrap(
                    spacing: 10,
                    children: listChoices
                        .map((e) =>
                        ChoiceChip(
                          selectedColor: Colors.tealAccent,
                          backgroundColor: Colors.black12,
                          label: Text(e.label),
                          selected: idSelected == e.id,
                          onSelected: (_) => setState(()=> idSelected = e.id
                          ),
                        )).toList(),

                  ),
                  SizedBox(height: 20),
                  Text(
                    'Bedroom:',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 20),
                  Wrap(
                    spacing: 10,
                    children:
                    listBd
                        .map((e) =>
                        ChoiceChip(
                          selectedColor: Colors.lightGreenAccent,
                          backgroundColor: Colors.black12,
                          label: Text(e.label),
                          selected: bdSelected == e.id,
                          onSelected: (_) => setState(()=> bdSelected = e.id
                          ),
                        )).toList(),

                  ),
                  SizedBox(height: 20),
                  Text(
                    'Lemari:',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 20),
                  Wrap(
                    spacing: 10,
                    children:
                    listLM
                        .map((e) =>
                        ChoiceChip(
                          selectedColor: Colors.greenAccent,
                          backgroundColor: Colors.black12,
                          label: Text(e.label),
                          selected: LompatLemari == e.id,
                          onSelected: (_) => setState(()=> LompatLemari = e.id
                          ),
                        )).toList(),

                  ),
                  SizedBox(height: 20),
                  Text(
                    'Rating:',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                SizedBox(height: 20),
                RatingBar.builder(
                  initialRating: 3,
                  minRating: 1,
                  direction: Axis.horizontal,
                  allowHalfRating: true,
                  itemCount: 5,
                  itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                  itemBuilder: (context, _) => Icon(
                    Icons.star,
                    color: orangeColor,
                  ),
                  onRatingUpdate: (rating) {},
                ),

                  SizedBox(height: 20),
                  Text(
                    'Price:',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 20),
                  SliderTheme(
                    data: SliderThemeData(
                        thumbSelector: _customRangeThumbSelector
                    ),
                    child: RangeSlider(
                        activeColor: primaryColor,
                        inactiveColor: greyColor,
                        values: _values,
                        min: 1,
                        max: 1000,
                        divisions:1000,
                        labels: labels,
                        //labels: RangeLabels("START: ${_values.start.round()}, End: ${_values.end.round()}"),
                        // labels: RangeLabels(_values.toString(), _values.toString()),
                        //onChanged: (RangeValues values) {
                        onChanged: (value) {
                         print("START: ${value.start}, End: ${value.end}");
                          setState(() {
                            //print("START: ${_values.start.round()}, End: ${_values.end.round()}");
                           _values= value;
                            //labels = RangeLabels(value.start.toString(),value.end.toString());
                            labels = RangeLabels("\$${_values.start.toString()}", "\$${_values.end.toString()}");
                            //labels = RangeLabels("${_values.end.toInt().toString()}\$", "${_values.end.toInt().toString()}\$");
                            // if (values.end - values.start >= 20) {
                            //   _values = values;
                            // } else {
                            //   if (_values.start == values.start) {
                            //     _values = RangeValues(_values.start, _values.start + 20);
                            //   } else {
                            //     _values = RangeValues(_values.end - 20, _values.end);
                            //   }
                            // }
                          });
                        }
                    ),
                  ),
                  SizedBox(height: 10),
                  SizedBox(
                    width: double.infinity,
                    child: RawMaterialButton(
                      onPressed: () {
                        final isValid = _formKey.currentState.validate();
                        if (isValid) {
                          //widget.onSearch(_search);
                          // Collapses keypad
                          FocusManager.instance.primaryFocus.unfocus();
                        } else {
                          setState(() {
                            _autoValidate = true;

                          });
                        }
                      },
                      fillColor: primaryColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(15),
                        child: Text(
                          'Search',
                          style: TextStyle(
                            color: whiteColor,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
class ItemChoice {
  final int id;
  final String label;

  ItemChoice(this.id, this.label);
}
class ItemBd {
  final int id;
  final String label;

  ItemBd(this.id, this.label);
}
class ItemLM {
  final int id;
  final String label;

  ItemLM(this.id, this.label);
}
final RangeThumbSelector _customRangeThumbSelector = (
    TextDirection textDirection,
    RangeValues values,
    double tapValue,
    Size thumbSize,
    Size trackSize,
    double dx,
    ) {
  final double start = (tapValue - values.start).abs();
  final double end = (tapValue - values.end).abs();
  return start < end ? Thumb.start : Thumb.end;
};
// class ItemFilter {
//   final int id;
//   final String name;
//   bool isFilterActive;
//
//   ItemFilter(this.id, this.name, this.isFilterActive);
// }
//
// class ItemLM {
//   final int id;
//   final String name;
//   bool isFilterActive;
//  // final List<ItemProductFilter> listProductFilter;
//
//   ItemLM(this.id, this.name, this.isFilterActive);
//   @override
//   String toString() {
//     return 'ItemProduct{name: $name}';
//   }
// }
// class ItemBd {
//   final int id;
//   final String name;
//   bool isFilterActive;
//
//   ItemBd(this.id, this.name, this.isFilterActive);
// }
// class ItemProductFilter {
//   final int id;
//   final bool isFilterActive;
//
//   ItemProductFilter(this.id, this.isFilterActive);
// }