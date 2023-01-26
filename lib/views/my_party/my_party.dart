import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:gongpot/providers/party_provider.dart';
import 'package:provider/provider.dart';

class MyParty extends StatelessWidget {
  const MyParty({super.key, required this.state});

  final GoRouterState state;

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => PartyProvider.init((state.extra as Map?)?['partyIndex']),
      child: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          SliverToBoxAdapter(
            child: Column(
              children: [
                SizedBox(height: MediaQuery.of(context).size.height * 0.05),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Card(
                    child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 24.0, horizontal: 32.0),
                      width: MediaQuery.of(context).size.width,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Consumer<PartyProvider>(builder: (context, provider, _) {
                            return Text.rich(
                              TextSpan(
                                children: [
                                  TextSpan(
                                    text: provider.party?.name ?? '',
                                    style: TextStyle(fontSize: 28.0, fontWeight: FontWeight.bold),
                                  ),
                                  TextSpan(
                                    text: '파티',
                                    style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            );
                          }),
                          SizedBox(height: 24.0),
                          Text('더치페이 입금일까지 앞으로 6일'),
                          SizedBox(height: 8.0),
                          Text('구독중인 서비스 : Netflix'),
                        ],
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(Icons.star, color: Colors.yellow.shade800),
                          Icon(Icons.person, color: Theme.of(context).colorScheme.primary),
                          const Text('유저 1'),
                        ],
                      ),
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(Icons.person, color: Theme.of(context).colorScheme.primary),
                        const Text('유저 2'),
                      ],
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(Icons.person, color: Theme.of(context).colorScheme.primary),
                        const Text('유저 3'),
                      ],
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(Icons.person, color: Theme.of(context).colorScheme.primary),
                        const Text('유저 4'),
                      ],
                    ),
                  ],
                ),
                const Divider(),
              ],
            ),
          ),
        ],
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            children: [
              Expanded(
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: 10,
                  itemBuilder: (context, index) => Card(
                    child: Theme(
                      data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
                      child: ExpansionTile(
                        title: Text('${index + 1}월 입금내역'),
                        childrenPadding: const EdgeInsets.symmetric(
                          horizontal: 16.0,
                        ),
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text('신한 은행'),
                                Text('8990 원'),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class BillItem extends StatefulWidget {
  const BillItem({super.key, required this.index});

  final int index;

  @override
  State<BillItem> createState() => _BillItemState();
}

class _BillItemState extends State<BillItem> {
  late bool isExpanded;

  @override
  void initState() {
    isExpanded = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Theme(
        data: Theme.of(context).copyWith(shadowColor: Colors.transparent),
        child: ExpansionTile(
          onExpansionChanged: (value) {
            setState(() {
              isExpanded = value;
            });
          },
          title: Text('${widget.index + 1}월 입금내역'),
          children: [
            const Divider(thickness: 1.0, height: 1.0),
            const SizedBox(height: 8.0),
            const Text('asdfasdf'),
          ],
        ),
      ),
    );
  }
}
