import 'package:flutter/material.dart';
import 'package:pdfixel/presentation/widgets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  int indexSelection = 0;

  @override
  Widget build(BuildContext context) {

    final colorScheme = Theme.of(context).colorScheme;

    return SafeArea(
      child: Scaffold(
        backgroundColor: colorScheme.primary,
        body: LayoutBuilder(
                  builder: (context, constraints) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 8),
                            child: CustomAppBar(),
                          ),
                          const SizedBox(height: 25,),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 16),
                            child: Image.asset(
                              'assets/images/horizontal_white_logo.png',
                              width: constraints.maxWidth * 0.40,
                            ),
                          ),
                          const SizedBox(height: 6,),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 16),
                            child: SizedBox(
                              width: constraints.maxWidth * 0.9,
                              child: Text(
                                'Turn your world into PDF, with just one tap',
                                style: TextStyle(
                                  color: colorScheme.onSecondary,
                                  fontSize: 16
                                ),
                                softWrap: true,
                                maxLines: 2,
                                overflow: TextOverflow.visible,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 45,
                          ),
                          Expanded(
                            child: 
                            Container(
                              decoration: BoxDecoration(
                                color: colorScheme.onPrimary,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(30),
                                  topRight: Radius.circular(30)
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: colorScheme.secondary.withAlpha(150),
                                    blurRadius: 8
                                  )
                                ]
                              ),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 12),
                                    child: Container(
                                      padding: EdgeInsets.all(1),
                                      decoration: BoxDecoration(
                                        color: colorScheme.tertiary,
                                        borderRadius: BorderRadius.circular(6)
                                      ),
                                      child: Row(
                                        children: [
                                          Expanded(
                                            child: CustomTabItem(
                                              onTap: () => setState(() => indexSelection = 0),
                                              isSelected: indexSelection == 0, 
                                              title: "Select image"
                                            ),
                                          ),
                                          Expanded(
                                            child: CustomTabItem(
                                              onTap: () => setState(() => indexSelection = 1),
                                              isSelected: indexSelection == 1, 
                                              title: "Take a picture"
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: constraints.maxWidth,
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 18),
                                      child: IndexedStack(
                                        index: indexSelection,
                                        children: [
                                          Text('Texto 1'),
                                          Text('Texto 2'),
                                        ],
                                      ),
                                    ),
                                  ),
                                  
                                ],
                              ),
                            )
                          )
                        ],
                    );
                  },
                ),
      )
    );
  }
}