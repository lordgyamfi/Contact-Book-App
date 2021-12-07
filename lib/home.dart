import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:grouped_list/grouped_list.dart';
import 'package:my_contact_book_app/contact_details.dart';
import 'package:my_contact_book_app/contact_model.dart';

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);

  final ScrollController _scrollController = ScrollController();

  hintText() => null;

  final List<Map<String, String>> data = [
    {
      "name": "Jana David",
      "phone": "807-7273",
      "email": "cursus.et@yahoo.ca",
      "country": "Netherlands",
      "region": "Kayseri"
    },
    {
      "name": "Jeanette Forbes",
      "phone": "786-3616",
      "email": "mauris.sit@aol.edu",
      "country": "Costa Rica",
      "region": "Lower Austria"
    },
    {
      "name": "Addison Foley",
      "phone": "602-2559",
      "email": "lectus.convallis.est@icloud.com",
      "country": "Turkey",
      "region": "Bryansk Oblast"
    },
    {
      "name": "Jeremy Benjamin",
      "phone": "1-317-323-4853",
      "email": "risus.donec.nibh@outlook.ca",
      "country": "Australia",
      "region": "Limousin"
    },
    {
      "name": "Libby Hayes",
      "phone": "535-5313",
      "email": "risus.donec.egestas@aol.org",
      "country": "Peru",
      "region": "Vorarlberg"
    },
    {
      "name": "Jamalia Mckay",
      "phone": "1-478-496-3115",
      "email": "nam.tempor@aol.com",
      "country": "Mexico",
      "region": "Veneto"
    },
    {
      "name": "Sasha Ferguson",
      "phone": "1-564-535-3463",
      "email": "erat.volutpat@hotmail.ca",
      "country": "Indonesia",
      "region": "Sardegna"
    },
    {
      "name": "Flynn Huff",
      "phone": "1-737-244-4468",
      "email": "mauris@yahoo.edu",
      "country": "Peru",
      "region": "Huila"
    },
    {
      "name": "Zia Lindsey",
      "phone": "1-915-538-0188",
      "email": "blandit.at@outlook.com",
      "country": "Peru",
      "region": "Leinster"
    },
    {
      "name": "Francesca Christensen",
      "phone": "1-847-472-5562",
      "email": "et.ultrices@icloud.ca",
      "country": "Vietnam",
      "region": "East Kalimantan"
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: false,
        title: const Text(
          'My Contacts',
          style: TextStyle(
              fontSize: 32, fontWeight: FontWeight.w600, color: Colors.black),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 12),
            child: Center(
              child: CircleAvatar(
                radius: 36,
                backgroundImage: AssetImage('avatar.jpg'),
              ),
            ),
          )
        ],
        elevation: 0,
        backgroundColor: Colors.white,
        bottom: const PreferredSize(
          preferredSize: Size.fromHeight(90),
          child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 4),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(19),
                    ),
                  ),
                  hintText: 'Search by name or number',
                  prefixIcon: Icon(Icons.search),
                ),
              )),
        ),
      ),
      body: SafeArea(
        child: ListView(
          controller: _scrollController,
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                'Recents',
                style: TextStyle(fontSize: 23, fontWeight: FontWeight.w500),
              ),
            ),
            ListView.separated(
                controller: _scrollController,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return ListTile(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return ContactDetails(
                              contact: Contacts(
                                  country: 'Ghana',
                                  email: 'lordgyamfi30@gamil.com',
                                  name: 'Lord Gyamfi',
                                  phone: '+233 20 34 51 569',
                                  region: 'Greater Accra'));
                        }));
                      },
                      leading: const CircleAvatar(
                          radius: 30,
                          backgroundImage: AssetImage('avatar_2.jpg')),
                      title: const Text(
                        'Lord Gyamfi',
                        style: TextStyle(
                            fontSize: 23, fontWeight: FontWeight.w500),
                      ),
                      subtitle: const Text('+233 20 34 51 569'),
                      trailing: const IconButton(
                          onPressed: null, icon: Icon(Icons.more_horiz)));
                },
                separatorBuilder: (context, index) {
                  return const Divider(
                    indent: 25,
                    thickness: 2,
                  );
                },
                itemCount: 3),
            const Text(
              'Contacts',
              style: TextStyle(fontSize: 23, fontWeight: FontWeight.w500),
            ),
            GroupedListView<Map<String, String>, String>(
              shrinkWrap: true,
              elements: data,
              groupBy: (element) => element['name'].toString().substring(0, 1),
              groupSeparatorBuilder: (String groupByValue) => SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Text(
                    groupByValue.substring(0, 1),
                    textAlign: TextAlign.right,
                    style: const TextStyle(
                        fontSize: 23, fontWeight: FontWeight.w500),
                  ),
                ),
              ),

              itemBuilder: (context, Map<String, String> element) {
                Contacts contact = Contacts.fromJson(element);
                return Column(
                  children: [
                    ListTile(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return ContactDetails(
                              contact: contact,
                            );
                          }));
                        },
                        leading: const CircleAvatar(
                            radius: 30,
                            backgroundImage: AssetImage('avatar_2.jpg')),
                        title: Text(
                          '${element['name']}',
                          style: const TextStyle(
                              fontSize: 23, fontWeight: FontWeight.w500),
                        ),
                        subtitle: Text('${element['phone']}'),
                        trailing: const IconButton(
                            onPressed: null, icon: Icon(Icons.more_horiz))),
                    const Divider(
                      indent: 25,
                      thickness: 2,
                    )
                  ],
                );
              },

              itemComparator: (item1, item2) =>
                  item1['name']!.compareTo(item2['name']!), // optional
              useStickyGroupSeparators: true, // optional
              floatingHeader: true, // optional
              order: GroupedListOrder.ASC, // optional
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xff1A4ADA),
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
}

class Expand {}
