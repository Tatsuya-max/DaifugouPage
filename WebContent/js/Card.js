class Card {
  constructor(suit, value) {
    this.suit = suit;
    this.value = value;
  }
  mahou() {
    alert( this.name + 'はメラを使った！' );
  }
}

class KaihukuMahouClass {
  constructor(name) {
    this.name = name;
    this.kougeki = 160;
    this.bougyo = 240;
  }
  mahou() {
    alert( this.name + 'はホイミを使った！' );
  }
}