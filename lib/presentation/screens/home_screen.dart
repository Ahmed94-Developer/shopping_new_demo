import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopping_new/business_logic/cubit/partitions_cubit.dart';
import 'package:shopping_new/presentation/widgets/partitions_item.dart';

import '../../../data/models/paritions.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key,});


  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool run = true;
 late  Dio dio;



  _HomeScreenState();



  @override
  void initState() {
    super.initState();
  }

  @override
  void setState(VoidCallback fn) {
    super.setState(fn);
  }
 Widget _buildBlocWidget(){
    return BlocBuilder<PartitionsCubit,PartitionsState>(builder: (context,state){
      if (state is PartitionsLoaded) {
        final partitions = state.partitionlist;

        return buildLoadedWidgets(partitions);

      }else{
     return Center(child: CircularProgressIndicator(),);
      }

    });
  }
  Widget buildLoadedWidgets(List<Datum> datalist){
    return GridView.builder(
        itemCount: datalist.length,
        scrollDirection: Axis.vertical,
        physics: AlwaysScrollableScrollPhysics(),

        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.75,
          mainAxisSpacing: 2.0,
          crossAxisSpacing: 1.0,)
        ,itemBuilder: (BuildContext context, int index) {
      return PartitionsItems(partitionsItem: datalist[index]);

    }
    );

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body:  _buildBlocWidget()
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
