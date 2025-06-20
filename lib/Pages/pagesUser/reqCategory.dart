// ignore: file_names
// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../Domain/customAppBar.dart';
import '../menu.dart';

class ReqCategory extends StatefulWidget {
  const ReqCategory({super.key});

  @override
  State<ReqCategory> createState() => _ReqCategoryState();
}

class _ReqCategoryState extends State<ReqCategory> {
  final String _date = '';
  final String _time = '';

  get _formKey => GlobalKey<FormState>();

// Declare _selectedCatego
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: _scaffoldKey,
        appBar: CustomAppBar(
          scaffoldKey: _scaffoldKey,
          showSearchBox: true,
        ),
        body: SingleChildScrollView(
            child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Stack(children: [
            Positioned(
                bottom: 0,
                top: -150,
                right: 0,
                left: 0,
                child: Center(
                  child: Stack(children: [
                    Container(
                      width: 330,
                      height: 565,
                      decoration: BoxDecoration(
                          color: const Color(0xFFF5F3F3),
                          // Replace with your desired color
                          borderRadius: BorderRadius.circular(20.0),
                          border: Border.all(color: Colors.black26, width: 2)),
                    ),
                    Positioned.fill(
                      child: Padding(
                        padding: const EdgeInsets.only(
                            top: 0, left: 15, right: 15, bottom: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const ListTile(
                                        contentPadding: EdgeInsets.symmetric(
                                            vertical: 0, horizontal: 0),
                                        leading: Icon(Icons.date_range),
                                        title: Text(
                                          'Date*',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 15.0,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 0,
                                      ),
                                      TextFormField(
                                        decoration: const InputDecoration(
                                          labelText: "dd/mm/yy",
                                          labelStyle: TextStyle(fontSize: 13.0),
                                          contentPadding: EdgeInsets.zero,
                                        ),
                                        validator: (value) {
                                          if (value == null || value.isEmpty) {
                                            return 'Please enter a date.';
                                          }
                                          return null;
                                        },
                                        onTap: () {
                                          // _selectDate(context);
                                        },
                                        controller:
                                            TextEditingController(text: _date),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(height: 0.0),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const ListTile(
                                        contentPadding: EdgeInsets.symmetric(
                                            vertical: 0, horizontal: 0),
                                        leading: Icon(Icons.access_time),
                                        title: Text(
                                          'Time*',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 15.0,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 0,
                                      ),
                                      TextFormField(
                                        decoration: const InputDecoration(
                                          labelText: "00:00",
                                          labelStyle: TextStyle(fontSize: 13.0),
                                          contentPadding: EdgeInsets.zero,
                                        ),
                                        validator: (value) {
                                          if (value == null || value.isEmpty) {
                                            return 'Please enter a time.';
                                          }
                                          return null;
                                        },
                                        onTap: () {
                                          // _selectTime(context);
                                        },
                                        controller:
                                            TextEditingController(text: _time),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 6.0),
                            InkWell(
                              onTap: () {
                                // Handle address icon tap
                                // Implement your logic here for the action when the address icon is clicked
                              },
                              child: Row(
                                children: [
                                  Icon(Icons.location_on),
                                  SizedBox(width: 0.0),
                                  Text(
                                    'Address*',
                                    style: TextStyle(fontSize: 15.0),
                                  ),
                                ],
                              ),
                            ),
                            TextFormField(
                              decoration: const InputDecoration(
                                labelText:
                                    "Enter your address or select a location",
                                labelStyle: TextStyle(fontSize: 13.0),
                                contentPadding: EdgeInsets.zero,
                              ),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter an address.';
                                }
                                return null;
                              },
                              onSaved: (value) {},
                            ),

                            const SizedBox(height: 6.0),
                            const Text('Description of the problem*',
                                style: TextStyle(fontSize: 15.0)),
                            const SizedBox(height: 6.0),
                            TextFormField(
                              decoration: InputDecoration(
                                labelText: "Write the problem...",
                                labelStyle: const TextStyle(fontSize: 13.0),
                                contentPadding: EdgeInsets.zero,
                                // hintText: 'write the problem...',
                                //hintStyle: const TextStyle(fontSize: 12.0),
                                fillColor:
                                    const Color.fromARGB(255, 233, 237, 241),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                              ),
                              minLines: 2,
                              maxLines: 2,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please write a description.';
                                }
                                return null;
                              },
                              onSaved: (value) {},
                            ),

                            ListTile(
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 0, horizontal: 0),
                              leading: const Icon(Icons.camera_alt_outlined),
                              title: const Text(
                                'upload photo',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 15.0),
                              ),
                              onTap: () {
                                // Handle settings tap
                              },
                            ),

                            const SizedBox(height: 0.0),
                            const ListTile(
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 0, horizontal: 0),
                              leading: Icon(Icons.money),

                              title: Text(
                                'Expected commission fee [optional]',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 15.0),
                              ),
                              //  onTap: () {
                              // Handle settings tap
                              //},
                            ),
                            SizedBox(
                              height: 0,
                            ),
                            TextFormField(
                              decoration: const InputDecoration(
                                labelText: "Egyptian Pound",
                                labelStyle: TextStyle(fontSize: 13.0),
                                contentPadding: EdgeInsets.zero,
                                // hintText: 'Egyptian pound',
                                //hintStyle: TextStyle(fontSize: 12.0),
                              ),
                              keyboardType: TextInputType.number,
                              onSaved: (value) {},
                            ),
                            const SizedBox(height: 6.0),
                            const Text(
                                'The cateogory that related to the problem*',
                                style: TextStyle(fontSize: 15)),
                            const SizedBox(height: 6.0),
                            Center(
                              child: InkWell(
                                onTap: () {
                                  showModalBottomSheet(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return SizedBox(
                                        height: 400,
                                        child: Column(
                                          children: <Widget>[
                                            ListTile(
                                              title: Text('Carpenters'),
                                              onTap: () {
                                                setState(() {});
                                                Navigator.pop(context);
                                              },
                                            ),
                                            ListTile(
                                              title: Text('Plumbers'),
                                              onTap: () {
                                                setState(() {});
                                                Navigator.pop(context);
                                              },
                                            ),
                                            ListTile(
                                              title: Text('Electricians'),
                                              onTap: () {
                                                setState(() {});
                                                Navigator.pop(context);
                                              },
                                            ),
                                            ListTile(
                                              title: Text('Painters'),
                                              onTap: () {
                                                setState(() {});
                                                Navigator.pop(context);
                                              },
                                            ),
                                            ListTile(
                                              title: Text('Tilers'),
                                              onTap: () {
                                                setState(() {});
                                                Navigator.pop(context);
                                              },
                                            ),
                                            ListTile(
                                              title: Text(
                                                  'Plastering Contractors'),
                                              onTap: () {
                                                setState(() {});
                                                Navigator.pop(context);
                                              },
                                            ),
                                            ListTile(
                                              title: Text(
                                                  'Appliance Repair Technician'),
                                              onTap: () {
                                                setState(() {});
                                                Navigator.pop(context);
                                              },
                                            ),
                                            //   ListTile(
                                            //   title: Text('Alumetal Technicians'),
                                            // onTap: () {
                                            // setState(() {});
                                            //  Navigator.pop(context);
                                            // },
                                            // ),
                                            // ListTile(
                                            // title: Text('Marble Craftsmen'),
                                            // onTap: () {
                                            // setState(() {});
                                            // Navigator.pop(context);
                                            //  },
                                            // ),
                                          ],
                                        ),
                                      );
                                    },
                                  );
                                },
                                child: Container(
                                  padding: EdgeInsets.symmetric(
                                      vertical: 0, horizontal: 0),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(25),
                                    border: Border.all(
                                      color: Colors.grey,
                                    ),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Text(
                                        'Categories',
                                        style: TextStyle(fontSize: 14),
                                      ),
                                      Icon(
                                        Icons.arrow_drop_down,
                                        size: 24,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            //  const Divider(),
                            SizedBox(
                              height: 15,
                            ),
                            Center(
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    top: 0, left: 15, right: 15, bottom: 0),
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    foregroundColor:
                                        const Color.fromARGB(234, 0, 0, 0),
                                    backgroundColor: const Color(0xFFBBA2BF),
                                  ),
                                  child: const Text(
                                    'Make a Request',
                                    style: TextStyle(fontSize: 15),
                                  ),
                                  onPressed: () {
                                    //Handle button tap
                                  },
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ]),
                )),
          ]),
        )),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const ReqCategory()));
          },
          backgroundColor: const Color(0xFFBBA2BF),
          shape: const CircleBorder(),
          child: const Icon(Icons.add_chart_rounded),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
        drawer: Menu(
          scaffoldKey: _scaffoldKey,
        ),
      ),
    );
  }
}
