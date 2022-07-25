import 'package:flutter/material.dart';
import 'package:multi_store_app/customer_screen/customer_orders.dart';
import 'package:multi_store_app/customer_screen/wishlist_screen.dart';
import 'package:multi_store_app/main_screens/cart.dart';
import 'package:multi_store_app/widget/appbar_widget.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey.shade300,
        body: Stack(
          children: [
            Container(
              decoration: const BoxDecoration(
                  gradient:
                      LinearGradient(colors: [Colors.yellow, Colors.brown])),
              height: 210,
            ),
            CustomScrollView(
              slivers: [
                SliverAppBar(
                  centerTitle: true,
                  elevation: 0,
                  pinned: true,
                  backgroundColor: Colors.white,
                  expandedHeight: 140,
                  flexibleSpace: LayoutBuilder(
                    builder: (context, constraints) {
                      return FlexibleSpaceBar(
                        title: AnimatedOpacity(
                          duration: const Duration(milliseconds: 200),
                          opacity: constraints.biggest.height <= 120 ? 1 : 0,
                          child: const Text(
                            'Account',
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                        background: Container(
                          decoration: const BoxDecoration(
                              gradient: LinearGradient(
                                  colors: [Colors.yellow, Colors.brown])),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 30, top: 25),
                            child: Row(
                              children: [
                                const CircleAvatar(
                                  radius: 50,
                                  backgroundImage:
                                      AssetImage('images/inapp/guest.jpg'),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 25),
                                  child: Text(
                                    'guest'.toUpperCase(),
                                    style: const TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 24),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                SliverToBoxAdapter(
                  child: Column(children: [
                    Container(
                      height: 80,
                      width: MediaQuery.of(context).size.width * 0.9,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            decoration: const BoxDecoration(
                              color: Colors.black54,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(30),
                                  bottomLeft: Radius.circular(30)),
                            ),
                            child: TextButton(
                              child: SizedBox(
                                height: 40,
                                width: MediaQuery.of(context).size.width * 0.2,
                                child: const Center(
                                  child: Text(
                                    'Cart',
                                    style: TextStyle(
                                        color: Colors.yellow, fontSize: 20),
                                  ),
                                ),
                              ),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => CartScreen(back: BackIcon(),)));
                              },
                            ),
                          ),
                          Container(
                            color: Colors.yellow,
                            child: TextButton(
                              child: SizedBox(
                                height: 40,
                                width: MediaQuery.of(context).size.width * 0.2,
                                child: const Center(
                                  child: Text(
                                    'Orders',
                                    style: TextStyle(
                                        color: Colors.black54, fontSize: 20),
                                  ),
                                ),
                              ),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => CustomerOrder()));

                              },
                            ),
                          ),
                          Container(
                            decoration: const BoxDecoration(
                              color: Colors.black54,
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(30),
                                  bottomRight: Radius.circular(30)),
                            ),
                            child: TextButton(
                              child: SizedBox(
                                height: 40,
                                width: MediaQuery.of(context).size.width * 0.2,
                                child: const Center(
                                  child: Text(
                                    'Wishlist',
                                    style: TextStyle(
                                        color: Colors.yellow, fontSize: 20),
                                  ),
                                ),
                              ),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => WishlistScreen()));

                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      color: Colors.grey.shade300,
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 150,
                            child: Image(
                                image: AssetImage('images/inapp/logo.jpg')),
                          ),
                          const ProfileHeaderLabel(
                            label: 'Account info.',
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Container(
                              height: 260,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(16),
                              ),
                              child: Column(
                                children: const [
                                  ListTile(
                                    title: Text('Email Address'),
                                    subtitle: Text('example@email.com'),
                                    leading: Icon(Icons.email),
                                  ),
                                  YellowDivider(),
                                  ListTile(
                                    title: Text('Phone Number'),
                                    subtitle: Text('+1111111'),
                                    leading: Icon(Icons.phone),
                                  ),
                                  YellowDivider(),
                                  ListTile(
                                    title: Text(' Address'),
                                    subtitle:
                                        Text('example:140 - st - New Gersy  '),
                                    leading: Icon(Icons.location_pin),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const ProfileHeaderLabel(label: 'Account Settings'),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Container(
                              height: 260,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(16),
                              ),
                              child: Column(
                                children: [
                                  RepeatedListTile(
                                    title: 'Edit Profile',
                                    subTitle: '',
                                    icon: Icons.edit,
                                    onPressed: () {},
                                  ),
                                  const YellowDivider(),
                                  RepeatedListTile(
                                      title: 'Change Password',
                                      subTitle: '',
                                      icon: Icons.lock,
                                      onPressed: () {}),
                                  const YellowDivider(),
                                  RepeatedListTile(
                                      title: 'Log Out',
                                      subTitle: '',
                                      icon: Icons.logout_outlined,
                                      onPressed: () {
                                        Navigator.pushReplacementNamed(
                                            context, '/welcome_screen');
                                      }),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ]),
                ),
              ],
            ),
          ],
        ));
  }
}

class YellowDivider extends StatelessWidget {
  const YellowDivider({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 40),
      child: Divider(
        color: Colors.yellow,
        thickness: 1,
      ),
    );
  }
}

class RepeatedListTile extends StatelessWidget {
  final String title;
  final String subTitle;
  final IconData icon;
  final Function() onPressed;

  const RepeatedListTile({
    required this.title,
    required this.subTitle,
    required this.icon,
    required this.onPressed,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: ListTile(
        title: Text(title),
        subtitle: Text(subTitle),
        leading: Icon(icon),
      ),
    );
  }
}

class ProfileHeaderLabel extends StatelessWidget {
  const ProfileHeaderLabel({Key? key, required this.label}) : super(key: key);
  final String label;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SizedBox(
      height: 40,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            height: 40,
            width: 50,
            child: Divider(
              color: Colors.grey,
              thickness: 1,
            ),
          ),
          Text(
            '  $label  ',
            style: const TextStyle(
                color: Colors.grey, fontSize: 24, fontWeight: FontWeight.w600),
          ),
          const SizedBox(
            height: 40,
            width: 50,
            child: Divider(
              color: Colors.grey,
              thickness: 1,
            ),
          )
        ],
      ),
    );
  }
}
