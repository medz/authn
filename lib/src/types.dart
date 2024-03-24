abstract interface class User<T extends Object> {
  T get id;
}

abstract interface class Session<T extends Object> {
  String get id;
  T get userId;
  DateTime get expiresAt;
}

abstract interface class Adapter<T extends Object, S extends Session<T>,
    U extends User<T>> {
  Future<({S session, U user})> getSessionAndUser(String sessionId);
  Future<List<S>> getUserSessions(T userId);
  Future<void> setSession(Session<T> session);
  Future<void> updateSessionExpiration(String sessionId, DateTime expiresAt);
  Future<void> deleteSession(String sessionId);
  Future<void> deleteUserSessions(T userId);
  Future<void> deleteExpiredSessions();
}
