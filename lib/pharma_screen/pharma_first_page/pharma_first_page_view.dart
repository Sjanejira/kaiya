import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kaiya/pharma_screen/pharma_first_page/pharma_first_page_view_widget.dart';
import 'package:kaiya/pharma_screen/pharma_first_page/pharma_first_page_model.dart';
import 'package:kaiya/pharma_screen/pharma_first_page/pharma_first_page_viewmodel.dart';
import 'package:scoped_model/scoped_model.dart';

class PharWelcome extends StatefulWidget {
  PharWelcome({this.onPush});
  final Function onPush;
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
    bool _isProductEmpty = false;
    ScreenUtil.init(BoxConstraints(
      maxWidth: MediaQuery.of(context).size.width,
      minWidth: 0,
      maxHeight: MediaQuery.of(context).size.height,
      minHeight: 0,
    ));

    return ScreenUtilInit(
      designSize: Size(360, 690),
      allowFontScaling: true,
      child: SafeArea(
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
          body: ScopedModel<PharmaFirstPageViewModel>(
            model: viewModel,
            child: ScopedModelDescendant<PharmaFirstPageViewModel>(
                builder: (context, child, model) {
              return FutureBuilder(
                future: model.getProfile(),
                builder: (BuildContext context, AsyncSnapshot<bool> snapshot) {
                  if (snapshot.hasData) {
                    PharProfile pharprofile = model.pharProfile;
                    return PharmaFirstPageViewWidget(
                        pharprofile: pharprofile,
                        widget: widget,
                        tabController: _tabController,
                        isProductEmpty: _isProductEmpty);
                  } else {
                    print(snapshot.error);
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                },
              );
            }),
          ),
        ),
      ),
    );
  }
}
