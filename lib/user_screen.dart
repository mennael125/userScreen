import 'package:flutter/material.dart';

class UserData {
  int? id;

  String? name;

  String? phone;

  UserData({
    @required this.id,
    @required this.phone,
    @required this.name,
  });
}

class UserScreen extends StatelessWidget {
  @override
  List<UserData> User = [
    UserData(id: 1, phone: '01369874520', name: 'Menna'),
    UserData(id: 2, phone: '01369874520', name: 'Mohammed'),
    UserData(id: 3, phone: '01236987452', name: 'Akram'),
    UserData(id: 4, phone: '01214854789', name: 'Elsobky'),
    UserData(id: 5, phone: '01521478930', name: 'Esraa'),
    UserData(id: 6, phone: '01236974520', name: 'Abdelrhman'),
    UserData(id: 7, phone: '01658493027', name: 'Sara'),
    UserData(id: 8, phone: '01392587461', name: 'Asmaa'),
    UserData(id: 9, phone: '01293547850', name: 'Hour'),
    UserData(id: 10, phone: '01789632418', name: 'Rawdaa'),
    UserData(id: 11, phone: '01239874520', name: 'Doaa'),
    UserData(id: 12, phone: '01005214789', name: 'Eman'),
  ];

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("User Screen "),
      ),
      body: ListView.separated(
          itemBuilder: (context, index) => Data(User[index]),
          separatorBuilder: (context, index) => Padding(
            padding: const   EdgeInsetsDirectional.only(start: 20.0),
            child: Container(
              height: 1,

              color: Colors.grey[300],
              width: double.infinity,
            ),
          ),
          itemCount: User.length),
    );
  }

  Widget Data(UserData user) => Padding(
    padding: const EdgeInsets.all(20.0),
    child: Row(
      children: [
        CircleAvatar(
          radius: 28,
          child: Text(
            '${user.id!}',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox( width: 5,),
        Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("${user.name!}",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                )),
            SizedBox(
              height: 10,
            ),
            Text("${user.phone!}",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 20,
                )),
          ],
        ),
      ],
    ),
  );
}
