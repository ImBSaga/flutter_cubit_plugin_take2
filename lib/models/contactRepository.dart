const _delay = Duration(milliseconds: 300);
Future<void> wait() => Future.delayed(_delay);

class ContactRepository {

  Future<List<String>> fetchContactName() async {
    await wait();
    return ['Cheese', 'Chocolate', 'Mango', 'Ice Cream', 'Smartphone'];
  }

  Future<List<String>> fetchContactImage(String name) async {
    await wait();
    switch (name) {
      case 'Cheese':
        return ['assets/cheese.jpg'];
      case 'Chocolate':
        return ['assets/choco.jpg'];
      case 'Mango':
        return ['assets/mango.jpg'];
      case 'Ice Cream':
        return ['assets/ice.jpg'];
      case 'Smartphone':
        return ['assets/phone.jpg'];
      default:
        return [];
    }
  }

  // ignore: missing_return
  Future<List<String>> fetchContactStatus(String name, String image) async {
    await wait();
    switch (name) {
      case 'Cheese':
        switch (image) {
          case 'assets/cheese.jpg':
            return ['Sweet ~'];
        }
        break;
      case 'Chocolate':
        switch (image) {
          case 'assets/choco.jpg':
            return ['More than cheese'];
        }
        break;
      case 'Mango':
        switch (image) {
          case 'assets/mango.jpg':
            return ['Swwweeeetttt'];
        }
        break;
      case 'Ice Cream':
        switch (image) {
          case 'assets/ice.jpg':
            return ['Colderr'];
        }
        break;
      case 'Smartphone':
        switch (image) {
          case 'assets/phone.jpg':
            return ['Techs'];
        }
        break;
      default:
        return [];
    }
  }
}
