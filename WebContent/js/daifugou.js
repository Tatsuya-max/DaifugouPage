'use strict';
window.onload=function(){
  function Card (suit, value){
    this.suit = suit;
    this.value = value;
  }
  const Deck = [54];
  const suits = ['s','h','d','c','x'];
  for(let i = 0; i < suits.length; i++){
    for(let j = 1; j <= 13; j++){
      let theCard = new Card(suits[i],j);
      Deck.push(theCard);
      Deck.push(Card(suits[4],1));
      Deck.push(Card(suits[4],2));
    }
  }

  const table = document.getElementById('table');
  for(let i = 0; i < suits.length; i++){
    let tr = document.createElement('tr');
    for(let j = 0; j < 13; j++){
      let td = document.createElement('td');
      let tempCard = Deck[i*13+j];
      td.textContent = `${tempCard.suit}:${tempCard.value}`;
      tr.appendChild(td);
    }
    table.appendChild(tr);
  }
}

