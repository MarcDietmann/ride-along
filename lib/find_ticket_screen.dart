import 'package:flutter/material.dart';
import 'package:ride_along/full_width_text_button.dart';

class FindTicketScreen extends StatefulWidget {
  const FindTicketScreen({Key? key}) : super(key: key);

  @override
  State<FindTicketScreen> createState() => _FindTicketScreenState();
}

class _FindTicketScreenState extends State<FindTicketScreen> {
  late List<bool> _isOpen;
  final TextEditingController _timeController= TextEditingController();
  final TextEditingController _fromController= TextEditingController();
  final TextEditingController _toController= TextEditingController();
  final TextEditingController _countController= TextEditingController();
  late Map inputData = {};
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _isOpen = List.generate(4, (index) => false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: ListView(
        // clipBehavior: Clip.none,
        children: [
          ExpansionPanelList(
            dividerColor: Colors.grey,
            elevation: 3,
            expansionCallback: (i, context) {
              setState(() {
                _isOpen[i] = !_isOpen[i];
              });
            },
            children: [
              buildExpansionPanel(
                  context: context,
                  index: 0,
                  body: TextField(
                    onChanged: (value)=> {
                      setState(() => inputData["time"]=value),
                    },
                    decoration: const InputDecoration(
                      hintText: 'dd.mm.yyyy hh:mm',
                    ),
                    controller: _timeController,
                  ),
                  header: "Wann"),
              buildExpansionPanel(
                  context: context,
                  index: 1,
                  body: TextField(
                    onChanged: (value)=> setState(()=> inputData["from"]=value),
                    decoration: const InputDecoration(
                      hintText: 'München Hbf',
                    ),
                    controller: _fromController,
                  ),
                  header: "Von"),
              buildExpansionPanel(
                  index:2,
                  context: context,
                  body: TextField(
                    decoration: const InputDecoration(
                      hintText: 'Poing',
                    ),
                    controller: _toController,
                    onChanged: (value)=> setState(()=> inputData["to"]=value),

                  ),
                  header: "Nach"),
              buildExpansionPanel(
                  context: context,
                  index: 3,
                  body: TextField(
                    decoration: const InputDecoration(
                      hintText: '2',
                    ),
                    controller: _countController,
                    onChanged: (value)=> setState(()=> inputData["count"]=value),

                  ),

                  header: "Wie viele kannst du mitnehmen"),
            ],
          ),
          FullWidthTextButton(
            label: "Fahrt suchen",
            //todo send request
            onTap: ()=>{print(inputData)},
          )
        ],
      ),
    );
  }

  ExpansionPanel buildExpansionPanel(
      {required BuildContext context, Widget? body, String? header, required int index}) {
    return ExpansionPanel(
      backgroundColor: Theme.of(context).backgroundColor,
      canTapOnHeader: true,
      isExpanded: _isOpen[index],
      body: Padding(padding: const EdgeInsets.all(16.0), child: body),
      headerBuilder: (BuildContext context, bool isExpanded) {
        return Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            header!,
            style: Theme.of(context).textTheme.headline2,
          ),);
      },
    );
  }
}