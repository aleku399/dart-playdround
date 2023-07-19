class Animal {
    int? id;
    String? name;
    String? color;

    Animal(this.id, this.name, this.color);
}

class Cat extends Animal {
    String? sound;

    Cat(int id, String name, String color, this.sound): super(id, name, color);

    void display(){
        print('The cats name is ${this.name}');
        print('The cats color is ${this.color}');
        print('The cat ${this.sound}');
        print('The cats id is ${this.id}');
    }
}
