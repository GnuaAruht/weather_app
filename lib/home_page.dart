import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        leading: const Icon(
          Icons.menu,
          color: Colors.black,
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.more_horiz_rounded,
                color: Colors.black,
              ))
        ],
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
              child: Text.rich(TextSpan(children: [
                TextSpan(
                    text: 'Mandalay, ',
                    style:
                        TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold)),
                TextSpan(
                    text: 'Myanmar',
                    style: TextStyle(
                        fontSize: 18.0, fontWeight: FontWeight.normal)),
              ])),
            ),
            AspectRatio(
              aspectRatio: 0.88,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 28.0,
                  vertical: 8.0,
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16.0),
                  child: Column(
                    children: [
                      Expanded(
                        flex: 2,
                        child: Container(
                          color: Colors.blue,
                          alignment: Alignment.center,
                          padding:
                              const EdgeInsets.fromLTRB(24.0, 20.0, 24.0, 8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.asset(
                                'images/50n.png',
                                width: 78.0,
                                height: 78.0,
                                fit: BoxFit.fill,
                              ),
                              const Text(
                                'Heavy Rain',
                                style: TextStyle(
                                    fontSize: 24.0,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(
                                height: 10.0,
                              ),
                              const Text(
                                'Sunaday, 02 Oct',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 16.0),
                              ),
                              const Expanded(
                                child: Center(
                                  child: Text(
                                    '24°',
                                    style: TextStyle(
                                        fontSize: 76.0,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          color: Colors.white,
                          child: Column(
                            children: [
                              Expanded(
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: Container(
                                        margin: const EdgeInsets.only(
                                            top: 1.0, right: 0.5),
                                        color: Colors.blue,
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: const [
                                            Text(
                                              'Wind',
                                              style: TextStyle(
                                                  fontSize: 16.0,
                                                  color: Colors.white70,
                                                  fontWeight:
                                                      FontWeight.normal),
                                            ),
                                            Text(
                                              '19.2 km/j',
                                              style: TextStyle(
                                                  fontSize: 18.0,
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Container(
                                        margin: const EdgeInsets.only(
                                            top: 1.0, right: 0.5),
                                        color: Colors.blue,
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: const [
                                            Text(
                                              'Feel like',
                                              style: TextStyle(
                                                  fontSize: 16.0,
                                                  color: Colors.white70,
                                                  fontWeight:
                                                      FontWeight.normal),
                                            ),
                                            Text(
                                              '25°',
                                              style: TextStyle(
                                                  fontSize: 18.0,
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: Container(
                                        margin: const EdgeInsets.only(
                                            top: 1.0, right: 0.5),
                                        color: Colors.blue,
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: const [
                                            Text(
                                              'Index UV',
                                              style: TextStyle(
                                                  fontSize: 16.0,
                                                  color: Colors.white70,
                                                  fontWeight:
                                                      FontWeight.normal),
                                            ),
                                            Text(
                                              '2.0',
                                              style: TextStyle(
                                                  fontSize: 18.0,
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Container(
                                        margin: const EdgeInsets.only(
                                            top: 1.0, right: 0.5),
                                        color: Colors.blue,
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: const [
                                            Text(
                                              'Pressure',
                                              style: TextStyle(
                                                  fontSize: 16.0,
                                                  color: Colors.white70,
                                                  fontWeight:
                                                      FontWeight.normal),
                                            ),
                                            Text(
                                              '1014 mbar',
                                              style: TextStyle(
                                                  fontSize: 18.0,
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 24.0, right: 24.0, bottom: 12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Today',
                          style: TextStyle(
                              fontSize: 18.0, fontWeight: FontWeight.w600),
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Row(
                            children: const [
                              Text(
                                'Next 5 days',
                                style: TextStyle(
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.w600),
                              ),
                              Icon(CupertinoIcons.right_chevron)
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 132.0,
                    child: ListView.separated(
                        itemCount: 8,
                        scrollDirection: Axis.horizontal,
                        physics: const BouncingScrollPhysics(),
                        padding: const EdgeInsets.symmetric(horizontal: 24.0),
                        separatorBuilder: (context, index) {
                          return const SizedBox(
                            width: 8.0,
                          );
                        },
                        itemBuilder: (context, index) {
                          return AspectRatio(
                            aspectRatio: 0.48,
                            child: DecoratedBox(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(
                                      color: Colors.grey, width: 1.2),
                                  borderRadius: BorderRadius.circular(12.0)),
                              child: Align(
                                alignment: Alignment.center,
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    const Text('12:00'),
                                    Image.asset(
                                      'images/50n.png',
                                      width: 32.0,
                                      height: 32.0,
                                      fit: BoxFit.fill,
                                    ),
                                    const Text(
                                      'Now',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          );
                        }),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
