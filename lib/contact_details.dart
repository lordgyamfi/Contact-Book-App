import 'package:flutter/material.dart';
import 'package:my_contact_book_app/contact_model.dart';

class ContactDetails extends StatelessWidget {
  const ContactDetails({Key? key, required this.contact}) : super(key: key);

  final Contacts contact;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          centerTitle: true,
          iconTheme: const IconThemeData(color: Colors.black),
          title: const Text('Contacts',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              )),
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert))
          ],
        ),
        body: ListView(
          children: [
            const CircleAvatar(
              radius: 80,
              backgroundImage: AssetImage('avatar_5.jpg'),
            ),
            const SizedBox(
              height: 25,
            ),
            Center(
              child: Text(contact.name,
                  style: const TextStyle(
                      fontSize: 23, fontWeight: FontWeight.w500)),
            ),
            Center(
              child: Text(
                '${contact.region}, ${contact.country}',
                style: const TextStyle(
                    fontSize: 20, fontWeight: FontWeight.normal),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              color: const Color(0xff9AADBE),
              child: Column(
                children: [
                  ListTile(
                    title: const Text(
                      'Mobile',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                    ),
                    subtitle: Text(
                      contact.phone,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.normal,
                        color: Color(0xff333333),
                      ),
                    ),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        TextButton(
                          onPressed: () {},
                          child: const Icon(
                            Icons.message,
                            color: Colors.black,
                          ),
                          style: TextButton.styleFrom(
                              backgroundColor: Colors.white,
                              shape: const CircleBorder()),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: const Icon(
                            Icons.call,
                            color: Colors.black,
                          ),
                          style: TextButton.styleFrom(
                              backgroundColor: Colors.white,
                              shape: const CircleBorder()),
                        )
                      ],
                    ),
                  ),
                  ListTile(
                    title: const Text(
                      'Email',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                    ),
                    subtitle: Text(
                      contact.email,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.normal,
                        color: Color(0xff333333),
                      ),
                    ),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        TextButton(
                          onPressed: () {},
                          child: const Icon(
                            Icons.email,
                            color: Colors.black,
                          ),
                          style: TextButton.styleFrom(
                              backgroundColor: Colors.white,
                              shape: const CircleBorder()),
                        ),
                      ],
                    ),
                  ),
                  const ListTile(
                    title: Text(
                      'Group',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                    ),
                    subtitle: Text(
                      'Uni friends',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.normal,
                        color: Color(0xff333333),
                      ),
                    ),
                  )
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Account Linked',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
            ),
            Container(
              color: const Color(0xff9AADBE),
              child: Column(
                children: [
                  ListTile(
                    title: const Text(
                      'Telegram',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                    trailing: Image.asset('assets/Telegram.png'),
                  ),
                  ListTile(
                    title: const Text(
                      'WhatsApp',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                    trailing: Image.asset('assets/Whatsapp.png'),
                  )
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'More Options',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
            ),
            Container(
              color: const Color(0xff9AADBE),
              child: Column(
                children: const [
                  ListTile(
                    title: Text(
                      'Share Contacts',
                      style: TextStyle(
                          fontSize: 20, fontWeight: FontWeight.normal),
                    ),
                  ),
                  ListTile(
                    title: Text(
                      'QR Code',
                      style: TextStyle(
                          fontSize: 20, fontWeight: FontWeight.normal),
                    ),
                  )
                ],
              ),
            )
          ],
        ));
  }
}
