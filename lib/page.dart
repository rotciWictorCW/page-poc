import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class MyPOC extends StatefulWidget {
  const MyPOC({Key? key}) : super(key: key);

  @override
  State<MyPOC> createState() => _MyPOCState();
}

class _MyPOCState extends State<MyPOC> {
  @override
  Widget build(BuildContext context) {
    bool? checkedValue = false;
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(13, 0, 19, 0),
            child: Column(
              children: [
                SizedBox(
                  height: 100,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const SizedBox(
                        width: 4,
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Text(
                          'Confirmar Dados',
                          style: context.typography.titleMedium.copyWith(
                            color: kColorNeutral100,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 18,
                      ),
                      InfiniteIconButton(
                        icon: InfiniteIconData.close,
                        onTap: () {},
                      ),
                    ],
                  ),
                ),
                Center(child: Image.asset('assets/images/imgPOC.png')),
                Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(
                          color: kColorNeutral20,
                          width: 1,
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Nome do cartão',
                                  style: context.typography.bodyMedium.copyWith(
                                    color: kColorNeutral90,
                                  ),
                                ),
                                const SizedBox(
                                  height: 4,
                                ),
                                Text('@handle',
                                    style: TextStyle(color: kColorNeutral70)),
                              ],
                            ),
                            Column(
                              children: [
                                GestureDetector(
                                  child: GestureDetector(
                                    child: Text('Editar',
                                        style: TextStyle(
                                            color: kColorBrandPrimary)),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(
                          color: kColorNeutral20,
                          width: 1,
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Endereço de cobrança',
                                  style: context.typography.bodyMedium.copyWith(
                                    color: kColorNeutral90,
                                  ),
                                ),
                                const SizedBox(
                                  height: 4,
                                ),
                                Text('{endereço}, {número}, {complemento}',
                                    style: TextStyle(color: kColorNeutral70)),
                                Text('{cidade} - {estado}',
                                    style: TextStyle(color: kColorNeutral70)),
                                Text('CEP: 00000-000',
                                    style: TextStyle(color: kColorNeutral70)),
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  'Editar',
                                  style: TextStyle(color: kColorBrandPrimary),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 24,
                ),
                Row(
                  children: [
                    InfiniteCheckbox(
                      value: checkedValue,
                      onChanged: (value) {
                        setState(() {
                          checkedValue = value;
                        });
                      },
                    ),
                    Expanded(
                      child: Text(
                          'Os pagamentos das vendas serão depositados no InfiniteBank a partir do próximo dia útil',
                          style: TextStyle(color: kColorNeutral60)),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 34,
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child:
                  InfiniteButton.onDark(label: 'Continuar', onTap: onTap),
                ),
                Text('Ao confirmar o envio você concorda com os',
                    style: TextStyle(color: kColorNeutral50)),
                const Text('Termos e Condições.')
              ],
            ),
          ),
        ),
      ),
    );
  }

  void onTap() {}
}
