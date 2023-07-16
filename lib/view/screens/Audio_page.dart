import 'package:flutter/material.dart';
import 'package:gita/controller/json_provider.dart';
import 'package:gita/models/Post_models.dart';
import 'package:gita/view/screens/gita_adhyay_shlok.dart';
import 'package:provider/provider.dart';

class GitaPage extends StatelessWidget {
  const GitaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("bhagwat Gita"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Consumer<JSONProvider>(
          builder: (context, pro, _) {
            return pro.alladhyay.isNotEmpty
                ? ListView.builder(
                    itemCount: pro.alladhyay.length,
                    itemBuilder: (context, index) {
                      PostModal data = pro.alladhyay[index];
                      return GestureDetector(
                        onTap: () {
                          Navigator.of(context).pushNamed('Gita_shloka');
                        },
                        child: Card(
                          child: ListTile(
                            title: Text(data.name.toString()),
                            leading: Text(data.chapter_number.toString()),
                            subtitle: Text(data.meaning_hi.toString()),
                          ),
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
