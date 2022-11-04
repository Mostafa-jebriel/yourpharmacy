import 'package:flutter/material.dart';
import 'package:flutter_draggable_gridview/flutter_draggable_gridview.dart';
import 'package:yourpharmacy/components/constants/Variable.dart';
import 'package:yourpharmacy/components/widget/widget.dart';

class Category extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Row(
              children: [
                Text('Category',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,color: Colors.black),),
                Spacer(),
                IconButton(onPressed: (){}, icon: Icon(Icons.search)),
              ],
            ),
            Expanded(
              child: Container(
               padding: EdgeInsets.all(10),
                child: GridView(
                //  physics: NeverScrollableScrollPhysics(),
                  children: CategoryList,
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisExtent: 100,
                    childAspectRatio: 2/1, //طول/عرض
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20,
                  ),
                ),
                // child: GridView.count(
                //     crossAxisCount: 2,
                //   children: List.generate(CategoryList.length, (index) => CategoryList(index)),
                // ),
              ),
            ),

          ],
        ),
      ),

    );
  }
}