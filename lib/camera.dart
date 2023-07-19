class Camera {
    int? _id;
    String? _brand;
    String? _color;
    double? _prize; 

    int getId(){
        return _id!;
    }

    String getBrand(){
        return _brand!;
    }

    String getColor(){
        return _color!;
    }

    double getPrize(){
        return _prize!;
    }

    void setId(int id) {
        this._id = id;
    }

    void setBrand(String brand) {
        this._brand = brand;
    }

    void setColor(String color) {
        this._color = color;
    }

    void setPrize(double prize) {
        this._prize = prize;
    }
}