import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  List<dynamic> S =['image/11.jpg',
    'image/122.jpg',
    'image/133.jpg',
    'image/144.jpg',
    'image/155.jpg',
    'image/166.jpg',
    'image/11.jpg',
    'image/122.jpg',
    'image/133.jpg',
    'image/144.jpg',
    'image/155.jpg',
    'image/166.jpg'];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(title: Text("facebook",style: TextStyle(fontSize: 25),)),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:<Widget> [
          Container(
            height: 80,
            padding: EdgeInsets.only(right: 20,left: 20,bottom: 10),
            child: Row(
              children: <Widget>[
                Expanded(child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                    color: Colors.grey[200],

                  ),
                  child: TextField(
                    decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search,color: Colors.grey,),
                      border: InputBorder.none,
                      hintStyle: TextStyle(color: Colors.grey),
                      hintText: "Search",

                    ),
                  ),
                )),
                SizedBox(width: 20,),
                Icon(Icons.camera_alt_outlined),
              ],
            ),
          ),
          Expanded(child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Padding(padding: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Story",style: TextStyle(color: Colors.grey[900],fontWeight: FontWeight.bold,fontSize: 22,letterSpacing: 1.2),),
                    Text("See archive"),
                  ],
                ),
                SizedBox(height: 20,),
                Container(
                  height: 120,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      story(
                        storyimage:'image/11.jpg',
                        userImage: 'image/133.jpg',
                        username: 'Nikunj',
                      ),
                      story(
                        storyimage:'image/122.jpg',
                        userImage: 'image/11.jpg',
                        username: 'Khush',
                      ),
                      story(
                        storyimage:'image/133.jpg',
                        userImage: 'image/155.jpg',
                        username: 'Raj',
                      ),
                      story(
                        storyimage:'image/144.jpg',
                        userImage: 'image/11.jpg',
                        username: 'Nevil',
                      ),
                      story(
                        storyimage:'image/155.jpg',
                        userImage: 'image/122.jpg',
                        username: 'Birju',
                      ),
                      story(
                        storyimage:'image/166.jpg',
                        userImage: 'image/133.jpg',
                        username: 'Vasu',
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 30,),
                post(
                  username: 'Nikunj',
                  userImage: 'image/11.jpg',
                  text: 'Friday ... Our second-favorite F word',
                  feedtime: '1 hr to go',
                  feedImage: 'image/122.jpg',
                ),
                post(
                  username: 'khush',
                  userImage: 'image/122.jpg',
                  text: 'Not everyone likes me, but not everyone matters.',
                  feedtime: '1 hr to go',
                  feedImage: 'image/133.jpg',
                ),
                post(
                  username: 'Raj',
                  userImage: 'image/144.jpg',
                  text: 'Dont be jealous of my good looks',
                  feedtime: '1 hr to go',
                  feedImage: 'image/155.jpg',
                ),
                post(
                  username: 'Chintan',
                  userImage: 'image/11.jpg',
                  text: 'Be awesome today.',
                  feedtime: '1 hr to go',
                  feedImage: 'image/166.jpg',
                ),
                post(
                  username: 'Brijesh',
                  userImage: 'image/122.jpg',
                  text: 'FridBe a Warrior, not a Worrier.',
                  feedtime: '1 hr to go',
                  feedImage: 'image/133.jpg',
                ),
              ],
            ),
            )
            ,
          ))
        ],
      ),
    );
  }
  Widget story({storyimage,userImage,username}){
    return AspectRatio(
      aspectRatio: 1.6/2,
    child: Container(
      margin: EdgeInsets.only(right: 10 ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(image: AssetImage(storyimage),
        fit: BoxFit.cover,),
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          gradient: LinearGradient(colors: [Colors.black.withOpacity(0.9),Colors.black.withOpacity(0.1),])
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             Container(
               height: 30,
               width: 30,
               decoration: BoxDecoration(
                 shape: BoxShape.circle,
                 border: Border.all(color: Colors.white,width: 2),
                 image: DecorationImage(image: AssetImage(userImage),
                 fit: BoxFit.cover,),

               ),
             ),
            Text(username,style: TextStyle(color: Colors.white),),
          ],
        ),
      ),
    ),);
  }
  Widget post({username,userImage,text,feedImage,feedtime}){
    return Container(
        margin: EdgeInsets.only(bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(image: AssetImage(userImage),
                    fit: BoxFit.cover,)
                  ),
                ),
                SizedBox(width: 20,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(username,style: TextStyle(color: Colors.grey[900],fontSize: 10,fontWeight: FontWeight.bold,letterSpacing: 1),),
                    SizedBox(height: 3,),
                    Text(feedtime,style: TextStyle(color: Colors.grey,fontSize: 12,),
                    ),
                  ],
                )

              ],),
              IconButton( icon: Icon(Icons.more_horiz,size: 30,color: Colors.grey[600],),
                onPressed: () {
                },),
            ],
          ),
          SizedBox(width: 20,),
          Text(text,style: TextStyle(color: Colors.grey[800],height: 1.5,letterSpacing: 0.7),),
          SizedBox(height: 20,),
          Container(
            height: 200,
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage(feedImage))
            ),
          ),
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                makelike(),
                Transform.translate(offset: Offset(-5,0),
                child: makelove(),
                ),
                SizedBox(width: 5,),
                Text("2k likes",style: TextStyle(fontSize: 15,color: Colors.grey[800]),)
              ],),
              Text("400 comment",style: TextStyle(fontSize: 15,color: Colors.grey[800]),),
            ],
          ),


          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
                makelikebutton(isActive: true),
                makecommet(),
              makesharebutton(),
            ],
          ),

        ],
      ),
    );
  }
  Widget makelike(){
    return Container(
      height: 25,
      width: 25,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.blue,
        border: Border.all(color: Colors.white),

      ),
      child: Center(
        child: Icon(Icons.thumb_up,color: Colors.white,size: 12,),
      ),
    );
  }
  Widget makelove(){
    return Container(
      height: 25,
      width: 25,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.red,
        border: Border.all(color: Colors.white),

      ),
      child: Center(
        child: Icon(Icons.favorite,size: 12,color: Colors.white,),
      ),
    );
  }
  Widget makelikebutton({isActive}){
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20,vertical: 5),
      decoration: BoxDecoration(

        border: Border.all( color: Colors.grey),
        borderRadius: BorderRadius.circular(50),

      ),
      child: Center(
        child: Row( mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.thumb_up,color: isActive ? Colors.blue : Colors.grey,size: 18,),
            SizedBox(width: 15,),
            Text("Like",style: TextStyle(color: isActive ? Colors.blue : Colors.grey,),)
          ],
        ),
      ),
    );
  }


  Widget makecommet(){
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20,vertical: 5),
      decoration: BoxDecoration(

        border: Border.all( color: Colors.grey),
        borderRadius: BorderRadius.circular(50),

      ),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.comment,color:  Colors.grey,size: 18,),
            SizedBox(width: 15,),
            Text("Share",style: TextStyle(color: Colors.grey,),)
          ],
        ),
      ),
    );
  }
  Widget makesharebutton(){
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20,vertical: 5),
      decoration: BoxDecoration(

        border: Border.all( color: Colors.grey),
        borderRadius: BorderRadius.circular(50),

      ),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.share,color:  Colors.grey,size: 18,),
            SizedBox(width: 15,),
            Text("Comment",style: TextStyle(color: Colors.grey,),)
          ],
        ),
      ),
    );
  }
}
