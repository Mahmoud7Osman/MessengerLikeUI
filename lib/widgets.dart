import "package:flutter/material.dart";


Widget Profile(String pic){
	return CircleAvatar(
		radius: 27,
		backgroundImage: NetworkImage(
			pic
		), // NetworkImage
	); // CircleAvatar
}

Widget Contact({required String profilePicture, required String name, required String time, required String lastMessage}){
		return Container(
			padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
			width: double.infinity,
			child: Row(
				children: [
					Profile(profilePicture),
					SizedBox(width: 15),
					Expanded(
						child:Column(
								crossAxisAlignment: CrossAxisAlignment.start,
								children: [
									Row(
										mainAxisSize: MainAxisSize.max,
										mainAxisAlignment: MainAxisAlignment.spaceBetween,
										children: [
											Text(
												name,
												style: TextStyle(
													fontSize: 20,
													fontWeight: FontWeight.bold,
												), // TextStyle
											), // Text
											Text(time),
										],
									), // Row
									Text(
										lastMessage,
										textAlign: TextAlign.start,
										style: TextStyle(
											fontFamily: "monospace",
										), //TextStyle
									), // Text
								], // Children
						), // Column
					), // Expanded
				], // Children
			), // Row
		); // Container
}
