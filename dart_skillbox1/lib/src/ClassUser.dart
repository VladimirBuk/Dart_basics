class User {
  final String email;
  User({required this.email});

  @override
  String toString() {
    return email;
  }
}

mixin GNS {
  GetNameSystem(String email) {
    var ml = email.substring(email.indexOf('@'));
    return ml.substring(1);
  }
}

class AdminUser extends User with GNS {
  AdminUser({required super.email});

  @override
  String toString() {
    return GetNameSystem(email);
  }
}

class GeneralUser extends User {
  GeneralUser({required super.email});

  @override
  String toString() {
    return email;
  }
}

class UserManager<T extends User> {
  List<T> userList;
  UserManager(this.userList);

  addUser(User) {
    userList.add(User);
  }

  removeUserByEmail(String email) {
    userList.removeWhere((userList) => userList.email == email);
  }

  String getEmail() {
    return userList.toString();
  }
}
