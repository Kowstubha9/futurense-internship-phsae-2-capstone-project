-- Creation of database
    CREATE DATABASE sports_db;
    USE sports_db;

-- Creation of player information table
    CREATE TABLE Player_information (SerialID INT, Player VARCHAR(60), Team VARCHAR(60), Position VARCHAR(60), Season INT, PRIMARY KEY(SerialID, Player)); 

-- Creation of player demographics table
    CREATE TABLE PlayerDemographics (SerialID INT, Player VARCHAR(60), Age INT, Height FLOAT, Weight FLOAT, FOREIGN KEY(SerialID, Player) REFERENCES Player_information(SerialID, Player));

-- Creation of player stats table
    CREATE TABLE PlayerStats (SerialID INT, Player VARCHAR(60), Goals INT, Assists INT, YellowCards INT, RedCards INT, PassCompletionRate FLOAT, DistanceCovered FLOAT, Sprints INT, ShotsOnTarget INT, TacklesWon INT, CleanSheets INT, FOREIGN KEY(SerialID, Player) REFERENCES Player_information(SerialID, Player));

-- Creation of player training info table
    CREATE TABLE PlayerTrainingInfo (SerialID INT, Player VARCHAR(60), TrainingHours FLOAT, EffectiveTraining FLOAT, FOREIGN KEY(SerialID, Player) REFERENCES Player_information(SerialID, Player));

-- Creation of player performance table
    CREATE TABLE PlayerPerformance (SerialID INT, Player VARCHAR(60), PressurePerformanceImpact FLOAT, MatchPressure INT, FOREIGN KEY(SerialID, Player) REFERENCES Player_information(SerialID, Player));

-- Creation of player health table
    CREATE TABLE PlayerHealth (SerialID INT, Player VARCHAR(60), InjuryHistory INT, PlayerFatigue FLOAT, FatigueInjuryCorrelation FLOAT, FOREIGN KEY(SerialID, Player) REFERENCES Player_information(SerialID, Player));