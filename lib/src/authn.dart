import 'package:authn/src/types.dart';

class Authn<T extends Object, S extends Session<T>, U extends User<T>> {
  final Adapter<T, S, U> adapter;

  const Authn(this.adapter);
}
