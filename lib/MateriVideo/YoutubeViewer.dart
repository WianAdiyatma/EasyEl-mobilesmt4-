import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gridviewtes1/CardVideoandPdf/CardVideo.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import '../Model/Youtube_model.dart';

class YoutubePlayerDemo1 extends StatefulWidget {
  YoutubePlayerDemo1({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _YoutubePlayerDemo1State createState() => _YoutubePlayerDemo1State();
}

class _YoutubePlayerDemo1State extends State<YoutubePlayerDemo1> {
  late YoutubePlayerController _ytbPlayerController;
  List<YoutubeModel> videosList = [
    YoutubeModel(id: 1, youtubeId: 'mBqexpV_xWw'),
  ];

  @override
  void initState() {
    super.initState();

    _setOrientation([
      DeviceOrientation.landscapeRight,
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    WidgetsBinding.instance!.addPostFrameCallback((_) {
      setState(() {
        _ytbPlayerController = YoutubePlayerController(
          initialVideoId: videosList[0].youtubeId,
          params: YoutubePlayerParams(
            showFullscreenButton: true,
          ),
        );
      });
    });
  }

  @override
  void dispose() {
    super.dispose();

    _setOrientation([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    _ytbPlayerController.close();
  }

  _setOrientation(List<DeviceOrientation> orientations) {
    SystemChrome.setPreferredOrientations(orientations);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Colors.redAccent,
        leading: GestureDetector(
            child: Icon( Icons.arrow_back_ios, color: Colors.white,  ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => VideoCard()),
              );
            }),

      ),
      body: Container(
        child: Column(
          children: [
            _buildYtbView(),
            _buildMoreVideoTitle(),
            _buildMoreVideosView(),
          ],
        ),
      ),
    );
  }

  _buildYtbView() {
    return AspectRatio(
      aspectRatio: 16 / 9,
      child: _ytbPlayerController != null
          ? YoutubePlayerIFrame(controller: _ytbPlayerController)
          : Center(child: CircularProgressIndicator()),
    );
  }

  _buildMoreVideoTitle() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(14, 10, 182, 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            "Video pembelajaran untuk anak kelas 1",//deskripsi dibawah youtube playernya
            style: TextStyle(fontSize: 16, color: Colors.black),
          ),
        ],
      ),
    );
  }

  _buildMoreVideosView() {
    return Expanded(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: ListView.builder(
            itemCount: videosList.length,
            physics: AlwaysScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  final _newCode = videosList[index].youtubeId;
                  _ytbPlayerController.load(_newCode);
                  _ytbPlayerController.stop();
                },
                child: Container(
                  height: MediaQuery.of(context).size.height / 5,
                  margin: EdgeInsets.symmetric(vertical: 7),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(18),
                    child: Stack(
                      fit: StackFit.expand,
                      children: <Widget>[
                        Positioned(
                          child: Align(
                            alignment: Alignment.center,
                            ),
                          ),
                      ],
                    ),
                  ),
                ),
              );
            }),
      ),
    );
  }
}
class YoutubePlayerDemo2 extends StatefulWidget {
  YoutubePlayerDemo2({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _YoutubePlayerDemo2State createState() => _YoutubePlayerDemo2State();
}

class _YoutubePlayerDemo2State extends State<YoutubePlayerDemo2> {
  late YoutubePlayerController _ytbPlayerController;
  List<YoutubeModel> videosList = [
    YoutubeModel(id: 2, youtubeId: 'de6a5k42TxI'),
  ];

  @override
  void initState() {
    super.initState();

    _setOrientation([
      DeviceOrientation.landscapeRight,
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    WidgetsBinding.instance!.addPostFrameCallback((_) {
      setState(() {
        _ytbPlayerController = YoutubePlayerController(
          initialVideoId: videosList[0].youtubeId,
          params: YoutubePlayerParams(
            showFullscreenButton: true,
          ),
        );
      });
    });
  }

  @override
  void dispose() {
    super.dispose();

    _setOrientation([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    _ytbPlayerController.close();
  }

  _setOrientation(List<DeviceOrientation> orientations) {
    SystemChrome.setPreferredOrientations(orientations);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Colors.redAccent,
        leading: GestureDetector(
            child: Icon( Icons.arrow_back_ios, color: Colors.white,  ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => VideoCard()),
              );
            }),

      ),
      body: Container(
        child: Column(
          children: [
            _buildYtbView(),
            _buildMoreVideoTitle(),
            _buildMoreVideosView(),
          ],
        ),
      ),
    );
  }

  _buildYtbView() {
    return AspectRatio(
      aspectRatio: 16 / 9,
      child: _ytbPlayerController != null
          ? YoutubePlayerIFrame(controller: _ytbPlayerController)
          : Center(child: CircularProgressIndicator()),
    );
  }

  _buildMoreVideoTitle() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(14, 10, 182, 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            "Video pembelajaran untuk anak kelas 2",//deskripsi dibawah youtube playernya
            style: TextStyle(fontSize: 16, color: Colors.black),
          ),
        ],
      ),
    );
  }

  _buildMoreVideosView() {
    return Expanded(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: ListView.builder(
            itemCount: videosList.length,
            physics: AlwaysScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  final _newCode = videosList[index].youtubeId;
                  _ytbPlayerController.load(_newCode);
                  _ytbPlayerController.stop();
                },
                child: Container(
                  height: MediaQuery.of(context).size.height / 5,
                  margin: EdgeInsets.symmetric(vertical: 7),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(18),
                    child: Stack(
                      fit: StackFit.expand,
                      children: <Widget>[
                        Positioned(
                          child: Align(
                            alignment: Alignment.center,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            }),
      ),
    );
  }
}
class YoutubePlayerDemo3 extends StatefulWidget {
  YoutubePlayerDemo3({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _YoutubePlayerDemo3State createState() => _YoutubePlayerDemo3State();
}

class _YoutubePlayerDemo3State extends State<YoutubePlayerDemo3> {
  late YoutubePlayerController _ytbPlayerController;
  List<YoutubeModel> videosList = [
    YoutubeModel(id: 2, youtubeId: 'zj8yZvwOo8s'),
  ];

  @override
  void initState() {
    super.initState();

    _setOrientation([
      DeviceOrientation.landscapeRight,
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    WidgetsBinding.instance!.addPostFrameCallback((_) {
      setState(() {
        _ytbPlayerController = YoutubePlayerController(
          initialVideoId: videosList[0].youtubeId,
          params: YoutubePlayerParams(
            showFullscreenButton: true,
          ),
        );
      });
    });
  }

  @override
  void dispose() {
    super.dispose();

    _setOrientation([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    _ytbPlayerController.close();
  }

  _setOrientation(List<DeviceOrientation> orientations) {
    SystemChrome.setPreferredOrientations(orientations);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Colors.redAccent,
        leading: GestureDetector(
            child: Icon( Icons.arrow_back_ios, color: Colors.white,  ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => VideoCard()),
              );
            }),

      ),
      body: Container(
        child: Column(
          children: [
            _buildYtbView(),
            _buildMoreVideoTitle(),
            _buildMoreVideosView(),
          ],
        ),
      ),
    );
  }

  _buildYtbView() {
    return AspectRatio(
      aspectRatio: 16 / 9,
      child: _ytbPlayerController != null
          ? YoutubePlayerIFrame(controller: _ytbPlayerController)
          : Center(child: CircularProgressIndicator()),
    );
  }

  _buildMoreVideoTitle() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(14, 10, 182, 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            "Video pembelajaran untuk anak kelas 3", //deskripsi dibawah youtube playernya
            style: TextStyle(fontSize: 16, color: Colors.black),
          ),
        ],
      ),
    );
  }

  _buildMoreVideosView() {
    return Expanded(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: ListView.builder(
            itemCount: videosList.length,
            physics: AlwaysScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  final _newCode = videosList[index].youtubeId;
                  _ytbPlayerController.load(_newCode);
                  _ytbPlayerController.stop();
                },
                child: Container(
                  height: MediaQuery
                      .of(context)
                      .size
                      .height / 5,
                  margin: EdgeInsets.symmetric(vertical: 7),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(18),
                    child: Stack(
                      fit: StackFit.expand,
                      children: <Widget>[
                        Positioned(
                          child: Align(
                            alignment: Alignment.center,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            }),
      ),
    );
  }
}
  class YoutubePlayerDemo4 extends StatefulWidget {
  YoutubePlayerDemo4({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _YoutubePlayerDemo4State createState() => _YoutubePlayerDemo4State();
  }

  class _YoutubePlayerDemo4State extends State<YoutubePlayerDemo4> {
    late YoutubePlayerController _ytbPlayerController;
    List<YoutubeModel> videosList = [
      YoutubeModel(id: 2, youtubeId: 'aulbSLfknzk'),
    ];

    @override
    void initState() {
      super.initState();

      _setOrientation([
        DeviceOrientation.landscapeRight,
        DeviceOrientation.landscapeLeft,
        DeviceOrientation.portraitUp,
        DeviceOrientation.portraitDown,
      ]);

      WidgetsBinding.instance!.addPostFrameCallback((_) {
        setState(() {
          _ytbPlayerController = YoutubePlayerController(
            initialVideoId: videosList[0].youtubeId,
            params: YoutubePlayerParams(
              showFullscreenButton: true,
            ),
          );
        });
      });
    }

    @override
    void dispose() {
      super.dispose();

      _setOrientation([
        DeviceOrientation.portraitUp,
        DeviceOrientation.portraitDown,
      ]);

      _ytbPlayerController.close();
    }

    _setOrientation(List<DeviceOrientation> orientations) {
      SystemChrome.setPreferredOrientations(orientations);
    }

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
          backgroundColor: Colors.redAccent,
          leading: GestureDetector(
              child: Icon( Icons.arrow_back_ios, color: Colors.white,  ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => VideoCard()),
                );
              }),

        ),
        body: Container(
          child: Column(
            children: [
              _buildYtbView(),
              _buildMoreVideoTitle(),
              _buildMoreVideosView(),
            ],
          ),
        ),
      );
    }

    _buildYtbView() {
      return AspectRatio(
        aspectRatio: 16 / 9,
        child: _ytbPlayerController != null
            ? YoutubePlayerIFrame(controller: _ytbPlayerController)
            : Center(child: CircularProgressIndicator()),
      );
    }

    _buildMoreVideoTitle() {
      return Padding(
        padding: const EdgeInsets.fromLTRB(14, 10, 182, 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              "Video pembelajaran untuk anak kelas 4", //deskripsi dibawah youtube playernya
              style: TextStyle(fontSize: 16, color: Colors.black),
            ),
          ],
        ),
      );
    }

    _buildMoreVideosView() {
      return Expanded(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: ListView.builder(
              itemCount: videosList.length,
              physics: AlwaysScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    final _newCode = videosList[index].youtubeId;
                    _ytbPlayerController.load(_newCode);
                    _ytbPlayerController.stop();
                  },
                  child: Container(
                    height: MediaQuery
                        .of(context)
                        .size
                        .height / 5,
                    margin: EdgeInsets.symmetric(vertical: 7),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(18),
                      child: Stack(
                        fit: StackFit.expand,
                        children: <Widget>[
                          Positioned(
                            child: Align(
                              alignment: Alignment.center,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              }),
        ),
      );
    }
  }
  class YoutubePlayerDemo5 extends StatefulWidget {
  YoutubePlayerDemo5({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _YoutubePlayerDemo5State createState() => _YoutubePlayerDemo5State();
  }

  class _YoutubePlayerDemo5State extends State<YoutubePlayerDemo5> {
    late YoutubePlayerController _ytbPlayerController;
    List<YoutubeModel> videosList = [
      YoutubeModel(id: 2, youtubeId: 'Wjcr0GgtBeE'),
    ];

    @override
    void initState() {
      super.initState();

      _setOrientation([
        DeviceOrientation.landscapeRight,
        DeviceOrientation.landscapeLeft,
        DeviceOrientation.portraitUp,
        DeviceOrientation.portraitDown,
      ]);

      WidgetsBinding.instance!.addPostFrameCallback((_) {
        setState(() {
          _ytbPlayerController = YoutubePlayerController(
            initialVideoId: videosList[0].youtubeId,
            params: YoutubePlayerParams(
              showFullscreenButton: true,
            ),
          );
        });
      });
    }

    @override
    void dispose() {
      super.dispose();

      _setOrientation([
        DeviceOrientation.portraitUp,
        DeviceOrientation.portraitDown,
      ]);

      _ytbPlayerController.close();
    }

    _setOrientation(List<DeviceOrientation> orientations) {
      SystemChrome.setPreferredOrientations(orientations);
    }

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
          backgroundColor: Colors.redAccent,
          leading: GestureDetector(
              child: Icon( Icons.arrow_back_ios, color: Colors.white,  ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => VideoCard()),
                );
              }),

        ),
        body: Container(
          child: Column(
            children: [
              _buildYtbView(),
              _buildMoreVideoTitle(),
              _buildMoreVideosView(),
            ],
          ),
        ),
      );
    }

    _buildYtbView() {
      return AspectRatio(
        aspectRatio: 16 / 9,
        child: _ytbPlayerController != null
            ? YoutubePlayerIFrame(controller: _ytbPlayerController)
            : Center(child: CircularProgressIndicator()),
      );
    }

    _buildMoreVideoTitle() {
      return Padding(
        padding: const EdgeInsets.fromLTRB(14, 10, 182, 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              "Video pembelajaran untuk anak kelas 5", //deskripsi dibawah youtube playernya
              style: TextStyle(fontSize: 16, color: Colors.black),
            ),
          ],
        ),
      );
    }

    _buildMoreVideosView() {
      return Expanded(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: ListView.builder(
              itemCount: videosList.length,
              physics: AlwaysScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    final _newCode = videosList[index].youtubeId;
                    _ytbPlayerController.load(_newCode);
                    _ytbPlayerController.stop();
                  },
                  child: Container(
                    height: MediaQuery
                        .of(context)
                        .size
                        .height / 5,
                    margin: EdgeInsets.symmetric(vertical: 7),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(18),
                      child: Stack(
                        fit: StackFit.expand,
                        children: <Widget>[
                          Positioned(
                            child: Align(
                              alignment: Alignment.center,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              }),
        ),
      );
    }
  }

class YoutubePlayerDemo6 extends StatefulWidget {
  YoutubePlayerDemo6({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _YoutubePlayerDemo6State createState() => _YoutubePlayerDemo6State();
}

class _YoutubePlayerDemo6State extends State<YoutubePlayerDemo6> {
  late YoutubePlayerController _ytbPlayerController;
  List<YoutubeModel> videosList = [
    YoutubeModel(id: 2, youtubeId: 'KQGh8VB4eAI'),
  ];

  @override
  void initState() {
    super.initState();

    _setOrientation([
      DeviceOrientation.landscapeRight,
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    WidgetsBinding.instance!.addPostFrameCallback((_) {
      setState(() {
        _ytbPlayerController = YoutubePlayerController(
          initialVideoId: videosList[0].youtubeId,
          params: YoutubePlayerParams(
            showFullscreenButton: true,
          ),
        );
      });
    });
  }

  @override
  void dispose() {
    super.dispose();

    _setOrientation([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    _ytbPlayerController.close();
  }

  _setOrientation(List<DeviceOrientation> orientations) {
    SystemChrome.setPreferredOrientations(orientations);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Colors.redAccent,
        leading: GestureDetector(
            child: Icon( Icons.arrow_back_ios, color: Colors.white,  ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => VideoCard()),
              );
            }),

      ),
      body: Container(
        child: Column(
          children: [
            _buildYtbView(),
            _buildMoreVideoTitle(),
            _buildMoreVideosView(),
          ],
        ),
      ),
    );
  }

  _buildYtbView() {
    return AspectRatio(
      aspectRatio: 16 / 9,
      child: _ytbPlayerController != null
          ? YoutubePlayerIFrame(controller: _ytbPlayerController)
          : Center(child: CircularProgressIndicator()),
    );
  }

  _buildMoreVideoTitle() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(14, 10, 182, 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            "Video pembelajaran untuk anak kelas 6", //deskripsi dibawah youtube playernya
            style: TextStyle(fontSize: 16, color: Colors.black),
          ),
        ],
      ),
    );
  }

  _buildMoreVideosView() {
    return Expanded(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: ListView.builder(
            itemCount: videosList.length,
            physics: AlwaysScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  final _newCode = videosList[index].youtubeId;
                  _ytbPlayerController.load(_newCode);
                  _ytbPlayerController.stop();
                },
                child: Container(
                  height: MediaQuery
                      .of(context)
                      .size
                      .height / 5,
                  margin: EdgeInsets.symmetric(vertical: 7),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(18),
                    child: Stack(
                      fit: StackFit.expand,
                      children: <Widget>[
                        Positioned(
                          child: Align(
                            alignment: Alignment.center,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            }),
      ),
    );
  }
}