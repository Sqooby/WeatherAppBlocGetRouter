import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubit/theme/theme_cubit.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final themeCubit = context.watch<ThemeCubit>();

    return Scaffold(
      appBar: AppBar(title: const Text("Ustawienia")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const Text(
              "Personalizacja",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            _buildThemeOption(
              context,
              title: "Jasny",
              icon: Icons.wb_sunny_rounded,
              selected: themeCubit.state == ThemeState.light,
              onTap: () => themeCubit.setTheme(ThemeState.light),
            ),
            _buildThemeOption(
              context,
              title: "Ciemny",
              icon: Icons.nights_stay_rounded,
              selected: themeCubit.state == ThemeState.dark,
              onTap: () => themeCubit.setTheme(ThemeState.dark),
            ),
            _buildThemeOption(
              context,
              title: "Automatyczny",
              icon: Icons.brightness_auto_rounded,
              selected: themeCubit.state == ThemeState.system,
              onTap: () => themeCubit.setTheme(ThemeState.system),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildThemeOption(
    BuildContext context, {
    required String title,
    required IconData icon,
    required bool selected,
    required VoidCallback onTap,
  }) {
    return Card(
      color: selected
          ? Theme.of(context).colorScheme.primary.withOpacity(0.1)
          : null,
      child: ListTile(
        leading: Icon(icon,
            color:
                selected ? Theme.of(context).colorScheme.primary : Colors.grey),
        title: Text(title,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
        trailing:
            selected ? const Icon(Icons.check, color: Colors.green) : null,
        onTap: onTap,
      ),
    );
  }
}
