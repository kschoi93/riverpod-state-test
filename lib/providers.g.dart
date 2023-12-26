// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$countHash() => r'abcd262bceb202c0a20487c29abdb8b72657cb5b';

/// See also [count].
@ProviderFor(count)
final countProvider = AutoDisposeProvider<Counter>.internal(
  count,
  name: r'countProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$countHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef CountRef = AutoDisposeProviderRef<Counter>;
String _$counterHash() => r'2a3bb1686ab77c65d1d60ae7c280730f19c14e9b';

/// See also [Counter].
@ProviderFor(Counter)
final counterProvider =
    AutoDisposeNotifierProvider<Counter, AuthState>.internal(
  Counter.new,
  name: r'counterProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$counterHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$Counter = AutoDisposeNotifier<AuthState>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
