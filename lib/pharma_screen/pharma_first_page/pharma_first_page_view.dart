import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kaiya/pharma_screen/phar_service2.dart';
import 'package:kaiya/pharma_screen/pharma_first_page/pharma_first_page_view_widget.dart';
import 'package:kaiya/pharma_screen/pharma_first_page/pharma_first_page_viewmodel.dart';
import 'package:provider/provider.dart';

class PharWelcome extends StatefulWidget {
  PharWelcome({this.onPush, this.onPushProduct});
  final Function onPush;
  final Function onPushProduct;
  static const String id = 'welcome_screen';

  @override
  _PharWelcome createState() => _PharWelcome();
}

class _PharWelcome extends State<PharWelcome> with TickerProviderStateMixin {
  PharmaFirstPageViewModel viewModel;
  TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this);
    viewModel = PharmaFirstPageViewModel();
    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
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
              'Home',
              style: TextStyle(color: Color.fromRGBO(19, 65, 83, 1.0)),
            ),
            backgroundColor: Colors.white,
            centerTitle: true,
            elevation: 10.0,
          ),
          body: FutureBuilder(
              future: Provider.of<PharMaService2>(context).getPharProfile(),
              builder: (BuildContext context, AsyncSnapshot snapshot) {
                viewModel.pharProfile =
                    Provider.of<PharMaService2>(context).querysnapshot;
                return viewModel.pharProfile != null
                    ? PharmaFirstPageViewWidget(
                        pharprofile: viewModel.pharProfile,
                        widget: widget,
                        tabController: _tabController,
                        viewModel: viewModel,
                      )
                    : Center(child: CircularProgressIndicator());
              }),
        ),
      ),
    );
  }
}
