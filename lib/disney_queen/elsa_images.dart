import 'dart:math';

class ElsaImages {
  List<Map<String, String>> elsaImages = [
    {"image": "https://i.pinimg.com/736x/81/01/07/810107bc3bd1493ea751bb3ad584f6e8.jpg"},
    {"image": "https://i.pinimg.com/1200x/a5/4c/2d/a54c2dfd3cda10cd6d724490d0f9cefe.jpg"},
    {"image": "https://i.pinimg.com/736x/bc/ba/69/bcba69d4babb3e4dd16ca8e85ee61f99.jpg"},
    {"image": "https://i.pinimg.com/736x/db/5a/6e/db5a6e9c2c5c22998c5465917259d022.jpg"},
    {"image": "https://i.pinimg.com/736x/54/e1/71/54e171c7f6d3d58ac0742c276484b37a.jpg"},
    {"image": "https://i.pinimg.com/736x/ce/7f/de/ce7fdeda6fbf2702dcf3b8354f502f7a.jpg"},
    {"image": "https://i.pinimg.com/736x/38/a2/24/38a2246ab887e7cc388002dac7010a23.jpg"},
    {"image": "https://i.pinimg.com/736x/98/57/6e/98576e03c028a712633bcd09e9fea1b1.jpg"},
    {"image": "https://i.pinimg.com/736x/76/b0/65/76b06574b6c11eba001324045f3fe27a.jpg"},
    {"image": "https://i.pinimg.com/1200x/ad/19/37/ad193745f2b85c554580998e149eb33a.jpg"},
    {"image": "https://i.pinimg.com/736x/5e/24/fd/5e24fd44b6f06cda45a8a3e30b9a2b81.jpg"},
  ];

  void shuffle(Random random) {
    elsaImages.shuffle(Random());
  }
}