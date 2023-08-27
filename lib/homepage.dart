import 'package:banking_app/test_data.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          image: DecorationImage(
            colorFilter: ColorFilter.mode(
              Colors.black38,
              BlendMode.darken,
            ),
            image: AssetImage('assets/bg.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 30.0,
                left: 30,
                right: 30,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "KES 20,150",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        "Available balance",
                        style: TextStyle(
                          color: Colors.white70,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      const Icon(
                        Icons.notifications,
                        size: 25,
                        color: Colors.white,
                      ),
                      const SizedBox(width: 10),
                      SizedBox(
                        height: 50,
                        width: 50,
                        child: Card(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.network(
                              "https://images.pexels.com/photos/10461791/pexels-photo-10461791.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 30.0,
                right: 30,
                left: 30,
                bottom: 20,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: actions.map((e) => actionsWidget(e)).toList(),
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height,
              padding: const EdgeInsets.only(
                top: 10.0,
              ),
              decoration: BoxDecoration(
                color: Colors.grey.shade100,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: Column(
                children: [
                  ListTile(
                    title: Text(
                      "Recent Transactions",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                        color: primaryColor,
                      ),
                    ),
                    trailing: Text(
                      "See all",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: primaryColor,
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: mainOperations
                        .map(
                          (e) => Padding(
                            padding: const EdgeInsets.only(left: 15.0),
                            child: Chip(
                              backgroundColor: Colors.white,
                              side: const BorderSide(
                                color: Colors.white,
                                width: 1,
                              ),
                              elevation: 10,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)),
                              label: Text(e),
                            ),
                          ),
                        )
                        .toList(),
                  ),
                  Column(
                    children: transactions
                        .map(
                          (e) => Padding(
                            padding: const EdgeInsets.only(
                              left: 5.0,
                              right: 5,
                              top: 10,
                            ),
                            child: transactionWidget(e),
                          ),
                        )
                        .toList(),
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

Widget actionsWidget(MainAction action) {
  return Column(
    children: [
      Card(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(14),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: SizedBox(
              height: 25,
              width: 25,
              child: Image.asset(action.icon),
            ),
          ),
        ),
      ),
      const SizedBox(height: 5),
      Text(
        action.title,
        style: const TextStyle(
          color: Colors.white70,
        ),
      )
    ],
  );
}

Widget transactionWidget(AppTransactions transaction) {
  return ListTile(
    tileColor: Colors.white,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10),
    ),
    leading: CircleAvatar(
      backgroundColor: Colors.blue.shade50,
      child: Icon(
        transaction.isDeposit ? Icons.arrow_upward_rounded : Icons.arrow_downward_rounded,
        color: transaction.isDeposit ? Colors.green : Colors.red,
      ),
    ),
    title: Text(
      transaction.title,
      style: TextStyle(
        fontWeight: FontWeight.bold,
        color: primaryColor,
      ),
    ),
    subtitle: Text(transaction.moreInfo),
    trailing: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          transaction.amount,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: primaryColor,
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          transaction.date,
        ),
      ],
    ),
  );
}
