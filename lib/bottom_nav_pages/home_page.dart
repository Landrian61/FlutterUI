import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      color: Colors.grey[100],
      width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
      child: Stack(
        children: [
          Positioned(
              top: 0,
              bottom: MediaQuery.of(context).size.height * .5,
              child: Container(
                  height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  color: Colors.orangeAccent,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.zero,
                    topRight: Radius.zero,
                    bottomLeft: Radius.circular(60),
                    bottomRight: Radius.circular(60),
                  )
                ),
              )
          ),
          Positioned.fill(child: Container(
            margin: const EdgeInsets.fromLTRB(20, 20, 20, 80),
            child:  Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Good Morning \n Everyone",
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white70,),
                  child: TextField(
                    textInputAction: TextInputAction.search,
                    decoration: InputDecoration(

                      suffixIcon: Container(
                          height: 50,
                          width: 50,
                        margin: const EdgeInsets.only(right: 10),
                        decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: const Icon(
                          Icons.search,
                          color: Colors.black12,
                        ),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                        hintText: 'Search',
                      labelText: 'Search'
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                        height: MediaQuery.of(context).size.height * .26,
                      width: MediaQuery.of(context).size.width * .36,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(40)
                      ),
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image(
                              height: 120,
                              width: 120,
                              image: AssetImage('assets/images/broccoli.jpg')
                          ),
                          Text(
                            'Broccoli',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Colors.black
                            ),
                          ),
                          Text(
                            '\$ 30',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                backgroundColor: Colors.redAccent,
                                color: Colors.white
                            ),
                          ),
                        ],
                      ),

                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * .26,
                      width: MediaQuery.of(context).size.width * .36,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(40)
                      ),
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image(
                              height: 120,
                              width: 120,
                              image: AssetImage('assets/images/cabbage.jpg')
                          ),
                          Text(
                            'Cabbage',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: Colors.black
                            ),
                          ),
                          Text(
                            '\$ 34',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                backgroundColor: Colors.redAccent,
                                color: Colors.white
                            ),
                          ),
                        ],
                      ),

                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height * .26,
                      width: MediaQuery.of(context).size.width * .36,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(40)
                      ),
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image(
                              height: 120,
                              width: 120,
                              image: AssetImage('assets/images/mangoes.jpeg')
                          ),
                          Text(
                            'Mangoes',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: Colors.black
                            ),
                          ),
                          Text(
                            '\$ 10',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                backgroundColor: Colors.redAccent,
                                color: Colors.white
                            ),
                          ),
                        ],
                      ),

                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * .26,
                      width: MediaQuery.of(context).size.width * .36,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(40)
                      ),
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image(
                              height: 120,
                              width: 120,
                              image: AssetImage('assets/images/pineapple.jpg')
                          ),
                          Text(
                            'Pineapple',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: Colors.black
                            ),
                          ),
                          Text(
                            '\$ 20',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                backgroundColor: Colors.redAccent,
                                color: Colors.white
                            ),
                          ),
                        ],
                      ),

                    )
                  ],
                )
              ],
            ),
          ))
        ],
      ),
    );
  }
}
