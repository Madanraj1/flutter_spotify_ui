import "package:flutter/material.dart";

class MusicSearch extends SearchDelegate {
  var musicNameLists = [
    "eminem",
    "drake",
    "krishna",
    "fortyseven",
    "jackson",
    "arnab",
    "carryminati"
  ];

  @override
  List<Widget> buildActions(BuildContext context) {
    // actions for the app bar
    return [IconButton(icon: Icon(Icons.clear), onPressed: () {})];
  }

  @override
  Widget buildLeading(BuildContext context) {
    // leading icon on the left  of the appbar
    return IconButton(
        icon: AnimatedIcon(
            icon: AnimatedIcons.menu_arrow, progress: transitionAnimation),
        onPressed: () {
          Navigator.pop(context);
        });
  }

  @override
  Widget buildResults(BuildContext context) {
    // show the result based on selection
    throw UnimplementedError();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // show when user searchs something
    final suggestionList = musicNameLists;
    return ListView.builder(
      itemBuilder: (context, index) => ListTile(
        leading: Icon(Icons.music_note),
        title: Text(suggestionList[index]),
      ),
      itemCount: suggestionList.length,
    );
  }
}
