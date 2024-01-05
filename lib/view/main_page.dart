import 'package:class_case_barisalisaglam/model/character.dart';
import 'package:class_case_barisalisaglam/view_model/main_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text(
          "Rick and Morty",
          style: TextStyle(
              fontWeight: FontWeight.bold, color: Color.fromARGB(95, 3, 37, 2)),
        ),
        centerTitle: true,
      ),
      body: _buildCharacterList(context),
    );
  }

  Widget _buildCharacterList(BuildContext context) {
    return Consumer<MainViewModel>(
      builder: (context, viewModel, child) => ListView.builder(
          itemCount: viewModel.characters.length,
          itemBuilder: (context, index) {
            Character character = viewModel.characters[index];
            return Padding(
              padding: const EdgeInsets.all(5.0),
              child: ListTile(
                tileColor: const Color.fromARGB(255, 67, 177, 70),
                title: Text(
                  character.name,
                  style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(95, 2, 30, 2)),
                ),
                subtitle: Row(
                  children: [
                    Text(
                      character.gender,
                      style: const TextStyle(
                          fontSize: 12, fontWeight: FontWeight.w600),
                    ),
                    const Text(","),
                    const SizedBox(
                      width: 3,
                    ),
                    Text(
                      character.status,
                      style: const TextStyle(
                          fontSize: 12, fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
                leading: CircleAvatar(
                  backgroundColor: Colors.green,
                  radius: 28,
                  backgroundImage: NetworkImage(character.image),
                ),
              ),
            );
          }),
    );
  }
}
