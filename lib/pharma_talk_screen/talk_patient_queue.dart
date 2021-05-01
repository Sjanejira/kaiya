import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kaiya/appkaiya_viewmodel.dart';
import 'package:kaiya/pharma_screen/phar_service2.dart';
import 'package:provider/provider.dart';
import 'package:intl/intl.dart';

class TalkPatientQueue extends StatefulWidget {
  static const String id = 'talk_patient_queue';

  @override
  _TalkPatientQueue createState() => _TalkPatientQueue();
}

class _TalkPatientQueue extends State<TalkPatientQueue>
    with TickerProviderStateMixin {
  AppKaiYaViewModel viewModel;

  @override
  void initState() {
    super.initState();
    viewModel = AppKaiYaViewModel();
  }

  @override
  Widget build(BuildContext context) {
    final format = DateFormat('HH:mm a');
    ScreenUtil.init(BoxConstraints(
      maxWidth: MediaQuery.of(context).size.width,
      minWidth: 0,
      maxHeight: MediaQuery.of(context).size.height,
      minHeight: 0,
    ));
    return ScreenUtilInit(
      designSize: Size(360, 690),
      allowFontScaling: true,
      builder: () => SafeArea(
        top: false,
        bottom: false,
        child: Scaffold(
          appBar: AppBar(
            brightness: Brightness.light,
            title: const Text(
              'My Patient Queue',
              style: TextStyle(color: Color.fromRGBO(19, 65, 83, 1.0)),
            ),
            backgroundColor: Colors.white,
            centerTitle: true,
            elevation: 10.0,
          ),
          body: Container(
            color: Colors.white,
            child: Column(
              children: [
                Center(
                  child: Container(
                    margin: EdgeInsets.only(top: 40, bottom: 20),
                    padding:
                        EdgeInsets.symmetric(horizontal: 30.w, vertical: 10.h),
                    decoration: BoxDecoration(
                      color: Color(0xffFAFAFA),
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    child: Text(
                      "${viewModel.listWaiting.length} Queue",
                      style: TextStyle(color: Color(0xffC1C1C1)),
                    ),
                  ),
                ),
                Expanded(
                  child: StreamBuilder(
                      stream: Provider.of<PharMaService2>(context).getCall(),
                      builder: (BuildContext context, AsyncSnapshot snapshot) {
                        if (snapshot.hasData) {
                          viewModel.call = snapshot.data;
                          viewModel.setList();
                          if (viewModel.call != [null]) {
                            return ListView.separated(
                                itemBuilder: (context, index) => Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        Container(
                                          margin: EdgeInsets.only(
                                              right: 40, bottom: 8),
                                          child: Text(
                                            format.format(
                                              DateTime.parse(
                                                viewModel.listWaiting[index]
                                                    .time_stamp
                                                    .toDate()
                                                    .toString(),
                                              ),
                                            ),
                                            style:
                                                TextStyle(color: Colors.grey),
                                          ),
                                        ),
                                        Container(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 30.w),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Row(
                                                children: [
                                                  Container(
                                                    child: CircleAvatar(
                                                      radius: 20.r,
                                                      backgroundImage:
                                                          AssetImage(
                                                              'asset/ms.png'),
                                                    ),
                                                    margin: EdgeInsets.only(
                                                        right: 10),
                                                  ),
                                                  Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Container(
                                                        margin: EdgeInsets.only(
                                                            bottom: 5.h),
                                                        child: Text(
                                                          "Queue#${index + 1}",
                                                          style: TextStyle(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold),
                                                        ),
                                                      ),
                                                      Row(
                                                        children: [
                                                          Icon(
                                                            CupertinoIcons
                                                                .circle_fill,
                                                            color: Color(
                                                                0xff2E828B),
                                                            size: 10,
                                                          ),
                                                          Container(
                                                            margin:
                                                                EdgeInsets.only(
                                                                    left: 5),
                                                            child: Text(
                                                              "In Queue ${viewModel.listWaiting[index].call_type} call",
                                                              style: TextStyle(
                                                                color: Color(
                                                                    0xff2E828B),
                                                              ),
                                                            ),
                                                          )
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                              Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.end,
                                                children: [
                                                  Container(
                                                    width: 50,
                                                    height: 50.0,
                                                    child: ElevatedButton(
                                                      child: Icon(
                                                        CupertinoIcons
                                                            .phone_fill,
                                                        color: Colors.white,
                                                      ),
                                                      onPressed: () {},
                                                      style: ElevatedButton
                                                          .styleFrom(
                                                        primary:
                                                            Color(0xff2E828B),
                                                        shape: CircleBorder(),
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    margin: EdgeInsets.only(
                                                        left: 5),
                                                    width: 50,
                                                    height: 50.0,
                                                    child: ElevatedButton(
                                                      child: Icon(
                                                        CupertinoIcons
                                                            .video_camera_solid,
                                                        color: Colors.white,
                                                      ),
                                                      style: ElevatedButton
                                                          .styleFrom(
                                                        primary:
                                                            Color(0xff902E2E),
                                                        shape: CircleBorder(),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                separatorBuilder: (context, index) => Container(
                                      margin: EdgeInsets.symmetric(
                                          horizontal: 20, vertical: 10),
                                      child: Divider(color: Colors.grey),
                                    ),
                                itemCount: viewModel.listWaiting.length);
                          } else {
                            return Container(
                              width: 0,
                              height: 0,
                            );
                          }
                        } else {
                          return Center(
                            child: CircularProgressIndicator(),
                          );
                        }
                      }),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
