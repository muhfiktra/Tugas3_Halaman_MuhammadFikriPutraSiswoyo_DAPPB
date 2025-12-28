import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'cubit/app_cubit.dart';
import 'pages/home_page.dart';
import 'pages/profile_page.dart';
import 'pages/settings_page.dart';

void main() {
  runApp(BlocProvider(create: (_) => AppCubit(), child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  final List<Widget> pages = const [HomePage(), ProfilePage(), SettingsPage()];

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppCubit, int>(
      builder: (context, index) {
        return Scaffold(
          body: pages[index],
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: index,
            onTap: (i) {
              context.read<AppCubit>().changeTab(i);
            },
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: 'Profile',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                label: 'Settings',
              ),
            ],
          ),
        );
      },
    );
  }
}
