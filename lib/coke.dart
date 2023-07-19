class Coke {
    open(){
        print('opened');
    }
}

class CokeBottle implements Coke {
  @override
  open() {
    print('Coke bottle is opened');
  }
}

class BottleFactory {
    static Bottle createCokeBottle() {
        return CokeBottle;
    }
}