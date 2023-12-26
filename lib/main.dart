import 'package:counter/providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

final GoRouter _router = GoRouter(
  initialLocation: '/home3',
  routes: <RouteBase>[
    GoRoute(
      path: '/home',
      builder: (BuildContext context, GoRouterState state) {
        return Home();
      },
    ),
    GoRoute(
      path: '/home2',
      builder: (BuildContext context, GoRouterState state) {
        return Home2();
      },
    ),
    GoRoute(
      path: '/home3',
      builder: (BuildContext context, GoRouterState state) {
        return Home3();
      },
    )
  ],
);

void main() {
  runApp(
    // Adding ProviderScope enables Riverpod for the entire project
    const ProviderScope(child: MyApp()),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router,
    );
  }
}

class Home extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter example'),
        actions: [
          IconButton(
            icon: Icon(Icons.abc),
            onPressed: () {
              // GoRouter.of(context).push('/home2');
              GoRouter.of(context).pop();
            },
          ),
          IconButton(
            icon: Icon(Icons.abc),
            onPressed: () {
              GoRouter.of(context).push('/home3');
            },
          )
        ],
      ),
      body: Center(
        child: Text('${ref.watch(countProvider)}'),
      ),
      floatingActionButton: FloatingActionButton(
        // The read method is a utility to read a provider without listening to it
        onPressed: () => ref.read(countProvider).increment(),
        child: const Icon(Icons.add),
      ),
    );
  }
}

class Home2 extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter example2'),
        actions: [
          IconButton(
            icon: Icon(Icons.abc),
            onPressed: () {
              // GoRouter.of(context).push('/home');
              GoRouter.of(context).pop();
            },
          ),
          IconButton(
            icon: Icon(Icons.abc),
            onPressed: () {
              GoRouter.of(context).push('/home3');
            },
          )
        ],
      ),
      body: Center(
        child: Text('${ref.watch(countProvider)}'),
      ),
      floatingActionButton: FloatingActionButton(
        // The read method is a utility to read a provider without listening to it
        onPressed: () => ref.read(countProvider).increment(),
        child: const Icon(Icons.add),
      ),
    );
  }
}

class Home3 extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter example3'),
        actions: [
          IconButton(
            icon: Icon(Icons.abc),
            onPressed: () {
              GoRouter.of(context).push('/home');
              // GoRouter.of(context).pop();
            },
          ),
          IconButton(
            icon: Icon(Icons.abc),
            onPressed: () {
              GoRouter.of(context).push('/home2');
              // GoRouter.of(context).pop();
            },
          )
        ],
      ),
      body: Center(
        child: Text('test'),
      ),
    );
  }
}
