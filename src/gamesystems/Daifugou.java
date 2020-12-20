package gamesystems;

public class Daifugou{
  static Player[] players = new Player[4];
  static Deck deck = new Deck();

  public static void main(String[] args) {
    boolean playAgain = false;

    do{
      System.out.println("ゲームを開始します。");
      play();
    }while(playAgain);
  }

  public static void play() {
    int turn;
    Card currentCard;
    Card nextCard;

    for(int i = 0; i < 4; i++) {
      players[i] = new Player(i, new Hand());
    }

    int loopStart = (int)(Math.random()*4);
    System.out.println("初めのプレイヤーは" + players[loopStart] + "です。");

    deck.shuffle();
    System.out.println("デッキをシャッフルしました、カードを配布します。");
    turn = 0;
    while(deck.getCardsLeft() > 0) {
      players[(loopStart+1+turn) % players.length].getHand().addCard(deck.dealCard());
      turn++;
    }


    System.out.println("配布が完了しました、カードを整理します。");
    players[0].getHand().sortByValue();
    players[0].getHand().showCards();
    System.out.println();

    turn = 0;
//		while(true) {
      System.out.println(players[(loopStart+turn) % players.length] + "のターンです。");
//		}

  }
}