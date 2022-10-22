import 'package:flutter/material.dart';
import 'package:messenger/widgets.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
	@override
	Widget build(BuildContext context){
		return MaterialApp(
			home: Scaffold(
				backgroundColor: Colors.white,
				appBar: AppBar(
					elevation: 0,
					backgroundColor: Colors.white,
					leading: Padding(
								padding: EdgeInsets.all(5),
								child: CircleAvatar(
									radius: 20,
									backgroundImage: NetworkImage(
										"https://w7.pngwing.com/pngs/698/123/png-transparent-whatsapp-android-graphics-cards-video-adapters-hacker-whatsapp-emblem-hat-logo.png"
								), // CirculeAvatar
							), // CircleAvatar
						), // Padding
					title: Text(
						"MessengerLikeUI",
						style: TextStyle(
							color: Colors.black,
							fontSize: 16,
						), // TextStyle
					), // Text
					actions: [
						IconButton(
							icon:Icon(Icons.camera_alt),
							color: Colors.black,
							onPressed: () {}
						), // IconButton
						IconButton(
							icon: Icon(Icons.edit),
							color: Colors.black,
							onPressed: () {}
						),
					], // actions
				), // AppBar
				body: Container(
					child: Column(
						children: [
							SizedBox(height: 20),
							Container(
								margin: EdgeInsets.symmetric(horizontal: 20),
								clipBehavior: Clip.antiAlias,
								decoration: BoxDecoration(
									color: Color(0xffdddddd),
									borderRadius: BorderRadius.circular(30),
								),
								child:TextField(
									textAlignVertical: TextAlignVertical.center,
									decoration: InputDecoration(
										prefixIcon: Icon(Icons.search),
										hintText: "Search",
										border: InputBorder.none,
									), // InputDecoration
								), // TextField 
							), // Container
							SizedBox(height: 20),
								Expanded(
									child:ListView(
										children: [
											Contact(
												profilePicture: "https://avatars.githubusercontent.com/u/41829093?v=4",
												name: "Daniel",
												lastMessage: "fuck u bro",
												time: "10:22 PM",
											), // Contact
											Contact(
												profilePicture: "https://avatars.githubusercontent.com/u/62687698?v=4",
												name: "Adam",
												lastMessage: "ok sure",
												time: "9:14 PM",
											), // Contact
											Contact(
												profilePicture: "https://avatars.githubusercontent.com/u/98761903?v=4",
												name: "Sally",
												lastMessage: "alright i'll call him",
												time: "9:02 PM",
											), // Contact
											Contact(
												profilePicture: "https://avatars.githubusercontent.com/u/2820053?v=4",
												name: "Olivia",
												lastMessage: "I gotta go ok im sorry",
												time: "8:51 PM",
											), // Contact
											Contact(
												profilePicture: "https://avatars.githubusercontent.com/u/83335855?v=4",
												name: "Tom",
												lastMessage: "why u told her about my problem?",
												time: "8:49 PM",
											), // Contact
											Contact(
												profilePicture: "https://avatars.githubusercontent.com/u/21374813?v=4",
												name: "Richard",
												lastMessage: "i'll try so don't worry",
												time: "8:03 PM",
											), // Contact
											Contact(
												profilePicture: "https://avatars.githubusercontent.com/u/8030956?v=4",
												name: "katty",
												lastMessage: "see you tomorrow",
												time: "7:45 PM",
											), // Contact
											Contact(
												profilePicture: "https://avatars.githubusercontent.com/u/11892143?v=4",
												name: "Mr. David",
												lastMessage: "Sure I Will get it done.",
												time: "7:33 PM",
											), // Contact		
											Contact(
												profilePicture: "https://avatars.githubusercontent.com/u/10086642?v=4",
												name: "Mom",
												lastMessage: "where's my dad?",
												time: "7:23 PM",
											), // Contact
											Contact(
												profilePicture: "https://avatars.githubusercontent.com/u/10760057?v=4",
												name: "Emma",
												lastMessage: "we'll talk tomorrow emma",
												time: "7:19 PM",
											), // Contact
											Contact(
												profilePicture: "https://avatars.githubusercontent.com/u/4453410?v=4",
												name: "Peter",
												lastMessage: "it was yesterday",
												time: "6:51 PM",
											), // Contact
											Contact(
												profilePicture: "https://avatars.githubusercontent.com/u/13839679?v=4",
												name: "Dave",
												lastMessage: "i don't think so",
												time: "6:41 PM",
											), // Contact
										], // children
									), // ListView		
								),												
						], // Children
					), // Column
				), // Container
			), // Scaffold
		); // MaterialApp
	}
}
