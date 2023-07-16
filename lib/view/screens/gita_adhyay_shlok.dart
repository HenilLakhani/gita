import 'package:flutter/material.dart';
import 'package:gita/controller/gita_provider.dart';
import 'package:gita/models/adhyay_models.dart';
import 'package:provider/provider.dart';

class Gita_shloka extends StatelessWidget {
  const Gita_shloka({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Shloka"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Consumer<GitaProvider>(
          builder: (context, pro, _) {
            return pro.allShloka.isNotEmpty
                ? ListView.builder(
                    itemCount: 701,
                    itemBuilder: (context, index) {
                      AdhayayModal data = pro.allShloka[index];
                      return Card(
                        child: ListTile(
                          title: Text(data.text.toString()),
                          leading: Text(
                            "${data.chapter_id.toString()}.${data.verse_number.toString()}",
                            style: TextStyle(fontSize: 22),
                          ),
                          // subtitle: Text(data.transliteration.toString()),
                        ),
                      );
                    },
                  )
                : const Center(
                    child: CircularProgressIndicator(),
                  );
          },
        ),
      ),
    );
  }
}
