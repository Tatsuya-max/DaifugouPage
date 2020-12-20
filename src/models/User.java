package models;
import java.io.Serializable;

public class User implements Serializable{
	private String name;
	private String pass;
	private int wins;
	private int losses;
	private int ties;
	private int totalGames = wins + losses + ties;

	public User() {}
	public User(String name, String pass) {
		this.name = name;
		this.pass = pass;
	}
	public String getName() {return name;}
	public String getPass() {return pass;}
	public int getWins() {return wins;}
	public void setWins(int wins) {this.wins = wins;}
	public int getTotalGames() {return totalGames;}
	public double getWinningPercentage() {
		return ((wins + 0.5*ties)/totalGames * 100);
	}
}
