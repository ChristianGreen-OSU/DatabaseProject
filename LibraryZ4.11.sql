--
-- File generated with SQLiteStudio v3.3.3 on Mon Apr 11 20:59:58 2022
--
-- Text encoding used: UTF-8
--
PRAGMA foreign_keys = off;
BEGIN TRANSACTION;

-- Table: Actor
CREATE TABLE Actor (
    Actor_Name VARCHAR (40) PRIMARY KEY,
    Birth_Date DATE
);

INSERT INTO Actor (
                      Actor_Name,
                      Birth_Date
                  )
                  VALUES (
                      'Korney Tremelling',
                      '1/2/1990'
                  );

INSERT INTO Actor (
                      Actor_Name,
                      Birth_Date
                  )
                  VALUES (
                      'Demetra Points',
                      '1/3/1990'
                  );

INSERT INTO Actor (
                      Actor_Name,
                      Birth_Date
                  )
                  VALUES (
                      'Obadiah Etherington',
                      '1/4/1990'
                  );

INSERT INTO Actor (
                      Actor_Name,
                      Birth_Date
                  )
                  VALUES (
                      'Gottfried Tethacot',
                      '1/5/1990'
                  );

INSERT INTO Actor (
                      Actor_Name,
                      Birth_Date
                  )
                  VALUES (
                      'Ravid Goodfellow',
                      '1/6/1990'
                  );

INSERT INTO Actor (
                      Actor_Name,
                      Birth_Date
                  )
                  VALUES (
                      'Marcella Billany',
                      '1/7/1990'
                  );

INSERT INTO Actor (
                      Actor_Name,
                      Birth_Date
                  )
                  VALUES (
                      'Luis Aitkenhead',
                      '1/8/1990'
                  );

INSERT INTO Actor (
                      Actor_Name,
                      Birth_Date
                  )
                  VALUES (
                      'Alix Bowgen',
                      '1/9/1990'
                  );

INSERT INTO Actor (
                      Actor_Name,
                      Birth_Date
                  )
                  VALUES (
                      'Nancy Braunds',
                      '1/10/1990'
                  );

INSERT INTO Actor (
                      Actor_Name,
                      Birth_Date
                  )
                  VALUES (
                      'Ingar Baser',
                      '1/11/1990'
                  );

INSERT INTO Actor (
                      Actor_Name,
                      Birth_Date
                  )
                  VALUES (
                      'Lorri Pechold',
                      '1/12/1990'
                  );

INSERT INTO Actor (
                      Actor_Name,
                      Birth_Date
                  )
                  VALUES (
                      'Hayyim Stitson',
                      '1/13/1990'
                  );

INSERT INTO Actor (
                      Actor_Name,
                      Birth_Date
                  )
                  VALUES (
                      'Sidonia Cadamy',
                      '1/14/1990'
                  );

INSERT INTO Actor (
                      Actor_Name,
                      Birth_Date
                  )
                  VALUES (
                      'Romonda Banaszczyk',
                      '1/15/1990'
                  );

INSERT INTO Actor (
                      Actor_Name,
                      Birth_Date
                  )
                  VALUES (
                      'Carroll Hellewell',
                      '1/16/1990'
                  );

INSERT INTO Actor (
                      Actor_Name,
                      Birth_Date
                  )
                  VALUES (
                      'Burnard Di Biagio',
                      '1/17/1990'
                  );

INSERT INTO Actor (
                      Actor_Name,
                      Birth_Date
                  )
                  VALUES (
                      'Tobin Sleeford',
                      '1/18/1990'
                  );

INSERT INTO Actor (
                      Actor_Name,
                      Birth_Date
                  )
                  VALUES (
                      'Urson Yantsev',
                      '1/19/1990'
                  );

INSERT INTO Actor (
                      Actor_Name,
                      Birth_Date
                  )
                  VALUES (
                      'Miller Sighart',
                      '1/20/1990'
                  );

INSERT INTO Actor (
                      Actor_Name,
                      Birth_Date
                  )
                  VALUES (
                      'Kalinda Mackleden',
                      '1/21/1990'
                  );


-- Table: Admin
CREATE TABLE Admin (
    admin_email VARCHAR (50),
    Username    VARCHAR (25),
    Password    VARCHAR (20),
    [F. Name]   VARCHAR (20),
    [L. Name]   VARCHAR (20),
    PRIMARY KEY (
        admin_email,
        Username
    )
);

INSERT INTO Admin (
                      admin_email,
                      Username,
                      Password,
                      [F. Name],
                      [L. Name]
                  )
                  VALUES (
                      'a_hawkins@library.com',
                      'a_hawkins',
                      'MqZef6',
                      'Ava',
                      'Hawkins'
                  );

INSERT INTO Admin (
                      admin_email,
                      Username,
                      Password,
                      [F. Name],
                      [L. Name]
                  )
                  VALUES (
                      'a_alexander@library.com',
                      'a_alexander',
                      'YF3VvB',
                      'Andrea',
                      'Alexander'
                  );

INSERT INTO Admin (
                      admin_email,
                      Username,
                      Password,
                      [F. Name],
                      [L. Name]
                  )
                  VALUES (
                      'j_kelly@library.com',
                      'j_kelly',
                      'c6PAeQ',
                      'Jerry',
                      'Kelly'
                  );

INSERT INTO Admin (
                      admin_email,
                      Username,
                      Password,
                      [F. Name],
                      [L. Name]
                  )
                  VALUES (
                      'b_chapman@library.com',
                      'b_chapman',
                      'eRXM9b',
                      'Bird',
                      'Chapman'
                  );

INSERT INTO Admin (
                      admin_email,
                      Username,
                      Password,
                      [F. Name],
                      [L. Name]
                  )
                  VALUES (
                      'b_petersen@library.com',
                      'b_petersen',
                      'fMNF5b',
                      'Byron',
                      'Petersen'
                  );

INSERT INTO Admin (
                      admin_email,
                      Username,
                      Password,
                      [F. Name],
                      [L. Name]
                  )
                  VALUES (
                      's_rodgers@library.com',
                      's_rodgers',
                      '9gm9Wp',
                      'Seymour',
                      'Rodgers'
                  );

INSERT INTO Admin (
                      admin_email,
                      Username,
                      Password,
                      [F. Name],
                      [L. Name]
                  )
                  VALUES (
                      'h_proctor@library.com',
                      'h_proctor',
                      'RZ7xvQ',
                      'Hazel',
                      'Proctor'
                  );

INSERT INTO Admin (
                      admin_email,
                      Username,
                      Password,
                      [F. Name],
                      [L. Name]
                  )
                  VALUES (
                      'r_brock@library.com',
                      'r_brock',
                      '3Ym2jE',
                      'Reese',
                      'Brock'
                  );

INSERT INTO Admin (
                      admin_email,
                      Username,
                      Password,
                      [F. Name],
                      [L. Name]
                  )
                  VALUES (
                      'b_hale@library.com',
                      'b_hale',
                      'p94BbP',
                      'Ben',
                      'Hale'
                  );

INSERT INTO Admin (
                      admin_email,
                      Username,
                      Password,
                      [F. Name],
                      [L. Name]
                  )
                  VALUES (
                      'l_poole@library.com',
                      'l_poole',
                      'Y9PVd7',
                      'Lane',
                      'Poole'
                  );

INSERT INTO Admin (
                      admin_email,
                      Username,
                      Password,
                      [F. Name],
                      [L. Name]
                  )
                  VALUES (
                      'n_richards@library.com',
                      'n_richards',
                      'pd5sYu',
                      'Nicholas',
                      'Richards'
                  );

INSERT INTO Admin (
                      admin_email,
                      Username,
                      Password,
                      [F. Name],
                      [L. Name]
                  )
                  VALUES (
                      'c_whitehead@library.com',
                      'c_whitehead',
                      'aS4pQM',
                      'Carson',
                      'Whitehead'
                  );

INSERT INTO Admin (
                      admin_email,
                      Username,
                      Password,
                      [F. Name],
                      [L. Name]
                  )
                  VALUES (
                      's_barrett@library.com',
                      's_barrett',
                      'G6A4kS',
                      'Steven',
                      'Barrett'
                  );

INSERT INTO Admin (
                      admin_email,
                      Username,
                      Password,
                      [F. Name],
                      [L. Name]
                  )
                  VALUES (
                      'c_underwood@library.com',
                      'c_underwood',
                      'C4kL6J',
                      'Charlie',
                      'Underwood'
                  );

INSERT INTO Admin (
                      admin_email,
                      Username,
                      Password,
                      [F. Name],
                      [L. Name]
                  )
                  VALUES (
                      'i_mullins@library.com',
                      'i_mullins',
                      'mD6T6y',
                      'Irvin',
                      'Mullins'
                  );

INSERT INTO Admin (
                      admin_email,
                      Username,
                      Password,
                      [F. Name],
                      [L. Name]
                  )
                  VALUES (
                      't_rhodes@library.com',
                      't_rhodes',
                      'M3jhtd',
                      'Terry',
                      'Rhodes'
                  );

INSERT INTO Admin (
                      admin_email,
                      Username,
                      Password,
                      [F. Name],
                      [L. Name]
                  )
                  VALUES (
                      'a_carr@library.com',
                      'a_carr',
                      'yKYG86',
                      'Arlie',
                      'Carr'
                  );

INSERT INTO Admin (
                      admin_email,
                      Username,
                      Password,
                      [F. Name],
                      [L. Name]
                  )
                  VALUES (
                      't_brady@library.com',
                      't_brady',
                      'dwM5Zh',
                      'Todd',
                      'Brady'
                  );

INSERT INTO Admin (
                      admin_email,
                      Username,
                      Password,
                      [F. Name],
                      [L. Name]
                  )
                  VALUES (
                      'l_booth@library.com',
                      'l_booth',
                      'cjmK9N',
                      'Libby',
                      'Booth'
                  );

INSERT INTO Admin (
                      admin_email,
                      Username,
                      Password,
                      [F. Name],
                      [L. Name]
                  )
                  VALUES (
                      'w_garrett@library.com',
                      'w_garrett',
                      'Cvt8VG',
                      'Wes',
                      'Garrett'
                  );


-- Table: Album
CREATE TABLE Album (
    Item_No      INTEGER      PRIMARY KEY,
    Name         VARCHAR (25),
    Num_Songs    INT,
    Artist_Name  VARCHAR (40),
    Album_Length INTEGER,
    FOREIGN KEY (
        Item_No
    )
    REFERENCES Media (Item_No) 
);

INSERT INTO Album (
                      Item_No,
                      Name,
                      Num_Songs,
                      Artist_Name,
                      Album_Length
                  )
                  VALUES (
                      22,
                      'For Those About To Rock We Salute You',
                      10,
                      'AC/DC',
                      2394
                  );

INSERT INTO Album (
                      Item_No,
                      Name,
                      Num_Songs,
                      Artist_Name,
                      Album_Length
                  )
                  VALUES (
                      23,
                      'Let There Be Rock',
                      8,
                      'AC/DC',
                      2450
                  );

INSERT INTO Album (
                      Item_No,
                      Name,
                      Num_Songs,
                      Artist_Name,
                      Album_Length
                  )
                  VALUES (
                      24,
                      'Balls to the Wall',
                      1,
                      'Accept',
                      342
                  );

INSERT INTO Album (
                      Item_No,
                      Name,
                      Num_Songs,
                      Artist_Name,
                      Album_Length
                  )
                  VALUES (
                      25,
                      'Restless and Wild',
                      3,
                      'Accept',
                      857
                  );

INSERT INTO Album (
                      Item_No,
                      Name,
                      Num_Songs,
                      Artist_Name,
                      Album_Length
                  )
                  VALUES (
                      26,
                      'Big Ones',
                      15,
                      'Aerosmith',
                      4403
                  );

INSERT INTO Album (
                      Item_No,
                      Name,
                      Num_Songs,
                      Artist_Name,
                      Album_Length
                  )
                  VALUES (
                      27,
                      'Jagged Little Pill',
                      13,
                      'Alanis Morissette',
                      3444
                  );

INSERT INTO Album (
                      Item_No,
                      Name,
                      Num_Songs,
                      Artist_Name,
                      Album_Length
                  )
                  VALUES (
                      28,
                      'Facelift',
                      11,
                      'Alice In Chains',
                      2855
                  );

INSERT INTO Album (
                      Item_No,
                      Name,
                      Num_Songs,
                      Artist_Name,
                      Album_Length
                  )
                  VALUES (
                      29,
                      'Back to Black',
                      12,
                      'Amy Winehouse',
                      2538
                  );

INSERT INTO Album (
                      Item_No,
                      Name,
                      Num_Songs,
                      Artist_Name,
                      Album_Length
                  )
                  VALUES (
                      30,
                      'Plays Metallica By Four Cellos',
                      8,
                      'Apocalyptica',
                      2668
                  );

INSERT INTO Album (
                      Item_No,
                      Name,
                      Num_Songs,
                      Artist_Name,
                      Album_Length
                  )
                  VALUES (
                      31,
                      'Audioslave',
                      14,
                      'Audioslave',
                      3921
                  );

INSERT INTO Album (
                      Item_No,
                      Name,
                      Num_Songs,
                      Artist_Name,
                      Album_Length
                  )
                  VALUES (
                      32,
                      'Out Of Exile',
                      12,
                      'Audioslave',
                      3218
                  );

INSERT INTO Album (
                      Item_No,
                      Name,
                      Num_Songs,
                      Artist_Name,
                      Album_Length
                  )
                  VALUES (
                      33,
                      'Alcohol Fueled Brewtality Live! [Disc 1]',
                      13,
                      'Black Label Society',
                      4054
                  );

INSERT INTO Album (
                      Item_No,
                      Name,
                      Num_Songs,
                      Artist_Name,
                      Album_Length
                  )
                  VALUES (
                      34,
                      'Alcohol Fueled Brewtality Live! [Disc 2]',
                      5,
                      'Black Label Society',
                      1445
                  );

INSERT INTO Album (
                      Item_No,
                      Name,
                      Num_Songs,
                      Artist_Name,
                      Album_Length
                  )
                  VALUES (
                      35,
                      'Black Sabbath',
                      7,
                      'Black Sabbath',
                      2291
                  );

INSERT INTO Album (
                      Item_No,
                      Name,
                      Num_Songs,
                      Artist_Name,
                      Album_Length
                  )
                  VALUES (
                      36,
                      'Minha Historia',
                      26,
                      'Chico Buarque',
                      5961
                  );

INSERT INTO Album (
                      Item_No,
                      Name,
                      Num_Songs,
                      Artist_Name,
                      Album_Length
                  )
                  VALUES (
                      37,
                      'Cidade Negra - Hits',
                      10,
                      'Cidade Negra',
                      1101
                  );

INSERT INTO Album (
                      Item_No,
                      Name,
                      Num_Songs,
                      Artist_Name,
                      Album_Length
                  )
                  VALUES (
                      38,
                      'Deep Purple In Rock',
                      7,
                      'Deep Purple',
                      2533
                  );

INSERT INTO Album (
                      Item_No,
                      Name,
                      Num_Songs,
                      Artist_Name,
                      Album_Length
                  )
                  VALUES (
                      39,
                      'MK III The Final Concerts [Disc 1]',
                      7,
                      'Deep Purple',
                      3482
                  );

INSERT INTO Album (
                      Item_No,
                      Name,
                      Num_Songs,
                      Artist_Name,
                      Album_Length
                  )
                  VALUES (
                      40,
                      'Purpendicular',
                      12,
                      'Deep Purple',
                      3742
                  );

INSERT INTO Album (
                      Item_No,
                      Name,
                      Num_Songs,
                      Artist_Name,
                      Album_Length
                  )
                  VALUES (
                      41,
                      'Slaves And Masters',
                      9,
                      'Deep Purple',
                      2810
                  );

INSERT INTO Album (
                      Item_No,
                      Name,
                      Num_Songs,
                      Artist_Name,
                      Album_Length
                  )
                  VALUES (
                      42,
                      'Stormbringer',
                      8,
                      'Deep Purple',
                      1990
                  );

INSERT INTO Album (
                      Item_No,
                      Name,
                      Num_Songs,
                      Artist_Name,
                      Album_Length
                  )
                  VALUES (
                      43,
                      'The Battle Rages On',
                      10,
                      'Deep Purple',
                      3013
                  );

INSERT INTO Album (
                      Item_No,
                      Name,
                      Num_Songs,
                      Artist_Name,
                      Album_Length
                  )
                  VALUES (
                      44,
                      'The Final Concerts (Disc 2)',
                      4,
                      'Deep Purple',
                      3726
                  );

INSERT INTO Album (
                      Item_No,
                      Name,
                      Num_Songs,
                      Artist_Name,
                      Album_Length
                  )
                  VALUES (
                      45,
                      'Vault: Def Leppard''s Greatest Hits',
                      16,
                      'Def Leppard',
                      4394
                  );

INSERT INTO Album (
                      Item_No,
                      Name,
                      Num_Songs,
                      Artist_Name,
                      Album_Length
                  )
                  VALUES (
                      46,
                      'The Best of Ed Motta',
                      10,
                      'Ed Motta',
                      2429
                  );


-- Table: Artist
CREATE TABLE Artist (
    Artist_Name   VARCHAR (40) PRIMARY KEY,
    Active_Status BOOLEAN
);

INSERT INTO Artist (
                       Artist_Name,
                       Active_Status
                   )
                   VALUES (
                       'AC/DC',
                       'True'
                   );

INSERT INTO Artist (
                       Artist_Name,
                       Active_Status
                   )
                   VALUES (
                       'Accept',
                       'True'
                   );

INSERT INTO Artist (
                       Artist_Name,
                       Active_Status
                   )
                   VALUES (
                       'Aerosmith',
                       'True'
                   );

INSERT INTO Artist (
                       Artist_Name,
                       Active_Status
                   )
                   VALUES (
                       'Alanis Morissette',
                       'True'
                   );

INSERT INTO Artist (
                       Artist_Name,
                       Active_Status
                   )
                   VALUES (
                       'Alice In Chains',
                       'False'
                   );

INSERT INTO Artist (
                       Artist_Name,
                       Active_Status
                   )
                   VALUES (
                       'Amy Winehouse',
                       'True'
                   );

INSERT INTO Artist (
                       Artist_Name,
                       Active_Status
                   )
                   VALUES (
                       'Apocalyptica',
                       'False'
                   );

INSERT INTO Artist (
                       Artist_Name,
                       Active_Status
                   )
                   VALUES (
                       'Audioslave',
                       'False'
                   );

INSERT INTO Artist (
                       Artist_Name,
                       Active_Status
                   )
                   VALUES (
                       'Black Label Society',
                       'False'
                   );

INSERT INTO Artist (
                       Artist_Name,
                       Active_Status
                   )
                   VALUES (
                       'Black Sabbath',
                       'True'
                   );

INSERT INTO Artist (
                       Artist_Name,
                       Active_Status
                   )
                   VALUES (
                       'Chico Buarque',
                       'False'
                   );

INSERT INTO Artist (
                       Artist_Name,
                       Active_Status
                   )
                   VALUES (
                       'Cidade Negra',
                       'False'
                   );

INSERT INTO Artist (
                       Artist_Name,
                       Active_Status
                   )
                   VALUES (
                       'Deep Purple',
                       'False'
                   );

INSERT INTO Artist (
                       Artist_Name,
                       Active_Status
                   )
                   VALUES (
                       'Def Leppard',
                       'True'
                   );

INSERT INTO Artist (
                       Artist_Name,
                       Active_Status
                   )
                   VALUES (
                       'Ed Motta',
                       'False'
                   );

INSERT INTO Artist (
                       Artist_Name,
                       Active_Status
                   )
                   VALUES (
                       'Eric Clapton',
                       'False'
                   );

INSERT INTO Artist (
                       Artist_Name,
                       Active_Status
                   )
                   VALUES (
                       'Foo Fighters',
                       'False'
                   );

INSERT INTO Artist (
                       Artist_Name,
                       Active_Status
                   )
                   VALUES (
                       'Gilberto Gil',
                       'True'
                   );

INSERT INTO Artist (
                       Artist_Name,
                       Active_Status
                   )
                   VALUES (
                       'Green Day',
                       'False'
                   );

INSERT INTO Artist (
                       Artist_Name,
                       Active_Status
                   )
                   VALUES (
                       'House Of Pain',
                       'False'
                   );

INSERT INTO Artist (
                       Artist_Name,
                       Active_Status
                   )
                   VALUES (
                       'Bring Me the Drums',
                       'True'
                   );

INSERT INTO Artist (
                       Artist_Name,
                       Active_Status
                   )
                   VALUES (
                       'Ron Talent',
                       'False'
                   );

INSERT INTO Artist (
                       Artist_Name,
                       Active_Status
                   )
                   VALUES (
                       'Mild Division',
                       'True'
                   );

INSERT INTO Artist (
                       Artist_Name,
                       Active_Status
                   )
                   VALUES (
                       'The Daring Drums',
                       'False'
                   );

INSERT INTO Artist (
                       Artist_Name,
                       Active_Status
                   )
                   VALUES (
                       'Taking Back January',
                       'False'
                   );

INSERT INTO Artist (
                       Artist_Name,
                       Active_Status
                   )
                   VALUES (
                       'Daring Twins',
                       'True'
                   );

INSERT INTO Artist (
                       Artist_Name,
                       Active_Status
                   )
                   VALUES (
                       'Wild Daring Elephants',
                       'False'
                   );

INSERT INTO Artist (
                       Artist_Name,
                       Active_Status
                   )
                   VALUES (
                       'The Daring Hips',
                       'True'
                   );

INSERT INTO Artist (
                       Artist_Name,
                       Active_Status
                   )
                   VALUES (
                       'Ireland Thunder Hips',
                       'False'
                   );

INSERT INTO Artist (
                       Artist_Name,
                       Active_Status
                   )
                   VALUES (
                       'Fishing Rodback',
                       'False'
                   );

INSERT INTO Artist (
                       Artist_Name,
                       Active_Status
                   )
                   VALUES (
                       'Crazy Mice of Jail',
                       'False'
                   );

INSERT INTO Artist (
                       Artist_Name,
                       Active_Status
                   )
                   VALUES (
                       'Jail Panic',
                       'True'
                   );

INSERT INTO Artist (
                       Artist_Name,
                       Active_Status
                   )
                   VALUES (
                       'Crazy Tooth',
                       'False'
                   );

INSERT INTO Artist (
                       Artist_Name,
                       Active_Status
                   )
                   VALUES (
                       'The Love of Thoughts',
                       'False'
                   );

INSERT INTO Artist (
                       Artist_Name,
                       Active_Status
                   )
                   VALUES (
                       'Nigel and Sons',
                       'True'
                   );

INSERT INTO Artist (
                       Artist_Name,
                       Active_Status
                   )
                   VALUES (
                       'Pointless Division',
                       'False'
                   );

INSERT INTO Artist (
                       Artist_Name,
                       Active_Status
                   )
                   VALUES (
                       'Twilight Lovers',
                       'False'
                   );

INSERT INTO Artist (
                       Artist_Name,
                       Active_Status
                   )
                   VALUES (
                       'Kissing Gods',
                       'True'
                   );

INSERT INTO Artist (
                       Artist_Name,
                       Active_Status
                   )
                   VALUES (
                       'Tendust',
                       'False'
                   );

INSERT INTO Artist (
                       Artist_Name,
                       Active_Status
                   )
                   VALUES (
                       'Cool Tooth',
                       'True'
                   );


-- Table: Audiobook
CREATE TABLE Audiobook (
    Item_No  INTEGER      PRIMARY KEY,
    Title    VARCHAR (25),
    Length   INT,
    Chapters INT,
    FOREIGN KEY (
        Item_No
    )
    REFERENCES Media (Item_No) 
);

INSERT INTO Audiobook (
                          Item_No,
                          Title,
                          Length,
                          Chapters
                      )
                      VALUES (
                          47,
                          'Harry Potter 1',
                          500,
                          44
                      );

INSERT INTO Audiobook (
                          Item_No,
                          Title,
                          Length,
                          Chapters
                      )
                      VALUES (
                          48,
                          'Harry Potter 2',
                          505,
                          23
                      );

INSERT INTO Audiobook (
                          Item_No,
                          Title,
                          Length,
                          Chapters
                      )
                      VALUES (
                          49,
                          'Harry Potter 3',
                          506,
                          21
                      );

INSERT INTO Audiobook (
                          Item_No,
                          Title,
                          Length,
                          Chapters
                      )
                      VALUES (
                          50,
                          'Harry Potter 4',
                          508,
                          20
                      );

INSERT INTO Audiobook (
                          Item_No,
                          Title,
                          Length,
                          Chapters
                      )
                      VALUES (
                          51,
                          'Harry Potter 5',
                          900,
                          25
                      );

INSERT INTO Audiobook (
                          Item_No,
                          Title,
                          Length,
                          Chapters
                      )
                      VALUES (
                          52,
                          'Harry Potter 6',
                          500,
                          28
                      );

INSERT INTO Audiobook (
                          Item_No,
                          Title,
                          Length,
                          Chapters
                      )
                      VALUES (
                          53,
                          'Harry Potter 7',
                          500,
                          40
                      );

INSERT INTO Audiobook (
                          Item_No,
                          Title,
                          Length,
                          Chapters
                      )
                      VALUES (
                          54,
                          'Moby Dick 1',
                          615,
                          29
                      );

INSERT INTO Audiobook (
                          Item_No,
                          Title,
                          Length,
                          Chapters
                      )
                      VALUES (
                          55,
                          'Moby Dick 2',
                          628,
                          29
                      );

INSERT INTO Audiobook (
                          Item_No,
                          Title,
                          Length,
                          Chapters
                      )
                      VALUES (
                          56,
                          'Moby Dick 3',
                          642,
                          29
                      );

INSERT INTO Audiobook (
                          Item_No,
                          Title,
                          Length,
                          Chapters
                      )
                      VALUES (
                          57,
                          'Moby Dick 4',
                          656,
                          29
                      );

INSERT INTO Audiobook (
                          Item_No,
                          Title,
                          Length,
                          Chapters
                      )
                      VALUES (
                          58,
                          'Moby Dick 5',
                          670,
                          29
                      );

INSERT INTO Audiobook (
                          Item_No,
                          Title,
                          Length,
                          Chapters
                      )
                      VALUES (
                          59,
                          'Moby Dick 6',
                          683,
                          29
                      );

INSERT INTO Audiobook (
                          Item_No,
                          Title,
                          Length,
                          Chapters
                      )
                      VALUES (
                          60,
                          'Moby Dick 7',
                          697,
                          29
                      );

INSERT INTO Audiobook (
                          Item_No,
                          Title,
                          Length,
                          Chapters
                      )
                      VALUES (
                          61,
                          'Moby Dick 8',
                          711,
                          30
                      );

INSERT INTO Audiobook (
                          Item_No,
                          Title,
                          Length,
                          Chapters
                      )
                      VALUES (
                          62,
                          'Moby Dick 9',
                          724,
                          30
                      );

INSERT INTO Audiobook (
                          Item_No,
                          Title,
                          Length,
                          Chapters
                      )
                      VALUES (
                          63,
                          'Moby Dick 10',
                          738,
                          30
                      );

INSERT INTO Audiobook (
                          Item_No,
                          Title,
                          Length,
                          Chapters
                      )
                      VALUES (
                          64,
                          'Moby Dick 11',
                          752,
                          30
                      );

INSERT INTO Audiobook (
                          Item_No,
                          Title,
                          Length,
                          Chapters
                      )
                      VALUES (
                          65,
                          'Moby Dick 12',
                          766,
                          30
                      );

INSERT INTO Audiobook (
                          Item_No,
                          Title,
                          Length,
                          Chapters
                      )
                      VALUES (
                          66,
                          'Great John''s',
                          10,
                          1000
                      );


-- Table: Author
CREATE TABLE Author (
    Name  VARCHAR (40) PRIMARY KEY,
    Genre VARCHAR (15) 
);

INSERT INTO Author (
                       Name,
                       Genre
                   )
                   VALUES (
                       'JK Rowling',
                       'Fiction'
                   );

INSERT INTO Author (
                       Name,
                       Genre
                   )
                   VALUES (
                       'Habby',
                       'Fiction'
                   );

INSERT INTO Author (
                       Name,
                       Genre
                   )
                   VALUES (
                       'Bobby',
                       'Science'
                   );

INSERT INTO Author (
                       Name,
                       Genre
                   )
                   VALUES (
                       'Napure',
                       'Nature'
                   );

INSERT INTO Author (
                       Name,
                       Genre
                   )
                   VALUES (
                       'Pooler',
                       'Pools'
                   );

INSERT INTO Author (
                       Name,
                       Genre
                   )
                   VALUES (
                       'Toddler',
                       'Children'
                   );

INSERT INTO Author (
                       Name,
                       Genre
                   )
                   VALUES (
                       'Ak Tooth',
                       'Romance'
                   );

INSERT INTO Author (
                       Name,
                       Genre
                   )
                   VALUES (
                       'Moogle',
                       'Keyboard'
                   );

INSERT INTO Author (
                       Name,
                       Genre
                   )
                   VALUES (
                       'Johnlo',
                       'Religion'
                   );

INSERT INTO Author (
                       Name,
                       Genre
                   )
                   VALUES (
                       'Look',
                       'Comedy'
                   );

INSERT INTO Author (
                       Name,
                       Genre
                   )
                   VALUES (
                       'Luke',
                       'Fiction'
                   );

INSERT INTO Author (
                       Name,
                       Genre
                   )
                   VALUES (
                       'John',
                       'Fiction'
                   );

INSERT INTO Author (
                       Name,
                       Genre
                   )
                   VALUES (
                       'Mathew',
                       'Pools'
                   );

INSERT INTO Author (
                       Name,
                       Genre
                   )
                   VALUES (
                       'Mark',
                       'Children'
                   );

INSERT INTO Author (
                       Name,
                       Genre
                   )
                   VALUES (
                       'Peter',
                       'Romance'
                   );

INSERT INTO Author (
                       Name,
                       Genre
                   )
                   VALUES (
                       'Simon',
                       'Science'
                   );

INSERT INTO Author (
                       Name,
                       Genre
                   )
                   VALUES (
                       'Paul',
                       'Fiction'
                   );

INSERT INTO Author (
                       Name,
                       Genre
                   )
                   VALUES (
                       'Mary',
                       'Fiction'
                   );

INSERT INTO Author (
                       Name,
                       Genre
                   )
                   VALUES (
                       'Mohammad',
                       'Religion'
                   );

INSERT INTO Author (
                       Name,
                       Genre
                   )
                   VALUES (
                       'Ghandi',
                       'Nuclear'
                   );


-- Table: Band
CREATE TABLE Band (
    Artist_Name VARCHAR (40) PRIMARY KEY,
    Date_Formed DATE,
    FOREIGN KEY (
        Artist_Name
    )
    REFERENCES Artist (Artist_Name) 
);

INSERT INTO Band (
                     Artist_Name,
                     Date_Formed
                 )
                 VALUES (
                     'AC/DC',
                     1973
                 );

INSERT INTO Band (
                     Artist_Name,
                     Date_Formed
                 )
                 VALUES (
                     'Accept',
                     1968
                 );

INSERT INTO Band (
                     Artist_Name,
                     Date_Formed
                 )
                 VALUES (
                     'Aerosmith',
                     1970
                 );

INSERT INTO Band (
                     Artist_Name,
                     Date_Formed
                 )
                 VALUES (
                     'Alice In Chains',
                     1987
                 );

INSERT INTO Band (
                     Artist_Name,
                     Date_Formed
                 )
                 VALUES (
                     NULL,
                     NULL
                 );

INSERT INTO Band (
                     Artist_Name,
                     Date_Formed
                 )
                 VALUES (
                     'Apocalyptica',
                     1993
                 );

INSERT INTO Band (
                     Artist_Name,
                     Date_Formed
                 )
                 VALUES (
                     'Audioslave',
                     2001
                 );

INSERT INTO Band (
                     Artist_Name,
                     Date_Formed
                 )
                 VALUES (
                     'Black Label Society',
                     1998
                 );

INSERT INTO Band (
                     Artist_Name,
                     Date_Formed
                 )
                 VALUES (
                     'Black Sabbath',
                     1968
                 );

INSERT INTO Band (
                     Artist_Name,
                     Date_Formed
                 )
                 VALUES (
                     NULL,
                     NULL
                 );

INSERT INTO Band (
                     Artist_Name,
                     Date_Formed
                 )
                 VALUES (
                     'Cidade Negra',
                     1986
                 );

INSERT INTO Band (
                     Artist_Name,
                     Date_Formed
                 )
                 VALUES (
                     'Deep Purple',
                     1968
                 );

INSERT INTO Band (
                     Artist_Name,
                     Date_Formed
                 )
                 VALUES (
                     'Def Leppard',
                     1966
                 );

INSERT INTO Band (
                     Artist_Name,
                     Date_Formed
                 )
                 VALUES (
                     NULL,
                     NULL
                 );

INSERT INTO Band (
                     Artist_Name,
                     Date_Formed
                 )
                 VALUES (
                     NULL,
                     NULL
                 );

INSERT INTO Band (
                     Artist_Name,
                     Date_Formed
                 )
                 VALUES (
                     'Foo Fighters',
                     1968
                 );

INSERT INTO Band (
                     Artist_Name,
                     Date_Formed
                 )
                 VALUES (
                     NULL,
                     NULL
                 );

INSERT INTO Band (
                     Artist_Name,
                     Date_Formed
                 )
                 VALUES (
                     'Green Day',
                     1987
                 );

INSERT INTO Band (
                     Artist_Name,
                     Date_Formed
                 )
                 VALUES (
                     'House Of Pain',
                     1988
                 );


-- Table: Can_edit
CREATE TABLE Can_edit (
    admin_email VARCHAR (50),
    Lib_card_No VARCHAR (9),
    PRIMARY KEY (
        admin_email,
        Lib_card_No
    ),
    FOREIGN KEY (
        admin_email
    )
    REFERENCES Admin (admin_email),
    FOREIGN KEY (
        Lib_card_No
    )
    REFERENCES Customer (lib_card_No) 
);

INSERT INTO Can_edit (
                         admin_email,
                         Lib_card_No
                     )
                     VALUES (
                         'a_hawkins@library.com',
                         '1'
                     );

INSERT INTO Can_edit (
                         admin_email,
                         Lib_card_No
                     )
                     VALUES (
                         'a_alexander@library.com',
                         '2'
                     );

INSERT INTO Can_edit (
                         admin_email,
                         Lib_card_No
                     )
                     VALUES (
                         'j_kelly@library.com',
                         '3'
                     );

INSERT INTO Can_edit (
                         admin_email,
                         Lib_card_No
                     )
                     VALUES (
                         'b_chapman@library.com',
                         '4'
                     );

INSERT INTO Can_edit (
                         admin_email,
                         Lib_card_No
                     )
                     VALUES (
                         'b_petersen@library.com',
                         '5'
                     );

INSERT INTO Can_edit (
                         admin_email,
                         Lib_card_No
                     )
                     VALUES (
                         's_rodgers@library.com',
                         '6'
                     );

INSERT INTO Can_edit (
                         admin_email,
                         Lib_card_No
                     )
                     VALUES (
                         'h_proctor@library.com',
                         '7'
                     );

INSERT INTO Can_edit (
                         admin_email,
                         Lib_card_No
                     )
                     VALUES (
                         'r_brock@library.com',
                         '8'
                     );

INSERT INTO Can_edit (
                         admin_email,
                         Lib_card_No
                     )
                     VALUES (
                         'b_hale@library.com',
                         '9'
                     );

INSERT INTO Can_edit (
                         admin_email,
                         Lib_card_No
                     )
                     VALUES (
                         'l_poole@library.com',
                         '10'
                     );

INSERT INTO Can_edit (
                         admin_email,
                         Lib_card_No
                     )
                     VALUES (
                         'n_richards@library.com',
                         '11'
                     );

INSERT INTO Can_edit (
                         admin_email,
                         Lib_card_No
                     )
                     VALUES (
                         'c_whitehead@library.com',
                         '12'
                     );

INSERT INTO Can_edit (
                         admin_email,
                         Lib_card_No
                     )
                     VALUES (
                         's_barrett@library.com',
                         '13'
                     );

INSERT INTO Can_edit (
                         admin_email,
                         Lib_card_No
                     )
                     VALUES (
                         'c_underwood@library.com',
                         '14'
                     );

INSERT INTO Can_edit (
                         admin_email,
                         Lib_card_No
                     )
                     VALUES (
                         'i_mullins@library.com',
                         '15'
                     );

INSERT INTO Can_edit (
                         admin_email,
                         Lib_card_No
                     )
                     VALUES (
                         't_rhodes@library.com',
                         '16'
                     );

INSERT INTO Can_edit (
                         admin_email,
                         Lib_card_No
                     )
                     VALUES (
                         'a_carr@library.com',
                         '17'
                     );

INSERT INTO Can_edit (
                         admin_email,
                         Lib_card_No
                     )
                     VALUES (
                         't_brady@library.com',
                         '18'
                     );

INSERT INTO Can_edit (
                         admin_email,
                         Lib_card_No
                     )
                     VALUES (
                         'l_booth@library.com',
                         '19'
                     );

INSERT INTO Can_edit (
                         admin_email,
                         Lib_card_No
                     )
                     VALUES (
                         'w_garrett@library.com',
                         '20'
                     );


-- Table: Can_edit_media
CREATE TABLE Can_edit_media (
    admin_email VARCHAR (50),
    Item_No     INTEGER,
    PRIMARY KEY (
        admin_email,
        Item_No
    ),
    FOREIGN KEY (
        admin_email
    )
    REFERENCES Admin (admin_email),
    FOREIGN KEY (
        Item_No
    )
    REFERENCES Media (Item_No) 
);

INSERT INTO Can_edit_media (
                               admin_email,
                               Item_No
                           )
                           VALUES (
                               'a_hawkins@library.com',
                               1
                           );

INSERT INTO Can_edit_media (
                               admin_email,
                               Item_No
                           )
                           VALUES (
                               'a_alexander@library.com',
                               2
                           );

INSERT INTO Can_edit_media (
                               admin_email,
                               Item_No
                           )
                           VALUES (
                               'j_kelly@library.com',
                               3
                           );

INSERT INTO Can_edit_media (
                               admin_email,
                               Item_No
                           )
                           VALUES (
                               'b_chapman@library.com',
                               4
                           );

INSERT INTO Can_edit_media (
                               admin_email,
                               Item_No
                           )
                           VALUES (
                               'b_petersen@library.com',
                               5
                           );

INSERT INTO Can_edit_media (
                               admin_email,
                               Item_No
                           )
                           VALUES (
                               's_rodgers@library.com',
                               6
                           );

INSERT INTO Can_edit_media (
                               admin_email,
                               Item_No
                           )
                           VALUES (
                               'h_proctor@library.com',
                               7
                           );

INSERT INTO Can_edit_media (
                               admin_email,
                               Item_No
                           )
                           VALUES (
                               'r_brock@library.com',
                               8
                           );

INSERT INTO Can_edit_media (
                               admin_email,
                               Item_No
                           )
                           VALUES (
                               'b_hale@library.com',
                               9
                           );

INSERT INTO Can_edit_media (
                               admin_email,
                               Item_No
                           )
                           VALUES (
                               'l_poole@library.com',
                               10
                           );

INSERT INTO Can_edit_media (
                               admin_email,
                               Item_No
                           )
                           VALUES (
                               'n_richards@library.com',
                               11
                           );

INSERT INTO Can_edit_media (
                               admin_email,
                               Item_No
                           )
                           VALUES (
                               'c_whitehead@library.com',
                               12
                           );

INSERT INTO Can_edit_media (
                               admin_email,
                               Item_No
                           )
                           VALUES (
                               's_barrett@library.com',
                               13
                           );

INSERT INTO Can_edit_media (
                               admin_email,
                               Item_No
                           )
                           VALUES (
                               'c_underwood@library.com',
                               14
                           );

INSERT INTO Can_edit_media (
                               admin_email,
                               Item_No
                           )
                           VALUES (
                               'i_mullins@library.com',
                               15
                           );

INSERT INTO Can_edit_media (
                               admin_email,
                               Item_No
                           )
                           VALUES (
                               't_rhodes@library.com',
                               16
                           );

INSERT INTO Can_edit_media (
                               admin_email,
                               Item_No
                           )
                           VALUES (
                               'a_carr@library.com',
                               17
                           );

INSERT INTO Can_edit_media (
                               admin_email,
                               Item_No
                           )
                           VALUES (
                               't_brady@library.com',
                               18
                           );

INSERT INTO Can_edit_media (
                               admin_email,
                               Item_No
                           )
                           VALUES (
                               'l_booth@library.com',
                               19
                           );

INSERT INTO Can_edit_media (
                               admin_email,
                               Item_No
                           )
                           VALUES (
                               'w_garrett@library.com',
                               20
                           );


-- Table: Checks_out
CREATE TABLE Checks_out (
    lib_card_No   VARCHAR (9, 9),
    Item_No       INT,
    Checkout_date DATE (8, 8),
    FOREIGN KEY (
        lib_card_No
    )
    REFERENCES Customer (lib_card_No),
    FOREIGN KEY (
        Item_No
    )
    REFERENCES Media (Item_No),
    PRIMARY KEY (
        lib_card_No,
        Item_No
    )
);

INSERT INTO Checks_out (
                           lib_card_No,
                           Item_No,
                           Checkout_date
                       )
                       VALUES (
                           '1',
                           26,
                           '01/23/2022'
                       );

INSERT INTO Checks_out (
                           lib_card_No,
                           Item_No,
                           Checkout_date
                       )
                       VALUES (
                           '2',
                           29,
                           '02/12/2022'
                       );

INSERT INTO Checks_out (
                           lib_card_No,
                           Item_No,
                           Checkout_date
                       )
                       VALUES (
                           '3',
                           46,
                           '02/25/2022'
                       );

INSERT INTO Checks_out (
                           lib_card_No,
                           Item_No,
                           Checkout_date
                       )
                       VALUES (
                           '4',
                           46,
                           '03/02/2022'
                       );

INSERT INTO Checks_out (
                           lib_card_No,
                           Item_No,
                           Checkout_date
                       )
                       VALUES (
                           '5',
                           12,
                           '04/12/2022'
                       );

INSERT INTO Checks_out (
                           lib_card_No,
                           Item_No,
                           Checkout_date
                       )
                       VALUES (
                           '6',
                           57,
                           '01/23/2022'
                       );

INSERT INTO Checks_out (
                           lib_card_No,
                           Item_No,
                           Checkout_date
                       )
                       VALUES (
                           '7',
                           66,
                           '01/11/2022'
                       );

INSERT INTO Checks_out (
                           lib_card_No,
                           Item_No,
                           Checkout_date
                       )
                       VALUES (
                           '8',
                           61,
                           '03/20/2022'
                       );

INSERT INTO Checks_out (
                           lib_card_No,
                           Item_No,
                           Checkout_date
                       )
                       VALUES (
                           '9',
                           60,
                           '03/15/2022'
                       );

INSERT INTO Checks_out (
                           lib_card_No,
                           Item_No,
                           Checkout_date
                       )
                       VALUES (
                           '10',
                           53,
                           '02/01/2022'
                       );

INSERT INTO Checks_out (
                           lib_card_No,
                           Item_No,
                           Checkout_date
                       )
                       VALUES (
                           '11',
                           30,
                           '01/02/2022'
                       );

INSERT INTO Checks_out (
                           lib_card_No,
                           Item_No,
                           Checkout_date
                       )
                       VALUES (
                           '12',
                           25,
                           '03/06/2022'
                       );

INSERT INTO Checks_out (
                           lib_card_No,
                           Item_No,
                           Checkout_date
                       )
                       VALUES (
                           '13',
                           29,
                           '04/20/2022'
                       );

INSERT INTO Checks_out (
                           lib_card_No,
                           Item_No,
                           Checkout_date
                       )
                       VALUES (
                           '14',
                           65,
                           '04/01/2022'
                       );

INSERT INTO Checks_out (
                           lib_card_No,
                           Item_No,
                           Checkout_date
                       )
                       VALUES (
                           '15',
                           42,
                           '03/02/2022'
                       );

INSERT INTO Checks_out (
                           lib_card_No,
                           Item_No,
                           Checkout_date
                       )
                       VALUES (
                           '16',
                           2,
                           '06/01/2022'
                       );

INSERT INTO Checks_out (
                           lib_card_No,
                           Item_No,
                           Checkout_date
                       )
                       VALUES (
                           '17',
                           43,
                           '04/05/2022'
                       );

INSERT INTO Checks_out (
                           lib_card_No,
                           Item_No,
                           Checkout_date
                       )
                       VALUES (
                           '18',
                           11,
                           '01/16/2022'
                       );

INSERT INTO Checks_out (
                           lib_card_No,
                           Item_No,
                           Checkout_date
                       )
                       VALUES (
                           '19',
                           32,
                           '01/29/2022'
                       );

INSERT INTO Checks_out (
                           lib_card_No,
                           Item_No,
                           Checkout_date
                       )
                       VALUES (
                           '20',
                           37,
                           '02/29/2022'
                       );

INSERT INTO Checks_out (
                           lib_card_No,
                           Item_No,
                           Checkout_date
                       )
                       VALUES (
                           '5',
                           1,
                           '04/12/2022'
                       );

INSERT INTO Checks_out (
                           lib_card_No,
                           Item_No,
                           Checkout_date
                       )
                       VALUES (
                           '5',
                           66,
                           '04/12/2022'
                       );

INSERT INTO Checks_out (
                           lib_card_No,
                           Item_No,
                           Checkout_date
                       )
                       VALUES (
                           '5',
                           64,
                           '4/12/2022'
                       );

INSERT INTO Checks_out (
                           lib_card_No,
                           Item_No,
                           Checkout_date
                       )
                       VALUES (
                           '5',
                           7,
                           '04/12/2022'
                       );

INSERT INTO Checks_out (
                           lib_card_No,
                           Item_No,
                           Checkout_date
                       )
                       VALUES (
                           '21',
                           2,
                           '03/23/2022'
                       );

INSERT INTO Checks_out (
                           lib_card_No,
                           Item_No,
                           Checkout_date
                       )
                       VALUES (
                           '22',
                           2,
                           '04/01/2022'
                       );

INSERT INTO Checks_out (
                           lib_card_No,
                           Item_No,
                           Checkout_date
                       )
                       VALUES (
                           '23',
                           14,
                           '03/20/2022'
                       );

INSERT INTO Checks_out (
                           lib_card_No,
                           Item_No,
                           Checkout_date
                       )
                       VALUES (
                           '24',
                           14,
                           '02/13/2022'
                       );

INSERT INTO Checks_out (
                           lib_card_No,
                           Item_No,
                           Checkout_date
                       )
                       VALUES (
                           '1',
                           23,
                           '01/23/2022'
                       );

INSERT INTO Checks_out (
                           lib_card_No,
                           Item_No,
                           Checkout_date
                       )
                       VALUES (
                           '1',
                           38,
                           '01/23/2022'
                       );

INSERT INTO Checks_out (
                           lib_card_No,
                           Item_No,
                           Checkout_date
                       )
                       VALUES (
                           '1',
                           47,
                           '01/23/2022'
                       );


-- Table: Cust_Payment
CREATE TABLE Cust_Payment (
    lib_card_No CHAR (9, 9)      UNIQUE
                                 NOT NULL,
    CC_No       VARCHAR (16, 16) NOT NULL,
    Type        STRING (8, 8)    NOT NULL,
    Expir       VARCHAR (4, 4)   NOT NULL,
    "",
    PRIMARY KEY (
        lib_card_No,
        CC_No
    ),
    FOREIGN KEY (
        lib_card_No
    )
    REFERENCES Customer (lib_card_No) 
);

INSERT INTO Cust_Payment (
                             lib_card_No,
                             CC_No,
                             Type,
                             Expir,
                             ""
                         )
                         VALUES (
                             '1',
                             '3496630213486490',
                             'Credit',
                             '10/22',
                             NULL
                         );

INSERT INTO Cust_Payment (
                             lib_card_No,
                             CC_No,
                             Type,
                             Expir,
                             ""
                         )
                         VALUES (
                             '2',
                             '3569743420152460',
                             'Credit',
                             '11/22',
                             NULL
                         );

INSERT INTO Cust_Payment (
                             lib_card_No,
                             CC_No,
                             Type,
                             Expir,
                             ""
                         )
                         VALUES (
                             '3',
                             '5602254881512300',
                             'Credit',
                             '12/22',
                             NULL
                         );

INSERT INTO Cust_Payment (
                             lib_card_No,
                             CC_No,
                             Type,
                             Expir,
                             ""
                         )
                         VALUES (
                             '4',
                             '3532335552675350',
                             'Credit',
                             '01/23',
                             NULL
                         );

INSERT INTO Cust_Payment (
                             lib_card_No,
                             CC_No,
                             Type,
                             Expir,
                             ""
                         )
                         VALUES (
                             '5',
                             '6706436117364630',
                             'Credit',
                             '02/23',
                             NULL
                         );

INSERT INTO Cust_Payment (
                             lib_card_No,
                             CC_No,
                             Type,
                             Expir,
                             ""
                         )
                         VALUES (
                             '6',
                             '3547088614053770',
                             'Credit',
                             '03/23',
                             NULL
                         );

INSERT INTO Cust_Payment (
                             lib_card_No,
                             CC_No,
                             Type,
                             Expir,
                             ""
                         )
                         VALUES (
                             '7',
                             '4917904256328600',
                             'Credit',
                             '04/23',
                             NULL
                         );

INSERT INTO Cust_Payment (
                             lib_card_No,
                             CC_No,
                             Type,
                             Expir,
                             ""
                         )
                         VALUES (
                             '8',
                             '3565731660391390',
                             'Credit',
                             '04/23',
                             NULL
                         );

INSERT INTO Cust_Payment (
                             lib_card_No,
                             CC_No,
                             Type,
                             Expir,
                             ""
                         )
                         VALUES (
                             '9',
                             '3568731090041530',
                             'Credit',
                             '05/23',
                             NULL
                         );

INSERT INTO Cust_Payment (
                             lib_card_No,
                             CC_No,
                             Type,
                             Expir,
                             ""
                         )
                         VALUES (
                             '10',
                             '4903040495387910',
                             'Credit',
                             '05/23',
                             NULL
                         );

INSERT INTO Cust_Payment (
                             lib_card_No,
                             CC_No,
                             Type,
                             Expir,
                             ""
                         )
                         VALUES (
                             '11',
                             '3529747351737320',
                             'Credit',
                             '08/22',
                             NULL
                         );

INSERT INTO Cust_Payment (
                             lib_card_No,
                             CC_No,
                             Type,
                             Expir,
                             ""
                         )
                         VALUES (
                             '12',
                             '4844306239438090',
                             'Credit',
                             '09/24',
                             NULL
                         );

INSERT INTO Cust_Payment (
                             lib_card_No,
                             CC_No,
                             Type,
                             Expir,
                             ""
                         )
                         VALUES (
                             '13',
                             '3379419771031900',
                             'Credit',
                             '02/26',
                             NULL
                         );

INSERT INTO Cust_Payment (
                             lib_card_No,
                             CC_No,
                             Type,
                             Expir,
                             ""
                         )
                         VALUES (
                             '14',
                             '3574027616245420',
                             'Credit',
                             '02/26',
                             NULL
                         );

INSERT INTO Cust_Payment (
                             lib_card_No,
                             CC_No,
                             Type,
                             Expir,
                             ""
                         )
                         VALUES (
                             '15',
                             '3551957518220320',
                             'Credit',
                             '12/23',
                             NULL
                         );

INSERT INTO Cust_Payment (
                             lib_card_No,
                             CC_No,
                             Type,
                             Expir,
                             ""
                         )
                         VALUES (
                             '16',
                             '4175006645945730',
                             'Credit',
                             '10/23',
                             NULL
                         );

INSERT INTO Cust_Payment (
                             lib_card_No,
                             CC_No,
                             Type,
                             Expir,
                             ""
                         )
                         VALUES (
                             '17',
                             '5100172579804630',
                             'Credit',
                             '11/22',
                             NULL
                         );

INSERT INTO Cust_Payment (
                             lib_card_No,
                             CC_No,
                             Type,
                             Expir,
                             ""
                         )
                         VALUES (
                             '18',
                             '3589078243679580',
                             'Credit',
                             '11/23',
                             NULL
                         );

INSERT INTO Cust_Payment (
                             lib_card_No,
                             CC_No,
                             Type,
                             Expir,
                             ""
                         )
                         VALUES (
                             '19',
                             '3578936374667110',
                             'Credit',
                             '10/24',
                             NULL
                         );

INSERT INTO Cust_Payment (
                             lib_card_No,
                             CC_No,
                             Type,
                             Expir,
                             ""
                         )
                         VALUES (
                             '20',
                             '3550360456503350',
                             'Credit',
                             '06/24',
                             NULL
                         );

INSERT INTO Cust_Payment (
                             lib_card_No,
                             CC_No,
                             Type,
                             Expir,
                             ""
                         )
                         VALUES (
                             '21',
                             '5100145760859000',
                             'Credit',
                             '06/24',
                             NULL
                         );

INSERT INTO Cust_Payment (
                             lib_card_No,
                             CC_No,
                             Type,
                             Expir,
                             ""
                         )
                         VALUES (
                             '22',
                             '4505589350438160',
                             'Credit',
                             '03/24',
                             NULL
                         );


-- Table: Customer
CREATE TABLE Customer (
    lib_card_No CHAR (9)         PRIMARY KEY
                                 NOT NULL
                                 UNIQUE,
    Email       VARCHAR (40, 40) NOT NULL,
    Address     VARCHAR (40, 40),
    F_Name      VARCHAR (25),
    L_Name      VARCHAR (30) 
);

INSERT INTO Customer (
                         lib_card_No,
                         Email,
                         Address,
                         F_Name,
                         L_Name
                     )
                     VALUES (
                         '1',
                         'wsorensen0@topsy.com',
                         '90 1st Plaza',
                         'Broderic',
                         'Clavey'
                     );

INSERT INTO Customer (
                         lib_card_No,
                         Email,
                         Address,
                         F_Name,
                         L_Name
                     )
                     VALUES (
                         '2',
                         'pblazejewski1@wikipedia.org',
                         '66270 Jackson Junction',
                         'Barbey',
                         'Le'
                     );

INSERT INTO Customer (
                         lib_card_No,
                         Email,
                         Address,
                         F_Name,
                         L_Name
                     )
                     VALUES (
                         '3',
                         'apeter2@nymag.com',
                         '1 Menomonie Crossing',
                         'Hulda',
                         'Selby'
                     );

INSERT INTO Customer (
                         lib_card_No,
                         Email,
                         Address,
                         F_Name,
                         L_Name
                     )
                     VALUES (
                         '4',
                         'svanin3@bloomberg.com',
                         '5 Myrtle Pass',
                         'Maximilien',
                         'Scandwright'
                     );

INSERT INTO Customer (
                         lib_card_No,
                         Email,
                         Address,
                         F_Name,
                         L_Name
                     )
                     VALUES (
                         '5',
                         'rsabate4@qq.com',
                         '5 Atwood Terrace',
                         'Drugi',
                         'Beccles'
                     );

INSERT INTO Customer (
                         lib_card_No,
                         Email,
                         Address,
                         F_Name,
                         L_Name
                     )
                     VALUES (
                         '6',
                         'kbrummell5@wikispaces.com',
                         '6601 Service Way',
                         'Lilias',
                         'Labone'
                     );

INSERT INTO Customer (
                         lib_card_No,
                         Email,
                         Address,
                         F_Name,
                         L_Name
                     )
                     VALUES (
                         '7',
                         'dhousley6@dailymail.co.uk',
                         '11001 Corscot Way',
                         'Enrichetta',
                         'Scammell'
                     );

INSERT INTO Customer (
                         lib_card_No,
                         Email,
                         Address,
                         F_Name,
                         L_Name
                     )
                     VALUES (
                         '8',
                         'lmerrikin7@squarespace.com',
                         '403 Glendale Plaza',
                         'Lara',
                         'Rowberry'
                     );

INSERT INTO Customer (
                         lib_card_No,
                         Email,
                         Address,
                         F_Name,
                         L_Name
                     )
                     VALUES (
                         '9',
                         'nwooddisse8@illinois.edu',
                         '6803 Eastwood Park',
                         'Val',
                         'Niccolls'
                     );

INSERT INTO Customer (
                         lib_card_No,
                         Email,
                         Address,
                         F_Name,
                         L_Name
                     )
                     VALUES (
                         '10',
                         'tsturge9@freewebs.com',
                         '2578 Atwood Alley',
                         'Agnes',
                         'Matignon'
                     );

INSERT INTO Customer (
                         lib_card_No,
                         Email,
                         Address,
                         F_Name,
                         L_Name
                     )
                     VALUES (
                         '11',
                         'odonglesa@google.it',
                         '739 Warbler Alley',
                         'Orelie',
                         'Tritten'
                     );

INSERT INTO Customer (
                         lib_card_No,
                         Email,
                         Address,
                         F_Name,
                         L_Name
                     )
                     VALUES (
                         '12',
                         'dbirrellb@elegantthemes.com',
                         '80511 Melrose Park',
                         'Alister',
                         'McIlmorow'
                     );

INSERT INTO Customer (
                         lib_card_No,
                         Email,
                         Address,
                         F_Name,
                         L_Name
                     )
                     VALUES (
                         '13',
                         'astrobandc@google.com',
                         '9094 Schmedeman Court',
                         'Morgen',
                         'Praill'
                     );

INSERT INTO Customer (
                         lib_card_No,
                         Email,
                         Address,
                         F_Name,
                         L_Name
                     )
                     VALUES (
                         '14',
                         'bhawtond@yelp.com',
                         '9 Oriole Street',
                         'Trisha',
                         'Meese'
                     );

INSERT INTO Customer (
                         lib_card_No,
                         Email,
                         Address,
                         F_Name,
                         L_Name
                     )
                     VALUES (
                         '15',
                         'dchaplyne@cargocollective.com',
                         '5115 Forest Alley',
                         'Marty',
                         'Smallthwaite'
                     );

INSERT INTO Customer (
                         lib_card_No,
                         Email,
                         Address,
                         F_Name,
                         L_Name
                     )
                     VALUES (
                         '16',
                         'lchampleyf@go.com',
                         '2 Charing Cross Parkway',
                         'Kalila',
                         'Edmondson'
                     );

INSERT INTO Customer (
                         lib_card_No,
                         Email,
                         Address,
                         F_Name,
                         L_Name
                     )
                     VALUES (
                         '17',
                         'lwilmang@eventbrite.com',
                         '093 Waubesa Plaza',
                         'Zacharie',
                         'Campanelle'
                     );

INSERT INTO Customer (
                         lib_card_No,
                         Email,
                         Address,
                         F_Name,
                         L_Name
                     )
                     VALUES (
                         '18',
                         'dnutteyh@cdc.gov',
                         '50 Weeping Birch Terrace',
                         'Roger',
                         'Hickisson'
                     );

INSERT INTO Customer (
                         lib_card_No,
                         Email,
                         Address,
                         F_Name,
                         L_Name
                     )
                     VALUES (
                         '19',
                         'gkarlqvisti@last.fm',
                         '0 Cambridge Center',
                         'Will',
                         'Tuvey'
                     );

INSERT INTO Customer (
                         lib_card_No,
                         Email,
                         Address,
                         F_Name,
                         L_Name
                     )
                     VALUES (
                         '20',
                         'sbohlmannj@skype.com',
                         '5946 Thackeray Court',
                         'Lynn',
                         'Dennis'
                     );

INSERT INTO Customer (
                         lib_card_No,
                         Email,
                         Address,
                         F_Name,
                         L_Name
                     )
                     VALUES (
                         '21',
                         'tlarkingsk@google.co.uk',
                         '99 Ludington Alley',
                         'Angelika',
                         'Agron'
                     );

INSERT INTO Customer (
                         lib_card_No,
                         Email,
                         Address,
                         F_Name,
                         L_Name
                     )
                     VALUES (
                         '22',
                         'rfrugierl@ebay.co.uk',
                         '77790 Village Plaza',
                         'Megan',
                         'Castella'
                     );

INSERT INTO Customer (
                         lib_card_No,
                         Email,
                         Address,
                         F_Name,
                         L_Name
                     )
                     VALUES (
                         '23',
                         'jessetumble@gmail.com',
                         '1234 Fake Rd.',
                         'Jesse',
                         'Tumble'
                     );

INSERT INTO Customer (
                         lib_card_No,
                         Email,
                         Address,
                         F_Name,
                         L_Name
                     )
                     VALUES (
                         '24',
                         'rogerthat@twc.com',
                         '5434 West Lake Ave.',
                         'Roger',
                         'Stephens'
                     );


-- Table: Director
CREATE TABLE Director (
    Director_Name VARCHAR (40),
    Genre         VARCHAR (15),
    PRIMARY KEY (
        Director_Name
    )
);


-- Table: Directs
CREATE TABLE Directs (
    Director_Name VARCHAR (40),
    Actor_Name    VARCHAR (40),
    PRIMARY KEY (
        Director_Name,
        Actor_Name
    ),
    FOREIGN KEY (
        Director_Name
    )
    REFERENCES Director (Director_Name),
    FOREIGN KEY (
        Actor_Name
    )
    REFERENCES Actor (Actor_Name) 
);

INSERT INTO Directs (
                        Director_Name,
                        Actor_Name
                    )
                    VALUES (
                        'Dodo Abashidze',
                        'Korney Tremelling'
                    );

INSERT INTO Directs (
                        Director_Name,
                        Actor_Name
                    )
                    VALUES (
                        'George Abbott',
                        'Demetra Points'
                    );

INSERT INTO Directs (
                        Director_Name,
                        Actor_Name
                    )
                    VALUES (
                        'Norman Abbott',
                        'Obadiah Etherington'
                    );

INSERT INTO Directs (
                        Director_Name,
                        Actor_Name
                    )
                    VALUES (
                        'Phil Abraham',
                        'Gottfried Tethacot'
                    );

INSERT INTO Directs (
                        Director_Name,
                        Actor_Name
                    )
                    VALUES (
                        'Jim Abrahams',
                        'Ravid Goodfellow'
                    );

INSERT INTO Directs (
                        Director_Name,
                        Actor_Name
                    )
                    VALUES (
                        'Abiola Abrams',
                        'Marcella Billany'
                    );

INSERT INTO Directs (
                        Director_Name,
                        Actor_Name
                    )
                    VALUES (
                        'J. J. Abrams',
                        'Luis Aitkenhead'
                    );

INSERT INTO Directs (
                        Director_Name,
                        Actor_Name
                    )
                    VALUES (
                        'Ivan Abramson',
                        'Alix Bowgen'
                    );

INSERT INTO Directs (
                        Director_Name,
                        Actor_Name
                    )
                    VALUES (
                        'Lenny Abrahamson',
                        'Nancy Braunds'
                    );

INSERT INTO Directs (
                        Director_Name,
                        Actor_Name
                    )
                    VALUES (
                        'Hany Abu-Assad',
                        'Ingar Baser'
                    );

INSERT INTO Directs (
                        Director_Name,
                        Actor_Name
                    )
                    VALUES (
                        'Tengiz Abuladze',
                        'Lorri Pechold'
                    );

INSERT INTO Directs (
                        Director_Name,
                        Actor_Name
                    )
                    VALUES (
                        'Herbert Achternbusch',
                        'Hayyim Stitson'
                    );

INSERT INTO Directs (
                        Director_Name,
                        Actor_Name
                    )
                    VALUES (
                        'Andy Ackerman',
                        'Sidonia Cadamy'
                    );

INSERT INTO Directs (
                        Director_Name,
                        Actor_Name
                    )
                    VALUES (
                        'Andrew Adamson',
                        'Romonda Banaszczyk'
                    );

INSERT INTO Directs (
                        Director_Name,
                        Actor_Name
                    )
                    VALUES (
                        'Anita W. Addison',
                        'Carroll Hellewell'
                    );

INSERT INTO Directs (
                        Director_Name,
                        Actor_Name
                    )
                    VALUES (
                        'Maren Ade',
                        'Burnard Di Biagio'
                    );

INSERT INTO Directs (
                        Director_Name,
                        Actor_Name
                    )
                    VALUES (
                        'Carine Adler',
                        'Tobin Sleeford'
                    );

INSERT INTO Directs (
                        Director_Name,
                        Actor_Name
                    )
                    VALUES (
                        'Percy Adlon',
                        'Urson Yantsev'
                    );

INSERT INTO Directs (
                        Director_Name,
                        Actor_Name
                    )
                    VALUES (
                        'John G. Adolfi',
                        'Miller Sighart'
                    );

INSERT INTO Directs (
                        Director_Name,
                        Actor_Name
                    )
                    VALUES (
                        'Franklin Adreon',
                        'Kalinda Mackleden'
                    );

INSERT INTO Directs (
                        Director_Name,
                        Actor_Name
                    )
                    VALUES (
                        'Ben Affleck',
                        'Timotheus Crohan'
                    );


-- Table: Ensemble
CREATE TABLE Ensemble (
    Artist_Name VARCHAR (40) PRIMARY KEY,
    Year        INT (4),
    Leader      VARCHAR (40),
    FOREIGN KEY (
        Artist_Name
    )
    REFERENCES Artist (Artist_Name) 
);

INSERT INTO Ensemble (
                         Artist_Name,
                         Year,
                         Leader
                     )
                     VALUES (
                         'Bring Me the Drums',
                         2001,
                         'Gore Traviss'
                     );

INSERT INTO Ensemble (
                         Artist_Name,
                         Year,
                         Leader
                     )
                     VALUES (
                         'Ron Talent',
                         1998,
                         'Charlotte Brand'
                     );

INSERT INTO Ensemble (
                         Artist_Name,
                         Year,
                         Leader
                     )
                     VALUES (
                         'Mild Division',
                         1968,
                         'Monty Jefferson'
                     );

INSERT INTO Ensemble (
                         Artist_Name,
                         Year,
                         Leader
                     )
                     VALUES (
                         'The Daring Drums',
                         1996,
                         'Tracey Shearer'
                     );

INSERT INTO Ensemble (
                         Artist_Name,
                         Year,
                         Leader
                     )
                     VALUES (
                         'Taking Back January',
                         1968,
                         'Fortune Parks'
                     );

INSERT INTO Ensemble (
                         Artist_Name,
                         Year,
                         Leader
                     )
                     VALUES (
                         'Daring Twins',
                         1958,
                         'Charisma Branson'
                     );

INSERT INTO Ensemble (
                         Artist_Name,
                         Year,
                         Leader
                     )
                     VALUES (
                         'Wild Daring Elephants',
                         1968,
                         'Meagan Fowler'
                     );

INSERT INTO Ensemble (
                         Artist_Name,
                         Year,
                         Leader
                     )
                     VALUES (
                         'The Daring Hips',
                         1996,
                         'Susan Clark'
                     );

INSERT INTO Ensemble (
                         Artist_Name,
                         Year,
                         Leader
                     )
                     VALUES (
                         'Ireland Thunder Hips',
                         1993,
                         'Jeremy Morris'
                     );

INSERT INTO Ensemble (
                         Artist_Name,
                         Year,
                         Leader
                     )
                     VALUES (
                         'Fishing Rodback',
                         1992,
                         'Lisa Fanks'
                     );

INSERT INTO Ensemble (
                         Artist_Name,
                         Year,
                         Leader
                     )
                     VALUES (
                         'Crazy Mice of Jail',
                         1992,
                         'Jessica Window'
                     );

INSERT INTO Ensemble (
                         Artist_Name,
                         Year,
                         Leader
                     )
                     VALUES (
                         'Jail Panic',
                         1997,
                         'Robert Downs'
                     );

INSERT INTO Ensemble (
                         Artist_Name,
                         Year,
                         Leader
                     )
                     VALUES (
                         'Crazy Tooth',
                         1987,
                         'Hugh Loius'
                     );

INSERT INTO Ensemble (
                         Artist_Name,
                         Year,
                         Leader
                     )
                     VALUES (
                         'The Love of Thoughts',
                         1979,
                         'Francis Trapp'
                     );

INSERT INTO Ensemble (
                         Artist_Name,
                         Year,
                         Leader
                     )
                     VALUES (
                         'Nigel and Sons',
                         1968,
                         'Beth Heaton'
                     );

INSERT INTO Ensemble (
                         Artist_Name,
                         Year,
                         Leader
                     )
                     VALUES (
                         'Pointless Division',
                         1969,
                         'Chris Wagner'
                     );

INSERT INTO Ensemble (
                         Artist_Name,
                         Year,
                         Leader
                     )
                     VALUES (
                         'Twilight Lovers',
                         1966,
                         'Jenny Sue'
                     );

INSERT INTO Ensemble (
                         Artist_Name,
                         Year,
                         Leader
                     )
                     VALUES (
                         'Kissing Gods',
                         1989,
                         'Kris Staple'
                     );

INSERT INTO Ensemble (
                         Artist_Name,
                         Year,
                         Leader
                     )
                     VALUES (
                         'Tendust',
                         1979,
                         'Judy Levi'
                     );

INSERT INTO Ensemble (
                         Artist_Name,
                         Year,
                         Leader
                     )
                     VALUES (
                         'Cool Tooth',
                         1999,
                         'Macey Frannkly'
                     );


-- Table: Media
CREATE TABLE Media (
    Item_No               INTEGER      PRIMARY KEY,
    Year                  VARCHAR (4),
    Genre                 VARCHAR (15),
    Location              VARCHAR (25),
    Type                  VARCHAR (10),
    Num_Copies            INT,
    Price                 DECIMAL,
    Num_times_checked_out INTEGER      DEFAULT (0) 
);

INSERT INTO Media (
                      Item_No,
                      Year,
                      Genre,
                      Location,
                      Type,
                      Num_Copies,
                      Price,
                      Num_times_checked_out
                  )
                  VALUES (
                      1,
                      '1990',
                      'Fiction',
                      'America',
                      'Physical',
                      3,
                      100,
                      0
                  );

INSERT INTO Media (
                      Item_No,
                      Year,
                      Genre,
                      Location,
                      Type,
                      Num_Copies,
                      Price,
                      Num_times_checked_out
                  )
                  VALUES (
                      2,
                      '1991',
                      'Fiction',
                      'America',
                      'Physical',
                      4,
                      100,
                      0
                  );

INSERT INTO Media (
                      Item_No,
                      Year,
                      Genre,
                      Location,
                      Type,
                      Num_Copies,
                      Price,
                      Num_times_checked_out
                  )
                  VALUES (
                      3,
                      '1992',
                      'Science',
                      'America',
                      'Physical',
                      5,
                      10,
                      0
                  );

INSERT INTO Media (
                      Item_No,
                      Year,
                      Genre,
                      Location,
                      Type,
                      Num_Copies,
                      Price,
                      Num_times_checked_out
                  )
                  VALUES (
                      4,
                      '1993',
                      'Nature',
                      'America',
                      'Digital',
                      6,
                      25,
                      5
                  );

INSERT INTO Media (
                      Item_No,
                      Year,
                      Genre,
                      Location,
                      Type,
                      Num_Copies,
                      Price,
                      Num_times_checked_out
                  )
                  VALUES (
                      5,
                      '1994',
                      'Pools',
                      'New Zealand',
                      'Digital',
                      7,
                      1,
                      2
                  );

INSERT INTO Media (
                      Item_No,
                      Year,
                      Genre,
                      Location,
                      Type,
                      Num_Copies,
                      Price,
                      Num_times_checked_out
                  )
                  VALUES (
                      6,
                      '1995',
                      'Children',
                      'Ukraine',
                      'Digital',
                      8,
                      1,
                      3
                  );

INSERT INTO Media (
                      Item_No,
                      Year,
                      Genre,
                      Location,
                      Type,
                      Num_Copies,
                      Price,
                      Num_times_checked_out
                  )
                  VALUES (
                      7,
                      '1996',
                      'Romance',
                      'Ukraine',
                      'Physical',
                      10,
                      2,
                      1
                  );

INSERT INTO Media (
                      Item_No,
                      Year,
                      Genre,
                      Location,
                      Type,
                      Num_Copies,
                      Price,
                      Num_times_checked_out
                  )
                  VALUES (
                      8,
                      '1997',
                      'Keyboard',
                      'America',
                      'Digital',
                      1,
                      9,
                      0
                  );

INSERT INTO Media (
                      Item_No,
                      Year,
                      Genre,
                      Location,
                      Type,
                      Num_Copies,
                      Price,
                      Num_times_checked_out
                  )
                  VALUES (
                      9,
                      '1998',
                      'Religion',
                      'New Zealand',
                      'Physical',
                      1,
                      2,
                      1
                  );

INSERT INTO Media (
                      Item_No,
                      Year,
                      Genre,
                      Location,
                      Type,
                      Num_Copies,
                      Price,
                      Num_times_checked_out
                  )
                  VALUES (
                      10,
                      '1999',
                      'Comedy',
                      'Ukraine',
                      'Digital',
                      3,
                      3,
                      0
                  );

INSERT INTO Media (
                      Item_No,
                      Year,
                      Genre,
                      Location,
                      Type,
                      Num_Copies,
                      Price,
                      Num_times_checked_out
                  )
                  VALUES (
                      11,
                      '2000',
                      'Fiction',
                      'America',
                      'Digital',
                      2,
                      3,
                      0
                  );

INSERT INTO Media (
                      Item_No,
                      Year,
                      Genre,
                      Location,
                      Type,
                      Num_Copies,
                      Price,
                      Num_times_checked_out
                  )
                  VALUES (
                      12,
                      '2001',
                      'Fiction',
                      'Canada',
                      'Digital',
                      6,
                      50,
                      0
                  );

INSERT INTO Media (
                      Item_No,
                      Year,
                      Genre,
                      Location,
                      Type,
                      Num_Copies,
                      Price,
                      Num_times_checked_out
                  )
                  VALUES (
                      13,
                      '2002',
                      'Pools',
                      'America',
                      'Digital',
                      7,
                      999,
                      0
                  );

INSERT INTO Media (
                      Item_No,
                      Year,
                      Genre,
                      Location,
                      Type,
                      Num_Copies,
                      Price,
                      Num_times_checked_out
                  )
                  VALUES (
                      14,
                      '2003',
                      'Children',
                      'Canada',
                      'Physical',
                      9,
                      88,
                      0
                  );

INSERT INTO Media (
                      Item_No,
                      Year,
                      Genre,
                      Location,
                      Type,
                      Num_Copies,
                      Price,
                      Num_times_checked_out
                  )
                  VALUES (
                      15,
                      '2004',
                      'Romance',
                      'New Zealand',
                      'Physical',
                      22,
                      75,
                      0
                  );

INSERT INTO Media (
                      Item_No,
                      Year,
                      Genre,
                      Location,
                      Type,
                      Num_Copies,
                      Price,
                      Num_times_checked_out
                  )
                  VALUES (
                      16,
                      '2005',
                      'Science',
                      'Canada',
                      'Physical',
                      100,
                      80,
                      0
                  );

INSERT INTO Media (
                      Item_No,
                      Year,
                      Genre,
                      Location,
                      Type,
                      Num_Copies,
                      Price,
                      Num_times_checked_out
                  )
                  VALUES (
                      17,
                      '2006',
                      'Fiction',
                      'America',
                      'Physical',
                      80,
                      70,
                      0
                  );

INSERT INTO Media (
                      Item_No,
                      Year,
                      Genre,
                      Location,
                      Type,
                      Num_Copies,
                      Price,
                      Num_times_checked_out
                  )
                  VALUES (
                      18,
                      '2007',
                      'Fiction',
                      'Canada',
                      'Digital',
                      1,
                      50,
                      0
                  );

INSERT INTO Media (
                      Item_No,
                      Year,
                      Genre,
                      Location,
                      Type,
                      Num_Copies,
                      Price,
                      Num_times_checked_out
                  )
                  VALUES (
                      19,
                      '2008',
                      'Religion',
                      'New Zealand',
                      'Digital',
                      10,
                      33,
                      0
                  );

INSERT INTO Media (
                      Item_No,
                      Year,
                      Genre,
                      Location,
                      Type,
                      Num_Copies,
                      Price,
                      Num_times_checked_out
                  )
                  VALUES (
                      20,
                      '2009',
                      'Comedy',
                      'Canada',
                      'Physical',
                      2,
                      666,
                      0
                  );

INSERT INTO Media (
                      Item_No,
                      Year,
                      Genre,
                      Location,
                      Type,
                      Num_Copies,
                      Price,
                      Num_times_checked_out
                  )
                  VALUES (
                      21,
                      '2010',
                      'Fiction',
                      'America',
                      'Digital',
                      2,
                      66,
                      0
                  );

INSERT INTO Media (
                      Item_No,
                      Year,
                      Genre,
                      Location,
                      Type,
                      Num_Copies,
                      Price,
                      Num_times_checked_out
                  )
                  VALUES (
                      22,
                      '1980',
                      'Rock',
                      'America',
                      'Physical',
                      100,
                      34,
                      0
                  );

INSERT INTO Media (
                      Item_No,
                      Year,
                      Genre,
                      Location,
                      Type,
                      Num_Copies,
                      Price,
                      Num_times_checked_out
                  )
                  VALUES (
                      23,
                      '1981',
                      'Rock',
                      'America',
                      'Physical',
                      80,
                      29.5,
                      0
                  );

INSERT INTO Media (
                      Item_No,
                      Year,
                      Genre,
                      Location,
                      Type,
                      Num_Copies,
                      Price,
                      Num_times_checked_out
                  )
                  VALUES (
                      24,
                      '1982',
                      'Rock',
                      'America',
                      'Digital',
                      1,
                      14.99,
                      0
                  );

INSERT INTO Media (
                      Item_No,
                      Year,
                      Genre,
                      Location,
                      Type,
                      Num_Copies,
                      Price,
                      Num_times_checked_out
                  )
                  VALUES (
                      25,
                      '1983',
                      'Rock',
                      'America',
                      'Digital',
                      1,
                      11.67,
                      0
                  );

INSERT INTO Media (
                      Item_No,
                      Year,
                      Genre,
                      Location,
                      Type,
                      Num_Copies,
                      Price,
                      Num_times_checked_out
                  )
                  VALUES (
                      26,
                      '1984',
                      'Rock',
                      'America',
                      'Physical',
                      2,
                      14.49,
                      0
                  );

INSERT INTO Media (
                      Item_No,
                      Year,
                      Genre,
                      Location,
                      Type,
                      Num_Copies,
                      Price,
                      Num_times_checked_out
                  )
                  VALUES (
                      27,
                      '1985',
                      'Rock',
                      'America',
                      'Digital',
                      2,
                      29.35,
                      0
                  );

INSERT INTO Media (
                      Item_No,
                      Year,
                      Genre,
                      Location,
                      Type,
                      Num_Copies,
                      Price,
                      Num_times_checked_out
                  )
                  VALUES (
                      28,
                      '1986',
                      'Rock',
                      'America',
                      'Physical',
                      80,
                      36.99,
                      0
                  );

INSERT INTO Media (
                      Item_No,
                      Year,
                      Genre,
                      Location,
                      Type,
                      Num_Copies,
                      Price,
                      Num_times_checked_out
                  )
                  VALUES (
                      29,
                      '1987',
                      'R&B/Soul',
                      'America',
                      'Physical',
                      1,
                      20,
                      0
                  );

INSERT INTO Media (
                      Item_No,
                      Year,
                      Genre,
                      Location,
                      Type,
                      Num_Copies,
                      Price,
                      Num_times_checked_out
                  )
                  VALUES (
                      30,
                      '1988',
                      'Metal',
                      'America',
                      'Digital',
                      3,
                      13,
                      0
                  );

INSERT INTO Media (
                      Item_No,
                      Year,
                      Genre,
                      Location,
                      Type,
                      Num_Copies,
                      Price,
                      Num_times_checked_out
                  )
                  VALUES (
                      31,
                      '1989',
                      'Rock',
                      'America',
                      'Digital',
                      2,
                      14,
                      0
                  );

INSERT INTO Media (
                      Item_No,
                      Year,
                      Genre,
                      Location,
                      Type,
                      Num_Copies,
                      Price,
                      Num_times_checked_out
                  )
                  VALUES (
                      32,
                      '1990',
                      'Alternative & Punk',
                      'America',
                      'Physical',
                      6,
                      25,
                      0
                  );

INSERT INTO Media (
                      Item_No,
                      Year,
                      Genre,
                      Location,
                      Type,
                      Num_Copies,
                      Price,
                      Num_times_checked_out
                  )
                  VALUES (
                      33,
                      '1991',
                      'Metal',
                      'America',
                      'Digital',
                      1,
                      26,
                      0
                  );

INSERT INTO Media (
                      Item_No,
                      Year,
                      Genre,
                      Location,
                      Type,
                      Num_Copies,
                      Price,
                      Num_times_checked_out
                  )
                  VALUES (
                      34,
                      '1992',
                      'Metal',
                      'America',
                      'Digital',
                      2,
                      25.5,
                      0
                  );

INSERT INTO Media (
                      Item_No,
                      Year,
                      Genre,
                      Location,
                      Type,
                      Num_Copies,
                      Price,
                      Num_times_checked_out
                  )
                  VALUES (
                      35,
                      '1993',
                      'Latin',
                      'America',
                      'Digital',
                      3,
                      19.95,
                      0
                  );

INSERT INTO Media (
                      Item_No,
                      Year,
                      Genre,
                      Location,
                      Type,
                      Num_Copies,
                      Price,
                      Num_times_checked_out
                  )
                  VALUES (
                      36,
                      '1994',
                      'Rock',
                      'America',
                      'Digital',
                      4,
                      18.99,
                      0
                  );

INSERT INTO Media (
                      Item_No,
                      Year,
                      Genre,
                      Location,
                      Type,
                      Num_Copies,
                      Price,
                      Num_times_checked_out
                  )
                  VALUES (
                      37,
                      '1995',
                      'Rock',
                      'America',
                      'Digital',
                      5,
                      38.99,
                      0
                  );

INSERT INTO Media (
                      Item_No,
                      Year,
                      Genre,
                      Location,
                      Type,
                      Num_Copies,
                      Price,
                      Num_times_checked_out
                  )
                  VALUES (
                      38,
                      '1996',
                      'Rock',
                      'America',
                      'Digital',
                      6,
                      42.5,
                      5
                  );

INSERT INTO Media (
                      Item_No,
                      Year,
                      Genre,
                      Location,
                      Type,
                      Num_Copies,
                      Price,
                      Num_times_checked_out
                  )
                  VALUES (
                      39,
                      '1997',
                      'Rock',
                      'America',
                      'Digital',
                      7,
                      17.98,
                      0
                  );

INSERT INTO Media (
                      Item_No,
                      Year,
                      Genre,
                      Location,
                      Type,
                      Num_Copies,
                      Price,
                      Num_times_checked_out
                  )
                  VALUES (
                      40,
                      '1998',
                      'Rock',
                      'America',
                      'Digital',
                      8,
                      12.39,
                      0
                  );

INSERT INTO Media (
                      Item_No,
                      Year,
                      Genre,
                      Location,
                      Type,
                      Num_Copies,
                      Price,
                      Num_times_checked_out
                  )
                  VALUES (
                      41,
                      '1999',
                      'Rock',
                      'America',
                      'Physical',
                      9,
                      12.99,
                      0
                  );

INSERT INTO Media (
                      Item_No,
                      Year,
                      Genre,
                      Location,
                      Type,
                      Num_Copies,
                      Price,
                      Num_times_checked_out
                  )
                  VALUES (
                      42,
                      '2000',
                      'Rock',
                      'America',
                      'Digital',
                      10,
                      36.59,
                      13
                  );

INSERT INTO Media (
                      Item_No,
                      Year,
                      Genre,
                      Location,
                      Type,
                      Num_Copies,
                      Price,
                      Num_times_checked_out
                  )
                  VALUES (
                      43,
                      '2001',
                      'Rock',
                      'America',
                      'Physical',
                      11,
                      250,
                      4
                  );

INSERT INTO Media (
                      Item_No,
                      Year,
                      Genre,
                      Location,
                      Type,
                      Num_Copies,
                      Price,
                      Num_times_checked_out
                  )
                  VALUES (
                      44,
                      '2002',
                      'Rock',
                      'America',
                      'Physical',
                      12,
                      120,
                      2
                  );

INSERT INTO Media (
                      Item_No,
                      Year,
                      Genre,
                      Location,
                      Type,
                      Num_Copies,
                      Price,
                      Num_times_checked_out
                  )
                  VALUES (
                      45,
                      '2003',
                      'Rock',
                      'America',
                      'Physical',
                      13,
                      23,
                      0
                  );

INSERT INTO Media (
                      Item_No,
                      Year,
                      Genre,
                      Location,
                      Type,
                      Num_Copies,
                      Price,
                      Num_times_checked_out
                  )
                  VALUES (
                      46,
                      '2004',
                      'Latin',
                      'South America',
                      'Digital',
                      14,
                      12,
                      0
                  );

INSERT INTO Media (
                      Item_No,
                      Year,
                      Genre,
                      Location,
                      Type,
                      Num_Copies,
                      Price,
                      Num_times_checked_out
                  )
                  VALUES (
                      47,
                      '1971',
                      'Fantasy',
                      'UK',
                      'Digital',
                      100,
                      36.99,
                      0
                  );

INSERT INTO Media (
                      Item_No,
                      Year,
                      Genre,
                      Location,
                      Type,
                      Num_Copies,
                      Price,
                      Num_times_checked_out
                  )
                  VALUES (
                      48,
                      '1972',
                      'Fantasy',
                      'UK',
                      'Digital',
                      80,
                      20,
                      0
                  );

INSERT INTO Media (
                      Item_No,
                      Year,
                      Genre,
                      Location,
                      Type,
                      Num_Copies,
                      Price,
                      Num_times_checked_out
                  )
                  VALUES (
                      49,
                      '1973',
                      'Fantasy',
                      'UK',
                      'Physical',
                      1,
                      13,
                      0
                  );

INSERT INTO Media (
                      Item_No,
                      Year,
                      Genre,
                      Location,
                      Type,
                      Num_Copies,
                      Price,
                      Num_times_checked_out
                  )
                  VALUES (
                      50,
                      '1974',
                      'Fantasy',
                      'UK',
                      'Digital',
                      1,
                      14,
                      0
                  );

INSERT INTO Media (
                      Item_No,
                      Year,
                      Genre,
                      Location,
                      Type,
                      Num_Copies,
                      Price,
                      Num_times_checked_out
                  )
                  VALUES (
                      51,
                      '1975',
                      'Fantasy',
                      'UK',
                      'Physical',
                      2,
                      25,
                      0
                  );

INSERT INTO Media (
                      Item_No,
                      Year,
                      Genre,
                      Location,
                      Type,
                      Num_Copies,
                      Price,
                      Num_times_checked_out
                  )
                  VALUES (
                      52,
                      '1976',
                      'Fantasy',
                      'UK',
                      'Physical',
                      2,
                      26,
                      12
                  );

INSERT INTO Media (
                      Item_No,
                      Year,
                      Genre,
                      Location,
                      Type,
                      Num_Copies,
                      Price,
                      Num_times_checked_out
                  )
                  VALUES (
                      53,
                      '1977',
                      'Fantasy',
                      'UK',
                      'Physical',
                      80,
                      25.5,
                      20
                  );

INSERT INTO Media (
                      Item_No,
                      Year,
                      Genre,
                      Location,
                      Type,
                      Num_Copies,
                      Price,
                      Num_times_checked_out
                  )
                  VALUES (
                      54,
                      '1978',
                      'Historical Fiction',
                      'Ocean',
                      'Digital',
                      1,
                      19.95,
                      19
                  );

INSERT INTO Media (
                      Item_No,
                      Year,
                      Genre,
                      Location,
                      Type,
                      Num_Copies,
                      Price,
                      Num_times_checked_out
                  )
                  VALUES (
                      55,
                      '1988',
                      'Historical Fiction',
                      'Ocean',
                      'Digital',
                      3,
                      18.99,
                      7
                  );

INSERT INTO Media (
                      Item_No,
                      Year,
                      Genre,
                      Location,
                      Type,
                      Num_Copies,
                      Price,
                      Num_times_checked_out
                  )
                  VALUES (
                      56,
                      '1989',
                      'Historical Fiction',
                      'Ocean',
                      'Digital',
                      2,
                      38.99,
                      10
                  );

INSERT INTO Media (
                      Item_No,
                      Year,
                      Genre,
                      Location,
                      Type,
                      Num_Copies,
                      Price,
                      Num_times_checked_out
                  )
                  VALUES (
                      57,
                      '1990',
                      'Historical Fiction',
                      'Ocean',
                      'Physical',
                      6,
                      42.5,
                      3
                  );

INSERT INTO Media (
                      Item_No,
                      Year,
                      Genre,
                      Location,
                      Type,
                      Num_Copies,
                      Price,
                      Num_times_checked_out
                  )
                  VALUES (
                      58,
                      '1991',
                      'Historical Fiction',
                      'Ocean',
                      'Digital',
                      1,
                      17.98,
                      12
                  );

INSERT INTO Media (
                      Item_No,
                      Year,
                      Genre,
                      Location,
                      Type,
                      Num_Copies,
                      Price,
                      Num_times_checked_out
                  )
                  VALUES (
                      59,
                      '1992',
                      'Historical Fiction',
                      'Ocean',
                      'Physical',
                      2,
                      12.39,
                      5
                  );

INSERT INTO Media (
                      Item_No,
                      Year,
                      Genre,
                      Location,
                      Type,
                      Num_Copies,
                      Price,
                      Num_times_checked_out
                  )
                  VALUES (
                      60,
                      '1993',
                      'Historical Fiction',
                      'Ocean',
                      'Physical',
                      3,
                      12.99,
                      1
                  );

INSERT INTO Media (
                      Item_No,
                      Year,
                      Genre,
                      Location,
                      Type,
                      Num_Copies,
                      Price,
                      Num_times_checked_out
                  )
                  VALUES (
                      61,
                      '1994',
                      'Historical Fiction',
                      'Ocean',
                      'Digital',
                      4,
                      36.59,
                      7
                  );

INSERT INTO Media (
                      Item_No,
                      Year,
                      Genre,
                      Location,
                      Type,
                      Num_Copies,
                      Price,
                      Num_times_checked_out
                  )
                  VALUES (
                      62,
                      '1995',
                      'Historical Fiction',
                      'Ocean',
                      'Digital',
                      5,
                      250,
                      2
                  );

INSERT INTO Media (
                      Item_No,
                      Year,
                      Genre,
                      Location,
                      Type,
                      Num_Copies,
                      Price,
                      Num_times_checked_out
                  )
                  VALUES (
                      63,
                      '1996',
                      'Historical Fiction',
                      'Ocean',
                      'Physical',
                      6,
                      120,
                      36
                  );

INSERT INTO Media (
                      Item_No,
                      Year,
                      Genre,
                      Location,
                      Type,
                      Num_Copies,
                      Price,
                      Num_times_checked_out
                  )
                  VALUES (
                      64,
                      '1997',
                      'Historical Fiction',
                      'Ocean',
                      'Physical',
                      7,
                      23,
                      10
                  );

INSERT INTO Media (
                      Item_No,
                      Year,
                      Genre,
                      Location,
                      Type,
                      Num_Copies,
                      Price,
                      Num_times_checked_out
                  )
                  VALUES (
                      65,
                      '1998',
                      'Historical Fiction',
                      'Ocean',
                      'Digital',
                      8,
                      12,
                      45
                  );

INSERT INTO Media (
                      Item_No,
                      Year,
                      Genre,
                      Location,
                      Type,
                      Num_Copies,
                      Price,
                      Num_times_checked_out
                  )
                  VALUES (
                      66,
                      '1800',
                      'Comedy',
                      'Antarctica',
                      'Physical',
                      10,
                      19.95,
                      77
                  );


-- Table: Movie
CREATE TABLE Movie (
    Item_No       INTEGER      PRIMARY KEY,
    Title         VARCHAR (25),
    Length        INT,
    Director_Name VARCHAR (40),
    Actor_Name    VARCHAR (40),
    FOREIGN KEY (
        Item_No
    )
    REFERENCES Media (Item_No) 
);

INSERT INTO Movie (
                      Item_No,
                      Title,
                      Length,
                      Director_Name,
                      Actor_Name
                  )
                  VALUES (
                      1,
                      'Prelude to a Kiss',
                      220,
                      'Dodo Abashidze',
                      'Korney Tremelling'
                  );

INSERT INTO Movie (
                      Item_No,
                      Title,
                      Length,
                      Director_Name,
                      Actor_Name
                  )
                  VALUES (
                      2,
                      'Right Stuff',
                      180,
                      'George Abbott',
                      'Demetra Points'
                  );

INSERT INTO Movie (
                      Item_No,
                      Title,
                      Length,
                      Director_Name,
                      Actor_Name
                  )
                  VALUES (
                      3,
                      'Step Brothers',
                      190,
                      'Norman Abbott',
                      'Obadiah Etherington'
                  );

INSERT INTO Movie (
                      Item_No,
                      Title,
                      Length,
                      Director_Name,
                      Actor_Name
                  )
                  VALUES (
                      4,
                      'IMAX: Coral Reef Adventure',
                      200,
                      'Phil Abraham',
                      'Gottfried Tethacot'
                  );

INSERT INTO Movie (
                      Item_No,
                      Title,
                      Length,
                      Director_Name,
                      Actor_Name
                  )
                  VALUES (
                      5,
                      'Cheerleaders',
                      220,
                      'Jim Abrahams',
                      'Ravid Goodfellow'
                  );

INSERT INTO Movie (
                      Item_No,
                      Title,
                      Length,
                      Director_Name,
                      Actor_Name
                  )
                  VALUES (
                      6,
                      'Elle: A Modern Cinderella Tale',
                      202,
                      'Abiola Abrams',
                      'Marcella Billany'
                  );

INSERT INTO Movie (
                      Item_No,
                      Title,
                      Length,
                      Director_Name,
                      Actor_Name
                  )
                  VALUES (
                      7,
                      'Red Dragon',
                      205,
                      'J. J. Abrams',
                      'Luis Aitkenhead'
                  );

INSERT INTO Movie (
                      Item_No,
                      Title,
                      Length,
                      Director_Name,
                      Actor_Name
                  )
                  VALUES (
                      8,
                      'Upstream Color',
                      208,
                      'Ivan Abramson',
                      'Alix Bowgen'
                  );

INSERT INTO Movie (
                      Item_No,
                      Title,
                      Length,
                      Director_Name,
                      Actor_Name
                  )
                  VALUES (
                      9,
                      'Crossroads',
                      288,
                      'Lenny Abrahamson',
                      'Nancy Braunds'
                  );

INSERT INTO Movie (
                      Item_No,
                      Title,
                      Length,
                      Director_Name,
                      Actor_Name
                  )
                  VALUES (
                      10,
                      'Rude',
                      298,
                      'Hany Abu-Assad',
                      'Ingar Baser'
                  );

INSERT INTO Movie (
                      Item_No,
                      Title,
                      Length,
                      Director_Name,
                      Actor_Name
                  )
                  VALUES (
                      11,
                      'Otakus in Love',
                      275,
                      'Tengiz Abuladze',
                      'Lorri Pechold'
                  );

INSERT INTO Movie (
                      Item_No,
                      Title,
                      Length,
                      Director_Name,
                      Actor_Name
                  )
                  VALUES (
                      12,
                      'Appointment with Danger',
                      244,
                      'Herbert Achternbusch',
                      'Hayyim Stitson'
                  );

INSERT INTO Movie (
                      Item_No,
                      Title,
                      Length,
                      Director_Name,
                      Actor_Name
                  )
                  VALUES (
                      13,
                      'When Nietzsche Wept',
                      267,
                      'Andy Ackerman',
                      'Sidonia Cadamy'
                  );

INSERT INTO Movie (
                      Item_No,
                      Title,
                      Length,
                      Director_Name,
                      Actor_Name
                  )
                  VALUES (
                      14,
                      'Millennium',
                      201,
                      'Andrew Adamson',
                      'Demetra Points'
                  );

INSERT INTO Movie (
                      Item_No,
                      Title,
                      Length,
                      Director_Name,
                      Actor_Name
                  )
                  VALUES (
                      15,
                      'Flash Gordon''s Trip to Mars',
                      202,
                      'Anita W. Addison',
                      'Carroll Hellewell'
                  );

INSERT INTO Movie (
                      Item_No,
                      Title,
                      Length,
                      Director_Name,
                      Actor_Name
                  )
                  VALUES (
                      16,
                      'Stroszek',
                      203,
                      'Maren Ade',
                      'Burnard Di Biagio'
                  );

INSERT INTO Movie (
                      Item_No,
                      Title,
                      Length,
                      Director_Name,
                      Actor_Name
                  )
                  VALUES (
                      17,
                      'Heaven''s Prisoners',
                      204,
                      'Carine Adler',
                      'Tobin Sleeford'
                  );

INSERT INTO Movie (
                      Item_No,
                      Title,
                      Length,
                      Director_Name,
                      Actor_Name
                  )
                  VALUES (
                      18,
                      'Natural Selection',
                      208,
                      'Percy Adlon',
                      'Urson Yantsev'
                  );

INSERT INTO Movie (
                      Item_No,
                      Title,
                      Length,
                      Director_Name,
                      Actor_Name
                  )
                  VALUES (
                      19,
                      'First Kid',
                      209,
                      'John G. Adolfi',
                      'Miller Sighart'
                  );

INSERT INTO Movie (
                      Item_No,
                      Title,
                      Length,
                      Director_Name,
                      Actor_Name
                  )
                  VALUES (
                      20,
                      'Time to Die (Tiempo de morir)',
                      218,
                      'Franklin Adreon',
                      'Kalinda Mackleden'
                  );

INSERT INTO Movie (
                      Item_No,
                      Title,
                      Length,
                      Director_Name,
                      Actor_Name
                  )
                  VALUES (
                      21,
                      'Grand Theft Auto',
                      228,
                      'Ben Affleck',
                      'Timotheus Crohan'
                  );


-- Table: Returns
CREATE TABLE Returns (
    lib_card_No VARCHAR (9),
    Item_No     INTEGER,
    Return_date DATE,
    PRIMARY KEY (
        lib_card_No,
        Item_No
    ),
    FOREIGN KEY (
        lib_card_No
    )
    REFERENCES Customer (lib_card_No),
    FOREIGN KEY (
        Item_No
    )
    REFERENCES Media (Item_No) 
);

INSERT INTO Returns (
                        lib_card_No,
                        Item_No,
                        Return_date
                    )
                    VALUES (
                        '1',
                        NULL,
                        '02/23/2022'
                    );

INSERT INTO Returns (
                        lib_card_No,
                        Item_No,
                        Return_date
                    )
                    VALUES (
                        '2',
                        NULL,
                        '03/12/2022'
                    );

INSERT INTO Returns (
                        lib_card_No,
                        Item_No,
                        Return_date
                    )
                    VALUES (
                        '3',
                        NULL,
                        '03/25/2022'
                    );

INSERT INTO Returns (
                        lib_card_No,
                        Item_No,
                        Return_date
                    )
                    VALUES (
                        '4',
                        NULL,
                        '04/02/2022'
                    );

INSERT INTO Returns (
                        lib_card_No,
                        Item_No,
                        Return_date
                    )
                    VALUES (
                        '5',
                        NULL,
                        '05/12/2022'
                    );

INSERT INTO Returns (
                        lib_card_No,
                        Item_No,
                        Return_date
                    )
                    VALUES (
                        '6',
                        NULL,
                        '02/23/2022'
                    );

INSERT INTO Returns (
                        lib_card_No,
                        Item_No,
                        Return_date
                    )
                    VALUES (
                        '7',
                        NULL,
                        '02/11/2022'
                    );

INSERT INTO Returns (
                        lib_card_No,
                        Item_No,
                        Return_date
                    )
                    VALUES (
                        '8',
                        NULL,
                        '04/20/2022'
                    );

INSERT INTO Returns (
                        lib_card_No,
                        Item_No,
                        Return_date
                    )
                    VALUES (
                        '9',
                        NULL,
                        '04/15/2022'
                    );

INSERT INTO Returns (
                        lib_card_No,
                        Item_No,
                        Return_date
                    )
                    VALUES (
                        '10',
                        NULL,
                        '03/01/2022'
                    );

INSERT INTO Returns (
                        lib_card_No,
                        Item_No,
                        Return_date
                    )
                    VALUES (
                        '11',
                        NULL,
                        '02/02/2022'
                    );

INSERT INTO Returns (
                        lib_card_No,
                        Item_No,
                        Return_date
                    )
                    VALUES (
                        '12',
                        NULL,
                        '04/06/2022'
                    );

INSERT INTO Returns (
                        lib_card_No,
                        Item_No,
                        Return_date
                    )
                    VALUES (
                        '13',
                        NULL,
                        '05/20/2022'
                    );

INSERT INTO Returns (
                        lib_card_No,
                        Item_No,
                        Return_date
                    )
                    VALUES (
                        '14',
                        NULL,
                        '05/01/2022'
                    );

INSERT INTO Returns (
                        lib_card_No,
                        Item_No,
                        Return_date
                    )
                    VALUES (
                        '15',
                        NULL,
                        '04/02/2022'
                    );

INSERT INTO Returns (
                        lib_card_No,
                        Item_No,
                        Return_date
                    )
                    VALUES (
                        '16',
                        NULL,
                        '07/01/2022'
                    );

INSERT INTO Returns (
                        lib_card_No,
                        Item_No,
                        Return_date
                    )
                    VALUES (
                        '17',
                        NULL,
                        '05/05/2022'
                    );

INSERT INTO Returns (
                        lib_card_No,
                        Item_No,
                        Return_date
                    )
                    VALUES (
                        '18',
                        NULL,
                        '02/16/2022'
                    );

INSERT INTO Returns (
                        lib_card_No,
                        Item_No,
                        Return_date
                    )
                    VALUES (
                        '19',
                        NULL,
                        '02/29/2022'
                    );

INSERT INTO Returns (
                        lib_card_No,
                        Item_No,
                        Return_date
                    )
                    VALUES (
                        '20',
                        NULL,
                        '03/29/2022'
                    );


-- Table: Solo
CREATE TABLE Solo (
    Artist_Name VARCHAR (40) PRIMARY KEY,
    Num_Records INT,
    FOREIGN KEY (
        Artist_Name
    )
    REFERENCES Artist (Artist_Name) 
);

INSERT INTO Solo (
                     Artist_Name,
                     Num_Records
                 )
                 VALUES (
                     'Alanis Morissette',
                     6
                 );

INSERT INTO Solo (
                     Artist_Name,
                     Num_Records
                 )
                 VALUES (
                     'Janice Okay',
                     2
                 );

INSERT INTO Solo (
                     Artist_Name,
                     Num_Records
                 )
                 VALUES (
                     'Hance Hugh',
                     4
                 );

INSERT INTO Solo (
                     Artist_Name,
                     Num_Records
                 )
                 VALUES (
                     'Jeorge Lupid',
                     4
                 );

INSERT INTO Solo (
                     Artist_Name,
                     Num_Records
                 )
                 VALUES (
                     'Drake Marshall',
                     12
                 );

INSERT INTO Solo (
                     Artist_Name,
                     Num_Records
                 )
                 VALUES (
                     'Manny Human',
                     10
                 );

INSERT INTO Solo (
                     Artist_Name,
                     Num_Records
                 )
                 VALUES (
                     'Lisa Pedro',
                     1
                 );

INSERT INTO Solo (
                     Artist_Name,
                     Num_Records
                 )
                 VALUES (
                     'Allen Pooler',
                     3
                 );

INSERT INTO Solo (
                     Artist_Name,
                     Num_Records
                 )
                 VALUES (
                     'Hugh Dredge',
                     8
                 );

INSERT INTO Solo (
                     Artist_Name,
                     Num_Records
                 )
                 VALUES (
                     'Nick Patrol',
                     4
                 );

INSERT INTO Solo (
                     Artist_Name,
                     Num_Records
                 )
                 VALUES (
                     'Benjamin Wesser',
                     3
                 );

INSERT INTO Solo (
                     Artist_Name,
                     Num_Records
                 )
                 VALUES (
                     'Chris Looker',
                     1
                 );

INSERT INTO Solo (
                     Artist_Name,
                     Num_Records
                 )
                 VALUES (
                     'Justin Bieber',
                     1
                 );

INSERT INTO Solo (
                     Artist_Name,
                     Num_Records
                 )
                 VALUES (
                     'Camila Cabello',
                     2
                 );

INSERT INTO Solo (
                     Artist_Name,
                     Num_Records
                 )
                 VALUES (
                     'Perry Jefferson',
                     3
                 );

INSERT INTO Solo (
                     Artist_Name,
                     Num_Records
                 )
                 VALUES (
                     'Amy Winehouse',
                     6
                 );

INSERT INTO Solo (
                     Artist_Name,
                     Num_Records
                 )
                 VALUES (
                     'Chico Buarque',
                     5
                 );

INSERT INTO Solo (
                     Artist_Name,
                     Num_Records
                 )
                 VALUES (
                     'Ed Motta',
                     4
                 );

INSERT INTO Solo (
                     Artist_Name,
                     Num_Records
                 )
                 VALUES (
                     'Eric Clapton',
                     5
                 );

INSERT INTO Solo (
                     Artist_Name,
                     Num_Records
                 )
                 VALUES (
                     'Gilberto Gil',
                     2
                 );


-- Table: Track
CREATE TABLE Track (
    Track_No    INTEGER      PRIMARY KEY,
    Title       VARCHAR (35),
    Genre       VARCHAR (15),
    Length      INT,
    Artist_Name VARCHAR (40),
    Album_Name  VARCHAR (30),
    FOREIGN KEY (
        Artist_Name,
        Album_Name
    )
    REFERENCES Album (Artist_Name,
    Name) 
);

INSERT INTO Track (
                      Track_No,
                      Title,
                      Genre,
                      Length,
                      Artist_Name,
                      Album_Name
                  )
                  VALUES (
                      1,
                      'Breaking The Rules',
                      'Rock',
                      263,
                      'AC/DC',
                      'For Those About To Rock We Salute You'
                  );

INSERT INTO Track (
                      Track_No,
                      Title,
                      Genre,
                      Length,
                      Artist_Name,
                      Album_Name
                  )
                  VALUES (
                      2,
                      'C.O.D.',
                      'Rock',
                      199,
                      'AC/DC',
                      'For Those About To Rock We Salute You'
                  );

INSERT INTO Track (
                      Track_No,
                      Title,
                      Genre,
                      Length,
                      Artist_Name,
                      Album_Name
                  )
                  VALUES (
                      3,
                      'Evil Walks',
                      'Rock',
                      263,
                      'AC/DC',
                      'For Those About To Rock We Salute You'
                  );

INSERT INTO Track (
                      Track_No,
                      Title,
                      Genre,
                      Length,
                      Artist_Name,
                      Album_Name
                  )
                  VALUES (
                      4,
                      'For Those About To Rock (We Salute You)',
                      'Rock',
                      343,
                      'AC/DC',
                      'For Those About To Rock We Salute You'
                  );

INSERT INTO Track (
                      Track_No,
                      Title,
                      Genre,
                      Length,
                      Artist_Name,
                      Album_Name
                  )
                  VALUES (
                      5,
                      'Inject The Venom',
                      'Rock',
                      210,
                      'AC/DC',
                      'For Those About To Rock We Salute You'
                  );

INSERT INTO Track (
                      Track_No,
                      Title,
                      Genre,
                      Length,
                      Artist_Name,
                      Album_Name
                  )
                  VALUES (
                      6,
                      'Let''s Get It Up',
                      'Rock',
                      233,
                      'AC/DC',
                      'For Those About To Rock We Salute You'
                  );

INSERT INTO Track (
                      Track_No,
                      Title,
                      Genre,
                      Length,
                      Artist_Name,
                      Album_Name
                  )
                  VALUES (
                      7,
                      'Night Of The Long Knives',
                      'Rock',
                      205,
                      'AC/DC',
                      'For Those About To Rock We Salute You'
                  );

INSERT INTO Track (
                      Track_No,
                      Title,
                      Genre,
                      Length,
                      Artist_Name,
                      Album_Name
                  )
                  VALUES (
                      8,
                      'Put The Finger On You',
                      'Rock',
                      205,
                      'AC/DC',
                      'For Those About To Rock We Salute You'
                  );

INSERT INTO Track (
                      Track_No,
                      Title,
                      Genre,
                      Length,
                      Artist_Name,
                      Album_Name
                  )
                  VALUES (
                      9,
                      'Snowballed',
                      'Rock',
                      203,
                      'AC/DC',
                      'For Those About To Rock We Salute You'
                  );

INSERT INTO Track (
                      Track_No,
                      Title,
                      Genre,
                      Length,
                      Artist_Name,
                      Album_Name
                  )
                  VALUES (
                      10,
                      'Spellbound',
                      'Rock',
                      270,
                      'AC/DC',
                      'For Those About To Rock We Salute You'
                  );

INSERT INTO Track (
                      Track_No,
                      Title,
                      Genre,
                      Length,
                      Artist_Name,
                      Album_Name
                  )
                  VALUES (
                      11,
                      'Bad Boy Boogie',
                      'Rock',
                      267,
                      'AC/DC',
                      'Let There Be Rock'
                  );

INSERT INTO Track (
                      Track_No,
                      Title,
                      Genre,
                      Length,
                      Artist_Name,
                      Album_Name
                  )
                  VALUES (
                      12,
                      'Dog Eat Dog',
                      'Rock',
                      215,
                      'AC/DC',
                      'Let There Be Rock'
                  );

INSERT INTO Track (
                      Track_No,
                      Title,
                      Genre,
                      Length,
                      Artist_Name,
                      Album_Name
                  )
                  VALUES (
                      13,
                      'Go Down',
                      'Rock',
                      331,
                      'AC/DC',
                      'Let There Be Rock'
                  );

INSERT INTO Track (
                      Track_No,
                      Title,
                      Genre,
                      Length,
                      Artist_Name,
                      Album_Name
                  )
                  VALUES (
                      14,
                      'Hell Ain''t A Bad Place To Be',
                      'Rock',
                      254,
                      'AC/DC',
                      'Let There Be Rock'
                  );

INSERT INTO Track (
                      Track_No,
                      Title,
                      Genre,
                      Length,
                      Artist_Name,
                      Album_Name
                  )
                  VALUES (
                      15,
                      'Let There Be Rock',
                      'Rock',
                      366,
                      'AC/DC',
                      'Let There Be Rock'
                  );

INSERT INTO Track (
                      Track_No,
                      Title,
                      Genre,
                      Length,
                      Artist_Name,
                      Album_Name
                  )
                  VALUES (
                      16,
                      'Overdose',
                      'Rock',
                      369,
                      'AC/DC',
                      'Let There Be Rock'
                  );

INSERT INTO Track (
                      Track_No,
                      Title,
                      Genre,
                      Length,
                      Artist_Name,
                      Album_Name
                  )
                  VALUES (
                      17,
                      'Problem Child',
                      'Rock',
                      325,
                      'AC/DC',
                      'Let There Be Rock'
                  );

INSERT INTO Track (
                      Track_No,
                      Title,
                      Genre,
                      Length,
                      Artist_Name,
                      Album_Name
                  )
                  VALUES (
                      18,
                      'Whole Lotta Rosie',
                      'Rock',
                      323,
                      'AC/DC',
                      'Let There Be Rock'
                  );

INSERT INTO Track (
                      Track_No,
                      Title,
                      Genre,
                      Length,
                      Artist_Name,
                      Album_Name
                  )
                  VALUES (
                      19,
                      'Balls to the Wall',
                      'Rock',
                      342,
                      'Accept',
                      'Balls to the Wall'
                  );

INSERT INTO Track (
                      Track_No,
                      Title,
                      Genre,
                      Length,
                      Artist_Name,
                      Album_Name
                  )
                  VALUES (
                      20,
                      'Fast As a Shark',
                      'Rock',
                      230,
                      'Accept',
                      'Restless and Wild'
                  );

INSERT INTO Track (
                      Track_No,
                      Title,
                      Genre,
                      Length,
                      Artist_Name,
                      Album_Name
                  )
                  VALUES (
                      21,
                      'Princess of the Dawn',
                      'Rock',
                      375,
                      'Accept',
                      'Restless and Wild'
                  );

INSERT INTO Track (
                      Track_No,
                      Title,
                      Genre,
                      Length,
                      Artist_Name,
                      Album_Name
                  )
                  VALUES (
                      22,
                      'Restless and Wild',
                      'Rock',
                      252,
                      'Accept',
                      'Restless and Wild'
                  );

INSERT INTO Track (
                      Track_No,
                      Title,
                      Genre,
                      Length,
                      Artist_Name,
                      Album_Name
                  )
                  VALUES (
                      23,
                      'Amazing',
                      'Rock',
                      356,
                      'Aerosmith',
                      'Big Ones'
                  );

INSERT INTO Track (
                      Track_No,
                      Title,
                      Genre,
                      Length,
                      Artist_Name,
                      Album_Name
                  )
                  VALUES (
                      24,
                      'Angel',
                      'Rock',
                      307,
                      'Aerosmith',
                      'Big Ones'
                  );

INSERT INTO Track (
                      Track_No,
                      Title,
                      Genre,
                      Length,
                      Artist_Name,
                      Album_Name
                  )
                  VALUES (
                      25,
                      'Blind Man',
                      'Rock',
                      240,
                      'Aerosmith',
                      'Big Ones'
                  );

INSERT INTO Track (
                      Track_No,
                      Title,
                      Genre,
                      Length,
                      Artist_Name,
                      Album_Name
                  )
                  VALUES (
                      26,
                      'Crazy',
                      'Rock',
                      316,
                      'Aerosmith',
                      'Big Ones'
                  );

INSERT INTO Track (
                      Track_No,
                      Title,
                      Genre,
                      Length,
                      Artist_Name,
                      Album_Name
                  )
                  VALUES (
                      27,
                      'Cryin''',
                      'Rock',
                      309,
                      'Aerosmith',
                      'Big Ones'
                  );

INSERT INTO Track (
                      Track_No,
                      Title,
                      Genre,
                      Length,
                      Artist_Name,
                      Album_Name
                  )
                  VALUES (
                      28,
                      'Deuces Are Wild',
                      'Rock',
                      215,
                      'Aerosmith',
                      'Big Ones'
                  );

INSERT INTO Track (
                      Track_No,
                      Title,
                      Genre,
                      Length,
                      Artist_Name,
                      Album_Name
                  )
                  VALUES (
                      29,
                      'Dude (Looks Like A Lady)',
                      'Rock',
                      264,
                      'Aerosmith',
                      'Big Ones'
                  );

INSERT INTO Track (
                      Track_No,
                      Title,
                      Genre,
                      Length,
                      Artist_Name,
                      Album_Name
                  )
                  VALUES (
                      30,
                      'Eat The Rich',
                      'Rock',
                      251,
                      'Aerosmith',
                      'Big Ones'
                  );

INSERT INTO Track (
                      Track_No,
                      Title,
                      Genre,
                      Length,
                      Artist_Name,
                      Album_Name
                  )
                  VALUES (
                      31,
                      'Janie''s Got A Gun',
                      'Rock',
                      330,
                      'Aerosmith',
                      'Big Ones'
                  );

INSERT INTO Track (
                      Track_No,
                      Title,
                      Genre,
                      Length,
                      Artist_Name,
                      Album_Name
                  )
                  VALUES (
                      32,
                      'Livin'' On The Edge',
                      'Rock',
                      381,
                      'Aerosmith',
                      'Big Ones'
                  );

INSERT INTO Track (
                      Track_No,
                      Title,
                      Genre,
                      Length,
                      Artist_Name,
                      Album_Name
                  )
                  VALUES (
                      33,
                      'Love In An Elevator',
                      'Rock',
                      321,
                      'Aerosmith',
                      'Big Ones'
                  );

INSERT INTO Track (
                      Track_No,
                      Title,
                      Genre,
                      Length,
                      Artist_Name,
                      Album_Name
                  )
                  VALUES (
                      34,
                      'Rag Doll',
                      'Rock',
                      264,
                      'Aerosmith',
                      'Big Ones'
                  );

INSERT INTO Track (
                      Track_No,
                      Title,
                      Genre,
                      Length,
                      Artist_Name,
                      Album_Name
                  )
                  VALUES (
                      35,
                      'The Other Side',
                      'Rock',
                      244,
                      'Aerosmith',
                      'Big Ones'
                  );

INSERT INTO Track (
                      Track_No,
                      Title,
                      Genre,
                      Length,
                      Artist_Name,
                      Album_Name
                  )
                  VALUES (
                      36,
                      'Walk On Water',
                      'Rock',
                      295,
                      'Aerosmith',
                      'Big Ones'
                  );

INSERT INTO Track (
                      Track_No,
                      Title,
                      Genre,
                      Length,
                      Artist_Name,
                      Album_Name
                  )
                  VALUES (
                      37,
                      'What It Takes',
                      'Rock',
                      310,
                      'Aerosmith',
                      'Big Ones'
                  );

INSERT INTO Track (
                      Track_No,
                      Title,
                      Genre,
                      Length,
                      Artist_Name,
                      Album_Name
                  )
                  VALUES (
                      38,
                      'All I Really Want',
                      'Rock',
                      284,
                      'Alanis Morissette',
                      'Jagged Little Pill'
                  );

INSERT INTO Track (
                      Track_No,
                      Title,
                      Genre,
                      Length,
                      Artist_Name,
                      Album_Name
                  )
                  VALUES (
                      39,
                      'Forgiven',
                      'Rock',
                      300,
                      'Alanis Morissette',
                      'Jagged Little Pill'
                  );

INSERT INTO Track (
                      Track_No,
                      Title,
                      Genre,
                      Length,
                      Artist_Name,
                      Album_Name
                  )
                  VALUES (
                      40,
                      'Hand In My Pocket',
                      'Rock',
                      221,
                      'Alanis Morissette',
                      'Jagged Little Pill'
                  );

INSERT INTO Track (
                      Track_No,
                      Title,
                      Genre,
                      Length,
                      Artist_Name,
                      Album_Name
                  )
                  VALUES (
                      41,
                      'Head Over Feet',
                      'Rock',
                      267,
                      'Alanis Morissette',
                      'Jagged Little Pill'
                  );

INSERT INTO Track (
                      Track_No,
                      Title,
                      Genre,
                      Length,
                      Artist_Name,
                      Album_Name
                  )
                  VALUES (
                      42,
                      'Ironic',
                      'Rock',
                      229,
                      'Alanis Morissette',
                      'Jagged Little Pill'
                  );

INSERT INTO Track (
                      Track_No,
                      Title,
                      Genre,
                      Length,
                      Artist_Name,
                      Album_Name
                  )
                  VALUES (
                      43,
                      'Mary Jane',
                      'Rock',
                      280,
                      'Alanis Morissette',
                      'Jagged Little Pill'
                  );

INSERT INTO Track (
                      Track_No,
                      Title,
                      Genre,
                      Length,
                      Artist_Name,
                      Album_Name
                  )
                  VALUES (
                      44,
                      'Not The Doctor',
                      'Rock',
                      227,
                      'Alanis Morissette',
                      'Jagged Little Pill'
                  );

INSERT INTO Track (
                      Track_No,
                      Title,
                      Genre,
                      Length,
                      Artist_Name,
                      Album_Name
                  )
                  VALUES (
                      45,
                      'Perfect',
                      'Rock',
                      188,
                      'Alanis Morissette',
                      'Jagged Little Pill'
                  );

INSERT INTO Track (
                      Track_No,
                      Title,
                      Genre,
                      Length,
                      Artist_Name,
                      Album_Name
                  )
                  VALUES (
                      46,
                      'Right Through You',
                      'Rock',
                      176,
                      'Alanis Morissette',
                      'Jagged Little Pill'
                  );

INSERT INTO Track (
                      Track_No,
                      Title,
                      Genre,
                      Length,
                      Artist_Name,
                      Album_Name
                  )
                  VALUES (
                      47,
                      'Wake Up',
                      'Rock',
                      293,
                      'Alanis Morissette',
                      'Jagged Little Pill'
                  );

INSERT INTO Track (
                      Track_No,
                      Title,
                      Genre,
                      Length,
                      Artist_Name,
                      Album_Name
                  )
                  VALUES (
                      48,
                      'You Learn',
                      'Rock',
                      239,
                      'Alanis Morissette',
                      'Jagged Little Pill'
                  );

INSERT INTO Track (
                      Track_No,
                      Title,
                      Genre,
                      Length,
                      Artist_Name,
                      Album_Name
                  )
                  VALUES (
                      49,
                      'You Oughta Know',
                      'Rock',
                      249,
                      'Alanis Morissette',
                      'Jagged Little Pill'
                  );

INSERT INTO Track (
                      Track_No,
                      Title,
                      Genre,
                      Length,
                      Artist_Name,
                      Album_Name
                  )
                  VALUES (
                      50,
                      'You Oughta Know (Alternate)',
                      'Rock',
                      491,
                      'Alanis Morissette',
                      'Jagged Little Pill'
                  );

INSERT INTO Track (
                      Track_No,
                      Title,
                      Genre,
                      Length,
                      Artist_Name,
                      Album_Name
                  )
                  VALUES (
                      51,
                      'Bleed The Freak',
                      'Rock',
                      241,
                      'Alice In Chains',
                      'Facelift'
                  );

INSERT INTO Track (
                      Track_No,
                      Title,
                      Genre,
                      Length,
                      Artist_Name,
                      Album_Name
                  )
                  VALUES (
                      52,
                      'Confusion',
                      'Rock',
                      344,
                      'Alice In Chains',
                      'Facelift'
                  );

INSERT INTO Track (
                      Track_No,
                      Title,
                      Genre,
                      Length,
                      Artist_Name,
                      Album_Name
                  )
                  VALUES (
                      53,
                      'I Can''t Remember',
                      'Rock',
                      222,
                      'Alice In Chains',
                      'Facelift'
                  );

INSERT INTO Track (
                      Track_No,
                      Title,
                      Genre,
                      Length,
                      Artist_Name,
                      Album_Name
                  )
                  VALUES (
                      54,
                      'I Know Somethin (Bout You)',
                      'Rock',
                      261,
                      'Alice In Chains',
                      'Facelift'
                  );

INSERT INTO Track (
                      Track_No,
                      Title,
                      Genre,
                      Length,
                      Artist_Name,
                      Album_Name
                  )
                  VALUES (
                      55,
                      'It Ain''t Like That',
                      'Rock',
                      277,
                      'Alice In Chains',
                      'Facelift'
                  );

INSERT INTO Track (
                      Track_No,
                      Title,
                      Genre,
                      Length,
                      Artist_Name,
                      Album_Name
                  )
                  VALUES (
                      56,
                      'Man In The Box',
                      'Rock',
                      286,
                      'Alice In Chains',
                      'Facelift'
                  );

INSERT INTO Track (
                      Track_No,
                      Title,
                      Genre,
                      Length,
                      Artist_Name,
                      Album_Name
                  )
                  VALUES (
                      57,
                      'Put You Down',
                      'Rock',
                      196,
                      'Alice In Chains',
                      'Facelift'
                  );

INSERT INTO Track (
                      Track_No,
                      Title,
                      Genre,
                      Length,
                      Artist_Name,
                      Album_Name
                  )
                  VALUES (
                      58,
                      'Real Thing',
                      'Rock',
                      243,
                      'Alice In Chains',
                      'Facelift'
                  );

INSERT INTO Track (
                      Track_No,
                      Title,
                      Genre,
                      Length,
                      Artist_Name,
                      Album_Name
                  )
                  VALUES (
                      59,
                      'Sea Of Sorrow',
                      'Rock',
                      349,
                      'Alice In Chains',
                      'Facelift'
                  );

INSERT INTO Track (
                      Track_No,
                      Title,
                      Genre,
                      Length,
                      Artist_Name,
                      Album_Name
                  )
                  VALUES (
                      60,
                      'Sunshine',
                      'Rock',
                      284,
                      'Alice In Chains',
                      'Facelift'
                  );

INSERT INTO Track (
                      Track_No,
                      Title,
                      Genre,
                      Length,
                      Artist_Name,
                      Album_Name
                  )
                  VALUES (
                      61,
                      'We Die Young',
                      'Rock',
                      152,
                      'Alice In Chains',
                      'Facelift'
                  );

INSERT INTO Track (
                      Track_No,
                      Title,
                      Genre,
                      Length,
                      Artist_Name,
                      Album_Name
                  )
                  VALUES (
                      62,
                      'Back to Black',
                      'R&B/Soul',
                      240,
                      'Amy Winehouse',
                      'Back to Black'
                  );

INSERT INTO Track (
                      Track_No,
                      Title,
                      Genre,
                      Length,
                      Artist_Name,
                      Album_Name
                  )
                  VALUES (
                      63,
                      'He Can Only Hold Her',
                      'R&B/Soul',
                      166,
                      'Amy Winehouse',
                      'Back to Black'
                  );

INSERT INTO Track (
                      Track_No,
                      Title,
                      Genre,
                      Length,
                      Artist_Name,
                      Album_Name
                  )
                  VALUES (
                      64,
                      'Just Friends',
                      'R&B/Soul',
                      191,
                      'Amy Winehouse',
                      'Back to Black'
                  );

INSERT INTO Track (
                      Track_No,
                      Title,
                      Genre,
                      Length,
                      Artist_Name,
                      Album_Name
                  )
                  VALUES (
                      65,
                      'Love Is a Losing Game',
                      'R&B/Soul',
                      154,
                      'Amy Winehouse',
                      'Back to Black'
                  );

INSERT INTO Track (
                      Track_No,
                      Title,
                      Genre,
                      Length,
                      Artist_Name,
                      Album_Name
                  )
                  VALUES (
                      66,
                      'Me & Mr. Jones',
                      'R&B/Soul',
                      151,
                      'Amy Winehouse',
                      'Back to Black'
                  );

INSERT INTO Track (
                      Track_No,
                      Title,
                      Genre,
                      Length,
                      Artist_Name,
                      Album_Name
                  )
                  VALUES (
                      67,
                      'Rehab',
                      'R&B/Soul',
                      213,
                      'Amy Winehouse',
                      'Back to Black'
                  );

INSERT INTO Track (
                      Track_No,
                      Title,
                      Genre,
                      Length,
                      Artist_Name,
                      Album_Name
                  )
                  VALUES (
                      68,
                      'Rehab (Hot Chip Remix)',
                      'R&B/Soul',
                      418,
                      'Amy Winehouse',
                      'Back to Black'
                  );

INSERT INTO Track (
                      Track_No,
                      Title,
                      Genre,
                      Length,
                      Artist_Name,
                      Album_Name
                  )
                  VALUES (
                      69,
                      'Some Unholy War',
                      'R&B/Soul',
                      141,
                      'Amy Winehouse',
                      'Back to Black'
                  );

INSERT INTO Track (
                      Track_No,
                      Title,
                      Genre,
                      Length,
                      Artist_Name,
                      Album_Name
                  )
                  VALUES (
                      70,
                      'Tears Dry On Their Own',
                      'R&B/Soul',
                      185,
                      'Amy Winehouse',
                      'Back to Black'
                  );

INSERT INTO Track (
                      Track_No,
                      Title,
                      Genre,
                      Length,
                      Artist_Name,
                      Album_Name
                  )
                  VALUES (
                      71,
                      'Wake Up Alone',
                      'R&B/Soul',
                      221,
                      'Amy Winehouse',
                      'Back to Black'
                  );

INSERT INTO Track (
                      Track_No,
                      Title,
                      Genre,
                      Length,
                      Artist_Name,
                      Album_Name
                  )
                  VALUES (
                      72,
                      'You Know I''m No Good',
                      'R&B/Soul',
                      256,
                      'Amy Winehouse',
                      'Back to Black'
                  );

INSERT INTO Track (
                      Track_No,
                      Title,
                      Genre,
                      Length,
                      Artist_Name,
                      Album_Name
                  )
                  VALUES (
                      73,
                      'You Know I''m No Good (feat. Ghostface Killah)',
                      'R&B/Soul',
                      202,
                      'Amy Winehouse',
                      'Back to Black'
                  );

INSERT INTO Track (
                      Track_No,
                      Title,
                      Genre,
                      Length,
                      Artist_Name,
                      Album_Name
                  )
                  VALUES (
                      74,
                      'Creeping Death',
                      'Metal',
                      308,
                      'Apocalyptica',
                      'Plays Metallica By Four Cellos'
                  );

INSERT INTO Track (
                      Track_No,
                      Title,
                      Genre,
                      Length,
                      Artist_Name,
                      Album_Name
                  )
                  VALUES (
                      75,
                      'Enter Sandman',
                      'Metal',
                      221,
                      'Apocalyptica',
                      'Plays Metallica By Four Cellos'
                  );

INSERT INTO Track (
                      Track_No,
                      Title,
                      Genre,
                      Length,
                      Artist_Name,
                      Album_Name
                  )
                  VALUES (
                      76,
                      'Harvester Of Sorrow',
                      'Metal',
                      374,
                      'Apocalyptica',
                      'Plays Metallica By Four Cellos'
                  );

INSERT INTO Track (
                      Track_No,
                      Title,
                      Genre,
                      Length,
                      Artist_Name,
                      Album_Name
                  )
                  VALUES (
                      77,
                      'Master Of Puppets',
                      'Metal',
                      436,
                      'Apocalyptica',
                      'Plays Metallica By Four Cellos'
                  );

INSERT INTO Track (
                      Track_No,
                      Title,
                      Genre,
                      Length,
                      Artist_Name,
                      Album_Name
                  )
                  VALUES (
                      78,
                      'Sad But True',
                      'Metal',
                      288,
                      'Apocalyptica',
                      'Plays Metallica By Four Cellos'
                  );

INSERT INTO Track (
                      Track_No,
                      Title,
                      Genre,
                      Length,
                      Artist_Name,
                      Album_Name
                  )
                  VALUES (
                      79,
                      'The Unforgiven',
                      'Metal',
                      322,
                      'Apocalyptica',
                      'Plays Metallica By Four Cellos'
                  );

INSERT INTO Track (
                      Track_No,
                      Title,
                      Genre,
                      Length,
                      Artist_Name,
                      Album_Name
                  )
                  VALUES (
                      80,
                      'Welcome Home (Sanitarium)',
                      'Metal',
                      350,
                      'Apocalyptica',
                      'Plays Metallica By Four Cellos'
                  );

INSERT INTO Track (
                      Track_No,
                      Title,
                      Genre,
                      Length,
                      Artist_Name,
                      Album_Name
                  )
                  VALUES (
                      81,
                      'Wherever I May Roam',
                      'Metal',
                      369,
                      'Apocalyptica',
                      'Plays Metallica By Four Cellos'
                  );

INSERT INTO Track (
                      Track_No,
                      Title,
                      Genre,
                      Length,
                      Artist_Name,
                      Album_Name
                  )
                  VALUES (
                      82,
                      'Bring''em Back Alive',
                      'Rock',
                      329,
                      'Audioslave',
                      'Audioslave'
                  );

INSERT INTO Track (
                      Track_No,
                      Title,
                      Genre,
                      Length,
                      Artist_Name,
                      Album_Name
                  )
                  VALUES (
                      83,
                      'Cochise',
                      'Rock',
                      222,
                      'Audioslave',
                      'Audioslave'
                  );

INSERT INTO Track (
                      Track_No,
                      Title,
                      Genre,
                      Length,
                      Artist_Name,
                      Album_Name
                  )
                  VALUES (
                      84,
                      'Exploder',
                      'Rock',
                      206,
                      'Audioslave',
                      'Audioslave'
                  );

INSERT INTO Track (
                      Track_No,
                      Title,
                      Genre,
                      Length,
                      Artist_Name,
                      Album_Name
                  )
                  VALUES (
                      85,
                      'Gasoline',
                      'Rock',
                      279,
                      'Audioslave',
                      'Audioslave'
                  );

INSERT INTO Track (
                      Track_No,
                      Title,
                      Genre,
                      Length,
                      Artist_Name,
                      Album_Name
                  )
                  VALUES (
                      86,
                      'Getaway Car',
                      'Rock',
                      299,
                      'Audioslave',
                      'Audioslave'
                  );

INSERT INTO Track (
                      Track_No,
                      Title,
                      Genre,
                      Length,
                      Artist_Name,
                      Album_Name
                  )
                  VALUES (
                      87,
                      'Hypnotize',
                      'Rock',
                      206,
                      'Audioslave',
                      'Audioslave'
                  );

INSERT INTO Track (
                      Track_No,
                      Title,
                      Genre,
                      Length,
                      Artist_Name,
                      Album_Name
                  )
                  VALUES (
                      88,
                      'I am the Highway',
                      'Rock',
                      334,
                      'Audioslave',
                      'Audioslave'
                  );

INSERT INTO Track (
                      Track_No,
                      Title,
                      Genre,
                      Length,
                      Artist_Name,
                      Album_Name
                  )
                  VALUES (
                      89,
                      'Light My Way',
                      'Rock',
                      303,
                      'Audioslave',
                      'Audioslave'
                  );

INSERT INTO Track (
                      Track_No,
                      Title,
                      Genre,
                      Length,
                      Artist_Name,
                      Album_Name
                  )
                  VALUES (
                      90,
                      'Like a Stone',
                      'Rock',
                      294,
                      'Audioslave',
                      'Audioslave'
                  );

INSERT INTO Track (
                      Track_No,
                      Title,
                      Genre,
                      Length,
                      Artist_Name,
                      Album_Name
                  )
                  VALUES (
                      91,
                      'Set It Off',
                      'Rock',
                      263,
                      'Audioslave',
                      'Audioslave'
                  );

INSERT INTO Track (
                      Track_No,
                      Title,
                      Genre,
                      Length,
                      Artist_Name,
                      Album_Name
                  )
                  VALUES (
                      92,
                      'Shadow on the Sun',
                      'Rock',
                      343,
                      'Audioslave',
                      'Audioslave'
                  );

INSERT INTO Track (
                      Track_No,
                      Title,
                      Genre,
                      Length,
                      Artist_Name,
                      Album_Name
                  )
                  VALUES (
                      93,
                      'Show Me How to Live',
                      'Rock',
                      277,
                      'Audioslave',
                      'Audioslave'
                  );

INSERT INTO Track (
                      Track_No,
                      Title,
                      Genre,
                      Length,
                      Artist_Name,
                      Album_Name
                  )
                  VALUES (
                      94,
                      'The Last Remaining Light',
                      'Rock',
                      317,
                      'Audioslave',
                      'Audioslave'
                  );

INSERT INTO Track (
                      Track_No,
                      Title,
                      Genre,
                      Length,
                      Artist_Name,
                      Album_Name
                  )
                  VALUES (
                      95,
                      'What You Are',
                      'Rock',
                      249,
                      'Audioslave',
                      'Audioslave'
                  );

INSERT INTO Track (
                      Track_No,
                      Title,
                      Genre,
                      Length,
                      Artist_Name,
                      Album_Name
                  )
                  VALUES (
                      96,
                      '#1 Zero',
                      'Alternative & Punk',
                      299,
                      'Audioslave',
                      'Out Of Exile'
                  );

INSERT INTO Track (
                      Track_No,
                      Title,
                      Genre,
                      Length,
                      Artist_Name,
                      Album_Name
                  )
                  VALUES (
                      97,
                      'Be Yourself',
                      'Alternative & Punk',
                      279,
                      'Audioslave',
                      'Out Of Exile'
                  );

INSERT INTO Track (
                      Track_No,
                      Title,
                      Genre,
                      Length,
                      Artist_Name,
                      Album_Name
                  )
                  VALUES (
                      98,
                      'Dandelion',
                      'Alternative & Punk',
                      278,
                      'Audioslave',
                      'Out Of Exile'
                  );

INSERT INTO Track (
                      Track_No,
                      Title,
                      Genre,
                      Length,
                      Artist_Name,
                      Album_Name
                  )
                  VALUES (
                      99,
                      'Doesn''t Remind Me',
                      'Alternative & Punk',
                      255,
                      'Audioslave',
                      'Out Of Exile'
                  );

INSERT INTO Track (
                      Track_No,
                      Title,
                      Genre,
                      Length,
                      Artist_Name,
                      Album_Name
                  )
                  VALUES (
                      100,
                      'Drown Me Slowly',
                      'Alternative & Punk',
                      233,
                      'Audioslave',
                      'Out Of Exile'
                  );

INSERT INTO Track (
                      Track_No,
                      Title,
                      Genre,
                      Length,
                      Artist_Name,
                      Album_Name
                  )
                  VALUES (
                      101,
                      'Heaven''s Dead',
                      'Alternative & Punk',
                      276,
                      'Audioslave',
                      'Out Of Exile'
                  );

INSERT INTO Track (
                      Track_No,
                      Title,
                      Genre,
                      Length,
                      Artist_Name,
                      Album_Name
                  )
                  VALUES (
                      102,
                      'Man Or Animal',
                      'Alternative & Punk',
                      233,
                      'Audioslave',
                      'Out Of Exile'
                  );

INSERT INTO Track (
                      Track_No,
                      Title,
                      Genre,
                      Length,
                      Artist_Name,
                      Album_Name
                  )
                  VALUES (
                      103,
                      'Out Of Exile',
                      'Alternative & Punk',
                      291,
                      'Audioslave',
                      'Out Of Exile'
                  );

INSERT INTO Track (
                      Track_No,
                      Title,
                      Genre,
                      Length,
                      Artist_Name,
                      Album_Name
                  )
                  VALUES (
                      104,
                      'The Curse',
                      'Alternative & Punk',
                      309,
                      'Audioslave',
                      'Out Of Exile'
                  );

INSERT INTO Track (
                      Track_No,
                      Title,
                      Genre,
                      Length,
                      Artist_Name,
                      Album_Name
                  )
                  VALUES (
                      105,
                      'The Worm',
                      'Alternative & Punk',
                      237,
                      'Audioslave',
                      'Out Of Exile'
                  );

INSERT INTO Track (
                      Track_No,
                      Title,
                      Genre,
                      Length,
                      Artist_Name,
                      Album_Name
                  )
                  VALUES (
                      106,
                      'Yesterday To Tomorrow',
                      'Alternative & Punk',
                      273,
                      'Audioslave',
                      'Out Of Exile'
                  );

INSERT INTO Track (
                      Track_No,
                      Title,
                      Genre,
                      Length,
                      Artist_Name,
                      Album_Name
                  )
                  VALUES (
                      107,
                      'Your Time Has Come',
                      'Alternative & Punk',
                      255,
                      'Audioslave',
                      'Out Of Exile'
                  );

INSERT INTO Track (
                      Track_No,
                      Title,
                      Genre,
                      Length,
                      Artist_Name,
                      Album_Name
                  )
                  VALUES (
                      108,
                      '13 Years Of Grief',
                      'Metal',
                      246,
                      'Black Label Society',
                      'Alcohol Fueled Brewtality Live! [Disc 1]'
                  );

INSERT INTO Track (
                      Track_No,
                      Title,
                      Genre,
                      Length,
                      Artist_Name,
                      Album_Name
                  )
                  VALUES (
                      109,
                      'A.N.D.R.O.T.A.Z.',
                      'Metal',
                      266,
                      'Black Label Society',
                      'Alcohol Fueled Brewtality Live! [Disc 1]'
                  );

INSERT INTO Track (
                      Track_No,
                      Title,
                      Genre,
                      Length,
                      Artist_Name,
                      Album_Name
                  )
                  VALUES (
                      110,
                      'All For You',
                      'Metal',
                      235,
                      'Black Label Society',
                      'Alcohol Fueled Brewtality Live! [Disc 1]'
                  );

INSERT INTO Track (
                      Track_No,
                      Title,
                      Genre,
                      Length,
                      Artist_Name,
                      Album_Name
                  )
                  VALUES (
                      111,
                      'Bored To Tears',
                      'Metal',
                      247,
                      'Black Label Society',
                      'Alcohol Fueled Brewtality Live! [Disc 1]'
                  );

INSERT INTO Track (
                      Track_No,
                      Title,
                      Genre,
                      Length,
                      Artist_Name,
                      Album_Name
                  )
                  VALUES (
                      112,
                      'Born To Booze',
                      'Metal',
                      282,
                      'Black Label Society',
                      'Alcohol Fueled Brewtality Live! [Disc 1]'
                  );

INSERT INTO Track (
                      Track_No,
                      Title,
                      Genre,
                      Length,
                      Artist_Name,
                      Album_Name
                  )
                  VALUES (
                      113,
                      'Intro/ Low Down',
                      'Metal',
                      323,
                      'Black Label Society',
                      'Alcohol Fueled Brewtality Live! [Disc 1]'
                  );

INSERT INTO Track (
                      Track_No,
                      Title,
                      Genre,
                      Length,
                      Artist_Name,
                      Album_Name
                  )
                  VALUES (
                      114,
                      'Lost My Better Half',
                      'Metal',
                      284,
                      'Black Label Society',
                      'Alcohol Fueled Brewtality Live! [Disc 1]'
                  );

INSERT INTO Track (
                      Track_No,
                      Title,
                      Genre,
                      Length,
                      Artist_Name,
                      Album_Name
                  )
                  VALUES (
                      115,
                      'No More Tears',
                      'Metal',
                      555,
                      'Black Label Society',
                      'Alcohol Fueled Brewtality Live! [Disc 1]'
                  );

INSERT INTO Track (
                      Track_No,
                      Title,
                      Genre,
                      Length,
                      Artist_Name,
                      Album_Name
                  )
                  VALUES (
                      116,
                      'Phoney Smile Fake Hellos',
                      'Metal',
                      273,
                      'Black Label Society',
                      'Alcohol Fueled Brewtality Live! [Disc 1]'
                  );

INSERT INTO Track (
                      Track_No,
                      Title,
                      Genre,
                      Length,
                      Artist_Name,
                      Album_Name
                  )
                  VALUES (
                      117,
                      'Stronger Than Death',
                      'Metal',
                      300,
                      'Black Label Society',
                      'Alcohol Fueled Brewtality Live! [Disc 1]'
                  );

INSERT INTO Track (
                      Track_No,
                      Title,
                      Genre,
                      Length,
                      Artist_Name,
                      Album_Name
                  )
                  VALUES (
                      118,
                      'Super Terrorizer',
                      'Metal',
                      319,
                      'Black Label Society',
                      'Alcohol Fueled Brewtality Live! [Disc 1]'
                  );

INSERT INTO Track (
                      Track_No,
                      Title,
                      Genre,
                      Length,
                      Artist_Name,
                      Album_Name
                  )
                  VALUES (
                      119,
                      'The Begining... At Last',
                      'Metal',
                      365,
                      'Black Label Society',
                      'Alcohol Fueled Brewtality Live! [Disc 1]'
                  );

INSERT INTO Track (
                      Track_No,
                      Title,
                      Genre,
                      Length,
                      Artist_Name,
                      Album_Name
                  )
                  VALUES (
                      120,
                      'World Of Trouble',
                      'Metal',
                      359,
                      'Black Label Society',
                      'Alcohol Fueled Brewtality Live! [Disc 1]'
                  );

INSERT INTO Track (
                      Track_No,
                      Title,
                      Genre,
                      Length,
                      Artist_Name,
                      Album_Name
                  )
                  VALUES (
                      121,
                      'Blood In The Wall',
                      'Metal',
                      284,
                      'Black Label Society',
                      'Alcohol Fueled Brewtality Live! [Disc 2]'
                  );

INSERT INTO Track (
                      Track_No,
                      Title,
                      Genre,
                      Length,
                      Artist_Name,
                      Album_Name
                  )
                  VALUES (
                      122,
                      'Heart Of Gold',
                      'Metal',
                      194,
                      'Black Label Society',
                      'Alcohol Fueled Brewtality Live! [Disc 2]'
                  );

INSERT INTO Track (
                      Track_No,
                      Title,
                      Genre,
                      Length,
                      Artist_Name,
                      Album_Name
                  )
                  VALUES (
                      123,
                      'Like A Bird',
                      'Metal',
                      276,
                      'Black Label Society',
                      'Alcohol Fueled Brewtality Live! [Disc 2]'
                  );

INSERT INTO Track (
                      Track_No,
                      Title,
                      Genre,
                      Length,
                      Artist_Name,
                      Album_Name
                  )
                  VALUES (
                      124,
                      'Snowblind',
                      'Metal',
                      420,
                      'Black Label Society',
                      'Alcohol Fueled Brewtality Live! [Disc 2]'
                  );

INSERT INTO Track (
                      Track_No,
                      Title,
                      Genre,
                      Length,
                      Artist_Name,
                      Album_Name
                  )
                  VALUES (
                      125,
                      'The Beginning...At Last',
                      'Metal',
                      271,
                      'Black Label Society',
                      'Alcohol Fueled Brewtality Live! [Disc 2]'
                  );

INSERT INTO Track (
                      Track_No,
                      Title,
                      Genre,
                      Length,
                      Artist_Name,
                      Album_Name
                  )
                  VALUES (
                      126,
                      'Behind The Wall Of Sleep',
                      'Metal',
                      217,
                      'Black Sabbath',
                      'Black Sabbath'
                  );

INSERT INTO Track (
                      Track_No,
                      Title,
                      Genre,
                      Length,
                      Artist_Name,
                      Album_Name
                  )
                  VALUES (
                      127,
                      'Black Sabbath',
                      'Metal',
                      382,
                      'Black Sabbath',
                      'Black Sabbath'
                  );

INSERT INTO Track (
                      Track_No,
                      Title,
                      Genre,
                      Length,
                      Artist_Name,
                      Album_Name
                  )
                  VALUES (
                      128,
                      'Evil Woman',
                      'Metal',
                      204,
                      'Black Sabbath',
                      'Black Sabbath'
                  );

INSERT INTO Track (
                      Track_No,
                      Title,
                      Genre,
                      Length,
                      Artist_Name,
                      Album_Name
                  )
                  VALUES (
                      129,
                      'N.I.B.',
                      'Metal',
                      368,
                      'Black Sabbath',
                      'Black Sabbath'
                  );

INSERT INTO Track (
                      Track_No,
                      Title,
                      Genre,
                      Length,
                      Artist_Name,
                      Album_Name
                  )
                  VALUES (
                      130,
                      'Sleeping Village',
                      'Metal',
                      644,
                      'Black Sabbath',
                      'Black Sabbath'
                  );

INSERT INTO Track (
                      Track_No,
                      Title,
                      Genre,
                      Length,
                      Artist_Name,
                      Album_Name
                  )
                  VALUES (
                      131,
                      'The Wizard',
                      'Metal',
                      264,
                      'Black Sabbath',
                      'Black Sabbath'
                  );

INSERT INTO Track (
                      Track_No,
                      Title,
                      Genre,
                      Length,
                      Artist_Name,
                      Album_Name
                  )
                  VALUES (
                      132,
                      'Warning',
                      'Metal',
                      212,
                      'Black Sabbath',
                      'Black Sabbath'
                  );

INSERT INTO Track (
                      Track_No,
                      Title,
                      Genre,
                      Length,
                      Artist_Name,
                      Album_Name
                  )
                  VALUES (
                      133,
                      'A Banda',
                      'Latin',
                      132,
                      'Chico Buarque',
                      'Minha Historia'
                  );

INSERT INTO Track (
                      Track_No,
                      Title,
                      Genre,
                      Length,
                      Artist_Name,
                      Album_Name
                  )
                  VALUES (
                      134,
                      'Atras Da Porta',
                      'Latin',
                      189,
                      'Chico Buarque',
                      'Minha Historia'
                  );

INSERT INTO Track (
                      Track_No,
                      Title,
                      Genre,
                      Length,
                      Artist_Name,
                      Album_Name
                  )
                  VALUES (
                      135,
                      'Brejo Da Cruz',
                      'Latin',
                      214,
                      'Chico Buarque',
                      'Minha Historia'
                  );

INSERT INTO Track (
                      Track_No,
                      Title,
                      Genre,
                      Length,
                      Artist_Name,
                      Album_Name
                  )
                  VALUES (
                      136,
                      'Carolina',
                      'Latin',
                      163,
                      'Chico Buarque',
                      'Minha Historia'
                  );

INSERT INTO Track (
                      Track_No,
                      Title,
                      Genre,
                      Length,
                      Artist_Name,
                      Album_Name
                  )
                  VALUES (
                      137,
                      'Fora Da Ordem',
                      'Latin',
                      354,
                      'Chico Buarque',
                      'Minha Historia'
                  );

INSERT INTO Track (
                      Track_No,
                      Title,
                      Genre,
                      Length,
                      Artist_Name,
                      Album_Name
                  )
                  VALUES (
                      138,
                      'Geni E O Zepelim',
                      'Latin',
                      317,
                      'Chico Buarque',
                      'Minha Historia'
                  );

INSERT INTO Track (
                      Track_No,
                      Title,
                      Genre,
                      Length,
                      Artist_Name,
                      Album_Name
                  )
                  VALUES (
                      139,
                      'Meia-Lua Inteira',
                      'Latin',
                      222,
                      'Chico Buarque',
                      'Minha Historia'
                  );

INSERT INTO Track (
                      Track_No,
                      Title,
                      Genre,
                      Length,
                      Artist_Name,
                      Album_Name
                  )
                  VALUES (
                      140,
                      'Menino Do Rio',
                      'Latin',
                      147,
                      'Chico Buarque',
                      'Minha Historia'
                  );

INSERT INTO Track (
                      Track_No,
                      Title,
                      Genre,
                      Length,
                      Artist_Name,
                      Album_Name
                  )
                  VALUES (
                      141,
                      'Meu Caro Amigo',
                      'Latin',
                      260,
                      'Chico Buarque',
                      'Minha Historia'
                  );

INSERT INTO Track (
                      Track_No,
                      Title,
                      Genre,
                      Length,
                      Artist_Name,
                      Album_Name
                  )
                  VALUES (
                      142,
                      'Minha Historia',
                      'Latin',
                      182,
                      'Chico Buarque',
                      'Minha Historia'
                  );

INSERT INTO Track (
                      Track_No,
                      Title,
                      Genre,
                      Length,
                      Artist_Name,
                      Album_Name
                  )
                  VALUES (
                      143,
                      'Morena De Angola',
                      'Latin',
                      186,
                      'Chico Buarque',
                      'Minha Historia'
                  );

INSERT INTO Track (
                      Track_No,
                      Title,
                      Genre,
                      Length,
                      Artist_Name,
                      Album_Name
                  )
                  VALUES (
                      144,
                      'O Estrangeiro',
                      'Latin',
                      374,
                      'Chico Buarque',
                      'Minha Historia'
                  );

INSERT INTO Track (
                      Track_No,
                      Title,
                      Genre,
                      Length,
                      Artist_Name,
                      Album_Name
                  )
                  VALUES (
                      145,
                      'O Leaozinho',
                      'Latin',
                      184,
                      'Chico Buarque',
                      'Minha Historia'
                  );

INSERT INTO Track (
                      Track_No,
                      Title,
                      Genre,
                      Length,
                      Artist_Name,
                      Album_Name
                  )
                  VALUES (
                      146,
                      'Podres Poderes',
                      'Latin',
                      259,
                      'Chico Buarque',
                      'Minha Historia'
                  );

INSERT INTO Track (
                      Track_No,
                      Title,
                      Genre,
                      Length,
                      Artist_Name,
                      Album_Name
                  )
                  VALUES (
                      147,
                      'Qualquer Coisa',
                      'Latin',
                      193,
                      'Chico Buarque',
                      'Minha Historia'
                  );

INSERT INTO Track (
                      Track_No,
                      Title,
                      Genre,
                      Length,
                      Artist_Name,
                      Album_Name
                  )
                  VALUES (
                      148,
                      'Queixa',
                      'Latin',
                      299,
                      'Chico Buarque',
                      'Minha Historia'
                  );

INSERT INTO Track (
                      Track_No,
                      Title,
                      Genre,
                      Length,
                      Artist_Name,
                      Album_Name
                  )
                  VALUES (
                      149,
                      'Samba De Orly',
                      'Latin',
                      162,
                      'Chico Buarque',
                      'Minha Historia'
                  );

INSERT INTO Track (
                      Track_No,
                      Title,
                      Genre,
                      Length,
                      Artist_Name,
                      Album_Name
                  )
                  VALUES (
                      150,
                      'Sampa',
                      'Latin',
                      185,
                      'Chico Buarque',
                      'Minha Historia'
                  );

INSERT INTO Track (
                      Track_No,
                      Title,
                      Genre,
                      Length,
                      Artist_Name,
                      Album_Name
                  )
                  VALUES (
                      151,
                      'Tatuagem',
                      'Latin',
                      172,
                      'Chico Buarque',
                      'Minha Historia'
                  );

INSERT INTO Track (
                      Track_No,
                      Title,
                      Genre,
                      Length,
                      Artist_Name,
                      Album_Name
                  )
                  VALUES (
                      152,
                      'Terra',
                      'Latin',
                      401,
                      'Chico Buarque',
                      'Minha Historia'
                  );

INSERT INTO Track (
                      Track_No,
                      Title,
                      Genre,
                      Length,
                      Artist_Name,
                      Album_Name
                  )
                  VALUES (
                      153,
                      'Um Indio',
                      'Latin',
                      195,
                      'Chico Buarque',
                      'Minha Historia'
                  );

INSERT INTO Track (
                      Track_No,
                      Title,
                      Genre,
                      Length,
                      Artist_Name,
                      Album_Name
                  )
                  VALUES (
                      154,
                      'Vai Passar',
                      'Latin',
                      369,
                      'Chico Buarque',
                      'Minha Historia'
                  );

INSERT INTO Track (
                      Track_No,
                      Title,
                      Genre,
                      Length,
                      Artist_Name,
                      Album_Name
                  )
                  VALUES (
                      155,
                      'Vai Trabalhar Vagabundo',
                      'Latin',
                      139,
                      'Chico Buarque',
                      'Minha Historia'
                  );

INSERT INTO Track (
                      Track_No,
                      Title,
                      Genre,
                      Length,
                      Artist_Name,
                      Album_Name
                  )
                  VALUES (
                      156,
                      'Voce Nao Entende Nada - Cotidiano',
                      'Latin',
                      421,
                      'Chico Buarque',
                      'Minha Historia'
                  );

INSERT INTO Track (
                      Track_No,
                      Title,
                      Genre,
                      Length,
                      Artist_Name,
                      Album_Name
                  )
                  VALUES (
                      157,
                      'Voce e Linda',
                      'Latin',
                      242,
                      'Chico Buarque',
                      'Minha Historia'
                  );

INSERT INTO Track (
                      Track_No,
                      Title,
                      Genre,
                      Length,
                      Artist_Name,
                      Album_Name
                  )
                  VALUES (
                      158,
                      'Bloodsucker',
                      'Rock',
                      256,
                      'Deep Purple',
                      'Deep Purple In Rock'
                  );

INSERT INTO Track (
                      Track_No,
                      Title,
                      Genre,
                      Length,
                      Artist_Name,
                      Album_Name
                  )
                  VALUES (
                      159,
                      'Child In Time',
                      'Rock',
                      620,
                      'Deep Purple',
                      'Deep Purple In Rock'
                  );

INSERT INTO Track (
                      Track_No,
                      Title,
                      Genre,
                      Length,
                      Artist_Name,
                      Album_Name
                  )
                  VALUES (
                      160,
                      'Flight Of The Rat',
                      'Rock',
                      478,
                      'Deep Purple',
                      'Deep Purple In Rock'
                  );

INSERT INTO Track (
                      Track_No,
                      Title,
                      Genre,
                      Length,
                      Artist_Name,
                      Album_Name
                  )
                  VALUES (
                      161,
                      'Hard Lovin'' Man',
                      'Rock',
                      431,
                      'Deep Purple',
                      'Deep Purple In Rock'
                  );

INSERT INTO Track (
                      Track_No,
                      Title,
                      Genre,
                      Length,
                      Artist_Name,
                      Album_Name
                  )
                  VALUES (
                      162,
                      'Into The Fire',
                      'Rock',
                      210,
                      'Deep Purple',
                      'Deep Purple In Rock'
                  );

INSERT INTO Track (
                      Track_No,
                      Title,
                      Genre,
                      Length,
                      Artist_Name,
                      Album_Name
                  )
                  VALUES (
                      163,
                      'Living Wreck',
                      'Rock',
                      274,
                      'Deep Purple',
                      'Deep Purple In Rock'
                  );

INSERT INTO Track (
                      Track_No,
                      Title,
                      Genre,
                      Length,
                      Artist_Name,
                      Album_Name
                  )
                  VALUES (
                      164,
                      'Speed King',
                      'Rock',
                      264,
                      'Deep Purple',
                      'Deep Purple In Rock'
                  );

INSERT INTO Track (
                      Track_No,
                      Title,
                      Genre,
                      Length,
                      Artist_Name,
                      Album_Name
                  )
                  VALUES (
                      165,
                      'Burn',
                      'Rock',
                      453,
                      'Deep Purple',
                      'MK III The Final Concerts [Disc 1]'
                  );

INSERT INTO Track (
                      Track_No,
                      Title,
                      Genre,
                      Length,
                      Artist_Name,
                      Album_Name
                  )
                  VALUES (
                      166,
                      'Gypsy',
                      'Rock',
                      339,
                      'Deep Purple',
                      'MK III The Final Concerts [Disc 1]'
                  );

INSERT INTO Track (
                      Track_No,
                      Title,
                      Genre,
                      Length,
                      Artist_Name,
                      Album_Name
                  )
                  VALUES (
                      167,
                      'Lady Double Dealer',
                      'Rock',
                      233,
                      'Deep Purple',
                      'MK III The Final Concerts [Disc 1]'
                  );

INSERT INTO Track (
                      Track_No,
                      Title,
                      Genre,
                      Length,
                      Artist_Name,
                      Album_Name
                  )
                  VALUES (
                      168,
                      'Mistreated',
                      'Rock',
                      758,
                      'Deep Purple',
                      'MK III The Final Concerts [Disc 1]'
                  );

INSERT INTO Track (
                      Track_No,
                      Title,
                      Genre,
                      Length,
                      Artist_Name,
                      Album_Name
                  )
                  VALUES (
                      169,
                      'Smoke On The Water',
                      'Rock',
                      618,
                      'Deep Purple',
                      'MK III The Final Concerts [Disc 1]'
                  );

INSERT INTO Track (
                      Track_No,
                      Title,
                      Genre,
                      Length,
                      Artist_Name,
                      Album_Name
                  )
                  VALUES (
                      170,
                      'Stormbringer',
                      'Rock',
                      277,
                      'Deep Purple',
                      'MK III The Final Concerts [Disc 1]'
                  );

INSERT INTO Track (
                      Track_No,
                      Title,
                      Genre,
                      Length,
                      Artist_Name,
                      Album_Name
                  )
                  VALUES (
                      171,
                      'You Fool No One',
                      'Rock',
                      804,
                      'Deep Purple',
                      'MK III The Final Concerts [Disc 1]'
                  );

INSERT INTO Track (
                      Track_No,
                      Title,
                      Genre,
                      Length,
                      Artist_Name,
                      Album_Name
                  )
                  VALUES (
                      172,
                      'A Castle Full Of Rascals',
                      'Rock',
                      311,
                      'Deep Purple',
                      'Purpendicular'
                  );

INSERT INTO Track (
                      Track_No,
                      Title,
                      Genre,
                      Length,
                      Artist_Name,
                      Album_Name
                  )
                  VALUES (
                      173,
                      'A Touch Away',
                      'Rock',
                      276,
                      'Deep Purple',
                      'Purpendicular'
                  );

INSERT INTO Track (
                      Track_No,
                      Title,
                      Genre,
                      Length,
                      Artist_Name,
                      Album_Name
                  )
                  VALUES (
                      174,
                      'Cascades : I''m Not Your Lover',
                      'Rock',
                      283,
                      'Deep Purple',
                      'Purpendicular'
                  );

INSERT INTO Track (
                      Track_No,
                      Title,
                      Genre,
                      Length,
                      Artist_Name,
                      Album_Name
                  )
                  VALUES (
                      175,
                      'Hey Cisco',
                      'Rock',
                      354,
                      'Deep Purple',
                      'Purpendicular'
                  );

INSERT INTO Track (
                      Track_No,
                      Title,
                      Genre,
                      Length,
                      Artist_Name,
                      Album_Name
                  )
                  VALUES (
                      176,
                      'Loosen My Strings',
                      'Rock',
                      359,
                      'Deep Purple',
                      'Purpendicular'
                  );

INSERT INTO Track (
                      Track_No,
                      Title,
                      Genre,
                      Length,
                      Artist_Name,
                      Album_Name
                  )
                  VALUES (
                      177,
                      'Rosa''s Cantina',
                      'Rock',
                      312,
                      'Deep Purple',
                      'Purpendicular'
                  );

INSERT INTO Track (
                      Track_No,
                      Title,
                      Genre,
                      Length,
                      Artist_Name,
                      Album_Name
                  )
                  VALUES (
                      178,
                      'Somebody Stole My Guitar',
                      'Rock',
                      249,
                      'Deep Purple',
                      'Purpendicular'
                  );

INSERT INTO Track (
                      Track_No,
                      Title,
                      Genre,
                      Length,
                      Artist_Name,
                      Album_Name
                  )
                  VALUES (
                      179,
                      'Sometimes I Feel Like Screaming',
                      'Rock',
                      451,
                      'Deep Purple',
                      'Purpendicular'
                  );

INSERT INTO Track (
                      Track_No,
                      Title,
                      Genre,
                      Length,
                      Artist_Name,
                      Album_Name
                  )
                  VALUES (
                      180,
                      'Soon Forgotten',
                      'Rock',
                      287,
                      'Deep Purple',
                      'Purpendicular'
                  );

INSERT INTO Track (
                      Track_No,
                      Title,
                      Genre,
                      Length,
                      Artist_Name,
                      Album_Name
                  )
                  VALUES (
                      181,
                      'The Aviator',
                      'Rock',
                      320,
                      'Deep Purple',
                      'Purpendicular'
                  );

INSERT INTO Track (
                      Track_No,
                      Title,
                      Genre,
                      Length,
                      Artist_Name,
                      Album_Name
                  )
                  VALUES (
                      182,
                      'The Purpendicular Waltz',
                      'Rock',
                      283,
                      'Deep Purple',
                      'Purpendicular'
                  );

INSERT INTO Track (
                      Track_No,
                      Title,
                      Genre,
                      Length,
                      Artist_Name,
                      Album_Name
                  )
                  VALUES (
                      183,
                      'Vavoom : Ted The Mechanic',
                      'Rock',
                      257,
                      'Deep Purple',
                      'Purpendicular'
                  );

INSERT INTO Track (
                      Track_No,
                      Title,
                      Genre,
                      Length,
                      Artist_Name,
                      Album_Name
                  )
                  VALUES (
                      184,
                      'Breakfast In Bed',
                      'Rock',
                      317,
                      'Deep Purple',
                      'Slaves And Masters'
                  );

INSERT INTO Track (
                      Track_No,
                      Title,
                      Genre,
                      Length,
                      Artist_Name,
                      Album_Name
                  )
                  VALUES (
                      185,
                      'Fire In The Basement',
                      'Rock',
                      283,
                      'Deep Purple',
                      'Slaves And Masters'
                  );

INSERT INTO Track (
                      Track_No,
                      Title,
                      Genre,
                      Length,
                      Artist_Name,
                      Album_Name
                  )
                  VALUES (
                      186,
                      'Fortuneteller',
                      'Rock',
                      349,
                      'Deep Purple',
                      'Slaves And Masters'
                  );

INSERT INTO Track (
                      Track_No,
                      Title,
                      Genre,
                      Length,
                      Artist_Name,
                      Album_Name
                  )
                  VALUES (
                      187,
                      'King Of Dreams',
                      'Rock',
                      328,
                      'Deep Purple',
                      'Slaves And Masters'
                  );

INSERT INTO Track (
                      Track_No,
                      Title,
                      Genre,
                      Length,
                      Artist_Name,
                      Album_Name
                  )
                  VALUES (
                      188,
                      'Love Conquers All',
                      'Rock',
                      227,
                      'Deep Purple',
                      'Slaves And Masters'
                  );

INSERT INTO Track (
                      Track_No,
                      Title,
                      Genre,
                      Length,
                      Artist_Name,
                      Album_Name
                  )
                  VALUES (
                      189,
                      'The Cut Runs Deep',
                      'Rock',
                      342,
                      'Deep Purple',
                      'Slaves And Masters'
                  );

INSERT INTO Track (
                      Track_No,
                      Title,
                      Genre,
                      Length,
                      Artist_Name,
                      Album_Name
                  )
                  VALUES (
                      190,
                      'Too Much Is Not Enough',
                      'Rock',
                      257,
                      'Deep Purple',
                      'Slaves And Masters'
                  );

INSERT INTO Track (
                      Track_No,
                      Title,
                      Genre,
                      Length,
                      Artist_Name,
                      Album_Name
                  )
                  VALUES (
                      191,
                      'Truth Hurts',
                      'Rock',
                      314,
                      'Deep Purple',
                      'Slaves And Masters'
                  );

INSERT INTO Track (
                      Track_No,
                      Title,
                      Genre,
                      Length,
                      Artist_Name,
                      Album_Name
                  )
                  VALUES (
                      192,
                      'Wicked Ways',
                      'Rock',
                      393,
                      'Deep Purple',
                      'Slaves And Masters'
                  );

INSERT INTO Track (
                      Track_No,
                      Title,
                      Genre,
                      Length,
                      Artist_Name,
                      Album_Name
                  )
                  VALUES (
                      193,
                      'High Ball Shooter',
                      'Rock',
                      267,
                      'Deep Purple',
                      'Stormbringer'
                  );

INSERT INTO Track (
                      Track_No,
                      Title,
                      Genre,
                      Length,
                      Artist_Name,
                      Album_Name
                  )
                  VALUES (
                      194,
                      'Hold On',
                      'Rock',
                      306,
                      'Deep Purple',
                      'Stormbringer'
                  );

INSERT INTO Track (
                      Track_No,
                      Title,
                      Genre,
                      Length,
                      Artist_Name,
                      Album_Name
                  )
                  VALUES (
                      195,
                      'Holy Man',
                      'Rock',
                      270,
                      'Deep Purple',
                      'Stormbringer'
                  );

INSERT INTO Track (
                      Track_No,
                      Title,
                      Genre,
                      Length,
                      Artist_Name,
                      Album_Name
                  )
                  VALUES (
                      196,
                      'Love Don''t Mean a Thing',
                      'Rock',
                      263,
                      'Deep Purple',
                      'Stormbringer'
                  );

INSERT INTO Track (
                      Track_No,
                      Title,
                      Genre,
                      Length,
                      Artist_Name,
                      Album_Name
                  )
                  VALUES (
                      197,
                      'Soldier Of Fortune',
                      'Rock',
                      193,
                      'Deep Purple',
                      'Stormbringer'
                  );

INSERT INTO Track (
                      Track_No,
                      Title,
                      Genre,
                      Length,
                      Artist_Name,
                      Album_Name
                  )
                  VALUES (
                      198,
                      'Stormbringer',
                      'Rock',
                      246,
                      'Deep Purple',
                      'Stormbringer'
                  );

INSERT INTO Track (
                      Track_No,
                      Title,
                      Genre,
                      Length,
                      Artist_Name,
                      Album_Name
                  )
                  VALUES (
                      199,
                      'The Gypsy',
                      'Rock',
                      242,
                      'Deep Purple',
                      'Stormbringer'
                  );

INSERT INTO Track (
                      Track_No,
                      Title,
                      Genre,
                      Length,
                      Artist_Name,
                      Album_Name
                  )
                  VALUES (
                      200,
                      'You Can''t Do it Right (With the One You Love)',
                      'Rock',
                      203,
                      'Deep Purple',
                      'Stormbringer'
                  );

INSERT INTO Track (
                      Track_No,
                      Title,
                      Genre,
                      Length,
                      Artist_Name,
                      Album_Name
                  )
                  VALUES (
                      201,
                      'A Twist In The Tail',
                      'Rock',
                      257,
                      'Deep Purple',
                      'The Battle Rages On'
                  );

INSERT INTO Track (
                      Track_No,
                      Title,
                      Genre,
                      Length,
                      Artist_Name,
                      Album_Name
                  )
                  VALUES (
                      202,
                      'Anya',
                      'Rock',
                      392,
                      'Deep Purple',
                      'The Battle Rages On'
                  );

INSERT INTO Track (
                      Track_No,
                      Title,
                      Genre,
                      Length,
                      Artist_Name,
                      Album_Name
                  )
                  VALUES (
                      203,
                      'Lick It Up',
                      'Rock',
                      240,
                      'Deep Purple',
                      'The Battle Rages On'
                  );

INSERT INTO Track (
                      Track_No,
                      Title,
                      Genre,
                      Length,
                      Artist_Name,
                      Album_Name
                  )
                  VALUES (
                      204,
                      'Nasty Piece Of Work',
                      'Rock',
                      276,
                      'Deep Purple',
                      'The Battle Rages On'
                  );

INSERT INTO Track (
                      Track_No,
                      Title,
                      Genre,
                      Length,
                      Artist_Name,
                      Album_Name
                  )
                  VALUES (
                      205,
                      'One Man''s Meat',
                      'Rock',
                      278,
                      'Deep Purple',
                      'The Battle Rages On'
                  );

INSERT INTO Track (
                      Track_No,
                      Title,
                      Genre,
                      Length,
                      Artist_Name,
                      Album_Name
                  )
                  VALUES (
                      206,
                      'Ramshackle Man',
                      'Rock',
                      334,
                      'Deep Purple',
                      'The Battle Rages On'
                  );

INSERT INTO Track (
                      Track_No,
                      Title,
                      Genre,
                      Length,
                      Artist_Name,
                      Album_Name
                  )
                  VALUES (
                      207,
                      'Solitaire',
                      'Rock',
                      282,
                      'Deep Purple',
                      'The Battle Rages On'
                  );

INSERT INTO Track (
                      Track_No,
                      Title,
                      Genre,
                      Length,
                      Artist_Name,
                      Album_Name
                  )
                  VALUES (
                      208,
                      'Talk About Love',
                      'Rock',
                      247,
                      'Deep Purple',
                      'The Battle Rages On'
                  );

INSERT INTO Track (
                      Track_No,
                      Title,
                      Genre,
                      Length,
                      Artist_Name,
                      Album_Name
                  )
                  VALUES (
                      209,
                      'The Battle Rages On',
                      'Rock',
                      356,
                      'Deep Purple',
                      'The Battle Rages On'
                  );

INSERT INTO Track (
                      Track_No,
                      Title,
                      Genre,
                      Length,
                      Artist_Name,
                      Album_Name
                  )
                  VALUES (
                      210,
                      'Time To Kill',
                      'Rock',
                      351,
                      'Deep Purple',
                      'The Battle Rages On'
                  );

INSERT INTO Track (
                      Track_No,
                      Title,
                      Genre,
                      Length,
                      Artist_Name,
                      Album_Name
                  )
                  VALUES (
                      211,
                      'Going Down / Highway Star',
                      'Rock',
                      913,
                      'Deep Purple',
                      'The Final Concerts (Disc 2)'
                  );

INSERT INTO Track (
                      Track_No,
                      Title,
                      Genre,
                      Length,
                      Artist_Name,
                      Album_Name
                  )
                  VALUES (
                      212,
                      'Mistreated (Alternate Version)',
                      'Rock',
                      854,
                      'Deep Purple',
                      'The Final Concerts (Disc 2)'
                  );

INSERT INTO Track (
                      Track_No,
                      Title,
                      Genre,
                      Length,
                      Artist_Name,
                      Album_Name
                  )
                  VALUES (
                      213,
                      'Space Truckin''',
                      'Rock',
                      1196,
                      'Deep Purple',
                      'The Final Concerts (Disc 2)'
                  );

INSERT INTO Track (
                      Track_No,
                      Title,
                      Genre,
                      Length,
                      Artist_Name,
                      Album_Name
                  )
                  VALUES (
                      214,
                      'You Fool No One (Alternate Version)',
                      'Rock',
                      763,
                      'Deep Purple',
                      'The Final Concerts (Disc 2)'
                  );

INSERT INTO Track (
                      Track_No,
                      Title,
                      Genre,
                      Length,
                      Artist_Name,
                      Album_Name
                  )
                  VALUES (
                      215,
                      'Action',
                      'Rock',
                      220,
                      'Def Leppard',
                      'Vault: Def Leppard''s Greatest Hits'
                  );

INSERT INTO Track (
                      Track_No,
                      Title,
                      Genre,
                      Length,
                      Artist_Name,
                      Album_Name
                  )
                  VALUES (
                      216,
                      'Animal',
                      'Rock',
                      244,
                      'Def Leppard',
                      'Vault: Def Leppard''s Greatest Hits'
                  );

INSERT INTO Track (
                      Track_No,
                      Title,
                      Genre,
                      Length,
                      Artist_Name,
                      Album_Name
                  )
                  VALUES (
                      217,
                      'Armageddon It',
                      'Rock',
                      322,
                      'Def Leppard',
                      'Vault: Def Leppard''s Greatest Hits'
                  );

INSERT INTO Track (
                      Track_No,
                      Title,
                      Genre,
                      Length,
                      Artist_Name,
                      Album_Name
                  )
                  VALUES (
                      218,
                      'Bringin'' On The Heartbreak',
                      'Rock',
                      272,
                      'Def Leppard',
                      'Vault: Def Leppard''s Greatest Hits'
                  );

INSERT INTO Track (
                      Track_No,
                      Title,
                      Genre,
                      Length,
                      Artist_Name,
                      Album_Name
                  )
                  VALUES (
                      219,
                      'Have You Ever Needed Someone So Bad',
                      'Rock',
                      319,
                      'Def Leppard',
                      'Vault: Def Leppard''s Greatest Hits'
                  );

INSERT INTO Track (
                      Track_No,
                      Title,
                      Genre,
                      Length,
                      Artist_Name,
                      Album_Name
                  )
                  VALUES (
                      220,
                      'Heaven Is',
                      'Rock',
                      214,
                      'Def Leppard',
                      'Vault: Def Leppard''s Greatest Hits'
                  );

INSERT INTO Track (
                      Track_No,
                      Title,
                      Genre,
                      Length,
                      Artist_Name,
                      Album_Name
                  )
                  VALUES (
                      221,
                      'Hysteria',
                      'Rock',
                      355,
                      'Def Leppard',
                      'Vault: Def Leppard''s Greatest Hits'
                  );

INSERT INTO Track (
                      Track_No,
                      Title,
                      Genre,
                      Length,
                      Artist_Name,
                      Album_Name
                  )
                  VALUES (
                      222,
                      'Let''s Get Rocked',
                      'Rock',
                      296,
                      'Def Leppard',
                      'Vault: Def Leppard''s Greatest Hits'
                  );

INSERT INTO Track (
                      Track_No,
                      Title,
                      Genre,
                      Length,
                      Artist_Name,
                      Album_Name
                  )
                  VALUES (
                      223,
                      'Love Bites',
                      'Rock',
                      346,
                      'Def Leppard',
                      'Vault: Def Leppard''s Greatest Hits'
                  );

INSERT INTO Track (
                      Track_No,
                      Title,
                      Genre,
                      Length,
                      Artist_Name,
                      Album_Name
                  )
                  VALUES (
                      224,
                      'Make Love Like A Man',
                      'Rock',
                      255,
                      'Def Leppard',
                      'Vault: Def Leppard''s Greatest Hits'
                  );

INSERT INTO Track (
                      Track_No,
                      Title,
                      Genre,
                      Length,
                      Artist_Name,
                      Album_Name
                  )
                  VALUES (
                      225,
                      'Photograph',
                      'Rock',
                      248,
                      'Def Leppard',
                      'Vault: Def Leppard''s Greatest Hits'
                  );

INSERT INTO Track (
                      Track_No,
                      Title,
                      Genre,
                      Length,
                      Artist_Name,
                      Album_Name
                  )
                  VALUES (
                      226,
                      'Pour Some Sugar On Me',
                      'Rock',
                      292,
                      'Def Leppard',
                      'Vault: Def Leppard''s Greatest Hits'
                  );

INSERT INTO Track (
                      Track_No,
                      Title,
                      Genre,
                      Length,
                      Artist_Name,
                      Album_Name
                  )
                  VALUES (
                      227,
                      'Rock Of Ages',
                      'Rock',
                      248,
                      'Def Leppard',
                      'Vault: Def Leppard''s Greatest Hits'
                  );

INSERT INTO Track (
                      Track_No,
                      Title,
                      Genre,
                      Length,
                      Artist_Name,
                      Album_Name
                  )
                  VALUES (
                      228,
                      'Rocket',
                      'Rock',
                      247,
                      'Def Leppard',
                      'Vault: Def Leppard''s Greatest Hits'
                  );

INSERT INTO Track (
                      Track_No,
                      Title,
                      Genre,
                      Length,
                      Artist_Name,
                      Album_Name
                  )
                  VALUES (
                      229,
                      'Two Steps Behind [Acoustic Version]',
                      'Rock',
                      259,
                      'Def Leppard',
                      'Vault: Def Leppard''s Greatest Hits'
                  );

INSERT INTO Track (
                      Track_No,
                      Title,
                      Genre,
                      Length,
                      Artist_Name,
                      Album_Name
                  )
                  VALUES (
                      230,
                      'When Love & Hate Collide',
                      'Rock',
                      257,
                      'Def Leppard',
                      'Vault: Def Leppard''s Greatest Hits'
                  );

INSERT INTO Track (
                      Track_No,
                      Title,
                      Genre,
                      Length,
                      Artist_Name,
                      Album_Name
                  )
                  VALUES (
                      231,
                      'A Rua',
                      'Latin',
                      238,
                      'Ed Motta',
                      'The Best of Ed Motta'
                  );

INSERT INTO Track (
                      Track_No,
                      Title,
                      Genre,
                      Length,
                      Artist_Name,
                      Album_Name
                  )
                  VALUES (
                      232,
                      'Agora Que O Dia Acordou',
                      'Latin',
                      323,
                      'Ed Motta',
                      'The Best of Ed Motta'
                  );

INSERT INTO Track (
                      Track_No,
                      Title,
                      Genre,
                      Length,
                      Artist_Name,
                      Album_Name
                  )
                  VALUES (
                      233,
                      'Baixo Rio',
                      'Latin',
                      198,
                      'Ed Motta',
                      'The Best of Ed Motta'
                  );

INSERT INTO Track (
                      Track_No,
                      Title,
                      Genre,
                      Length,
                      Artist_Name,
                      Album_Name
                  )
                  VALUES (
                      234,
                      'Do You Have Other Loves?',
                      'Latin',
                      295,
                      'Ed Motta',
                      'The Best of Ed Motta'
                  );

INSERT INTO Track (
                      Track_No,
                      Title,
                      Genre,
                      Length,
                      Artist_Name,
                      Album_Name
                  )
                  VALUES (
                      235,
                      'Manuel',
                      'Latin',
                      230,
                      'Ed Motta',
                      'The Best of Ed Motta'
                  );

INSERT INTO Track (
                      Track_No,
                      Title,
                      Genre,
                      Length,
                      Artist_Name,
                      Album_Name
                  )
                  VALUES (
                      236,
                      'Seis Da Tarde',
                      'Latin',
                      238,
                      'Ed Motta',
                      'The Best of Ed Motta'
                  );

INSERT INTO Track (
                      Track_No,
                      Title,
                      Genre,
                      Length,
                      Artist_Name,
                      Album_Name
                  )
                  VALUES (
                      237,
                      'Sombras Do Meu Destino',
                      'Latin',
                      280,
                      'Ed Motta',
                      'The Best of Ed Motta'
                  );

INSERT INTO Track (
                      Track_No,
                      Title,
                      Genre,
                      Length,
                      Artist_Name,
                      Album_Name
                  )
                  VALUES (
                      238,
                      'Um Contrato Com Deus',
                      'Latin',
                      202,
                      'Ed Motta',
                      'The Best of Ed Motta'
                  );

INSERT INTO Track (
                      Track_No,
                      Title,
                      Genre,
                      Length,
                      Artist_Name,
                      Album_Name
                  )
                  VALUES (
                      239,
                      'Um Jantar Pra Dois',
                      'Latin',
                      244,
                      'Ed Motta',
                      'The Best of Ed Motta'
                  );

INSERT INTO Track (
                      Track_No,
                      Title,
                      Genre,
                      Length,
                      Artist_Name,
                      Album_Name
                  )
                  VALUES (
                      240,
                      'Um Love',
                      'Latin',
                      181,
                      'Ed Motta',
                      'The Best of Ed Motta'
                  );


-- Table: Writes
CREATE TABLE Writes (
    Name    VARCHAR (40),
    Item_No INTEGER,
    PRIMARY KEY (
        Name,
        Item_No
    ),
    FOREIGN KEY (
        Name
    )
    REFERENCES Author (Name),
    FOREIGN KEY (
        Item_No
    )
    REFERENCES Audiobook (Item_No) 
);

INSERT INTO Writes (
                       Name,
                       Item_No
                   )
                   VALUES (
                       'JK Rowling',
                       NULL
                   );

INSERT INTO Writes (
                       Name,
                       Item_No
                   )
                   VALUES (
                       'Habby',
                       NULL
                   );

INSERT INTO Writes (
                       Name,
                       Item_No
                   )
                   VALUES (
                       'Bobby',
                       NULL
                   );

INSERT INTO Writes (
                       Name,
                       Item_No
                   )
                   VALUES (
                       'Napure',
                       NULL
                   );

INSERT INTO Writes (
                       Name,
                       Item_No
                   )
                   VALUES (
                       'Pooler',
                       NULL
                   );

INSERT INTO Writes (
                       Name,
                       Item_No
                   )
                   VALUES (
                       'Toddler',
                       NULL
                   );

INSERT INTO Writes (
                       Name,
                       Item_No
                   )
                   VALUES (
                       'Ak Tooth',
                       NULL
                   );

INSERT INTO Writes (
                       Name,
                       Item_No
                   )
                   VALUES (
                       'Moogle',
                       NULL
                   );

INSERT INTO Writes (
                       Name,
                       Item_No
                   )
                   VALUES (
                       'Johnlo',
                       NULL
                   );

INSERT INTO Writes (
                       Name,
                       Item_No
                   )
                   VALUES (
                       'Look',
                       NULL
                   );

INSERT INTO Writes (
                       Name,
                       Item_No
                   )
                   VALUES (
                       'Luke',
                       NULL
                   );

INSERT INTO Writes (
                       Name,
                       Item_No
                   )
                   VALUES (
                       'John',
                       NULL
                   );

INSERT INTO Writes (
                       Name,
                       Item_No
                   )
                   VALUES (
                       'Mathew',
                       NULL
                   );

INSERT INTO Writes (
                       Name,
                       Item_No
                   )
                   VALUES (
                       'Mark',
                       NULL
                   );

INSERT INTO Writes (
                       Name,
                       Item_No
                   )
                   VALUES (
                       'Peter',
                       NULL
                   );

INSERT INTO Writes (
                       Name,
                       Item_No
                   )
                   VALUES (
                       'Simon',
                       NULL
                   );

INSERT INTO Writes (
                       Name,
                       Item_No
                   )
                   VALUES (
                       'Paul',
                       NULL
                   );

INSERT INTO Writes (
                       Name,
                       Item_No
                   )
                   VALUES (
                       'Mary',
                       NULL
                   );

INSERT INTO Writes (
                       Name,
                       Item_No
                   )
                   VALUES (
                       'Mohammad',
                       NULL
                   );

INSERT INTO Writes (
                       Name,
                       Item_No
                   )
                   VALUES (
                       'Ghandi',
                       NULL
                   );


COMMIT TRANSACTION;
PRAGMA foreign_keys = on;
