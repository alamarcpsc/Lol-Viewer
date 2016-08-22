//Adam La Mar
//Homework Final
//4/25/16

Table PlayerStats;

float paddingX;
float paddingY;

boolean[] victory = new boolean[10];
int[] allyTowerKills = new int[10];
int[] enemyTowerKills = new int[10];
int[] allyDragonKills = new int[10];
int[] enemyDragonKills = new int[10];
int[] allyBaronKills = new int[10];
int[] enemyBaronKills = new int[10];

void setup() {
  surface.setResizable(true); 
  size(640, 480);
  paddingX = width * 1 / 20;
  paddingY = height * 1 / 100;
  PlayerStats = loadTable("PlayerStats.csv", "header");
  drawStats();
}

void draw() {
  drawBackground();
}

void drawBackground() {
  background(255);
}

void drawStats() {
  //Get Wins and Losses
  int gameNumber;
  gameNumber = 1;
  for (TableRow row : PlayerStats.rows()) {
    victory[gameNumber - 1] = boolean(row.getString("Summoner_Stats_Winner"));
    allyTowerKills[gameNumber - 1] = row.getInt("Teams_1_TowerKills");
    enemyTowerKills[gameNumber - 1] = row.getInt("Teams_0_TowerKills");
    allyDragonKills[gameNumber - 1] = row.getInt("Teams_1_DragonKills");
    enemyDragonKills[gameNumber - 1] = row.getInt("Teams_0_DragonKills");
    allyBaronKills[gameNumber - 1] = row.getInt("Teams_1_BaronKills");
    enemyBaronKills[gameNumber - 1] = row.getInt("Teams_0_BaronKills");
    gameNumber++;
  }
  
  for (gameNumber = 1; gameNumber <= 10; gameNumber++) {
    println("Game #" + gameNumber + " Victory = " + victory[gameNumber - 1]);
    println("Ally Tower Kills = " + allyTowerKills[gameNumber - 1]);
    println("Enemy Tower Kills = " + enemyTowerKills[gameNumber - 1]);
    println("Ally Dragon Kills = " + allyDragonKills[gameNumber - 1]);
    println("Enemy Dragon Kills = " + enemyDragonKills[gameNumber - 1]);
    println("Ally Baron Kills = " + allyBaronKills[gameNumber - 1]);
    println("Enemy Baron Kills = " + enemyBaronKills[gameNumber - 1]);
    println();
  }
}