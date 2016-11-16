CREATE TABLE Client
  (
    Client_ID  bigint NOT NULL ,
    First_Name VARCHAR (30) NOT NULL ,
    Last_Name  VARCHAR (30) NOT NULL ,
    Phone      bigint NOT NULL ,
    Street     VARCHAR (50) NOT NULL ,
    Zip_Zip_ID bigint NOT NULL
  ) ;
CREATE UNIQUE INDEX Client__IDX ON Client
  (
    Zip_Zip_ID ASC
  )
  ;
ALTER TABLE Client ADD CONSTRAINT Client_PK PRIMARY KEY ( Client_ID ) ;


CREATE TABLE Entertainer
  (
    Entertainer_ID bigint NOT NULL ,
    Name           VARCHAR (30) NOT NULL ,
    Phone          bigint NOT NULL ,
    Type           VARCHAR (30) NOT NULL
  ) ;
ALTER TABLE Entertainer ADD CONSTRAINT Entertainer_PK PRIMARY KEY ( Entertainer_ID ) ;


CREATE TABLE Event
  (
    Event_ID                     bigint NOT NULL ,
    Event_Date                   DATE NOT NULL ,
    Event_Start_Time             DATE NOT NULL ,
    Event_Duration               DATE NOT NULL ,
    Event_Type                   VARCHAR (30) NOT NULL ,
    Num_Of_Guests                bigint NOT NULL ,
    LinenColor                   VARCHAR (30) ,
    Num_Of_Waiters               bigint ,
    Num_Of_Bartenders            bigint ,
    TotalPrice                   bigint NOT NULL ,
    Florist_Cost                 bigint ,
    Musician_Cost                bigint ,
    Entertainer_Cost             bigint ,
    Photographer_Cost            bigint ,
    Client_Client_ID             bigint NOT NULL ,
    Location_Location_ID         bigint NOT NULL ,
    Photographer_Photographer_ID bigint NOT NULL ,
    Menu_Menu_ID                 bigint NOT NULL ,
    Entertainer_Entertainer_ID   bigint NOT NULL ,
    Florist_ID                   bigint NOT NULL ,
    Music_Music_ID               bigint NOT NULL
  ) ;
ALTER TABLE Event ADD CONSTRAINT Event_PK PRIMARY KEY ( Event_ID ) ;


CREATE TABLE Florist
  (
    Florist_ID bigint NOT NULL ,
    Name       VARCHAR (30) NOT NULL ,
    Phone      bigint NOT NULL
  ) ;
ALTER TABLE Florist ADD CONSTRAINT Florist_PK PRIMARY KEY ( Florist_ID ) ;


CREATE TABLE Location
  (
    Location_ID     bigint NOT NULL ,
    Location_Name   VARCHAR (30) NOT NULL ,
    Location_Street VARCHAR (50) NOT NULL ,
    Zip_Zip_ID      bigint NOT NULL
  ) ;
CREATE UNIQUE INDEX Location__IDX ON Location
  (
    Zip_Zip_ID ASC
  )
  ;
ALTER TABLE Location ADD CONSTRAINT Location_PK PRIMARY KEY ( Location_ID ) ;


CREATE TABLE Menu
  (
    Menu_ID        bigint NOT NULL ,
    Menu_Num       bigint NOT NULL ,
    Menu_Appetizer VARCHAR (30) NOT NULL ,
    Menu_Salad     VARCHAR (30) NOT NULL ,
    Menu_Main      VARCHAR (30) NOT NULL ,
    Menu_Dessert   VARCHAR (30) NOT NULL
  ) ;
ALTER TABLE Menu ADD CONSTRAINT Menu_PK PRIMARY KEY ( Menu_ID ) ;


CREATE TABLE Music
  (
    Music_ID bigint NOT NULL ,
    Contact  VARCHAR (30) NOT NULL ,
    Phone    bigint NOT NULL ,
    Type     VARCHAR (30) NOT NULL
  ) ;
ALTER TABLE Music ADD CONSTRAINT Music_PK PRIMARY KEY ( Music_ID ) ;


CREATE TABLE Photographer
  (
    Photographer_ID    bigint NOT NULL ,
    Photographer_Name  VARCHAR (30) NOT NULL ,
    Photographer_Phone bigint NOT NULL
  ) ;
ALTER TABLE Photographer ADD CONSTRAINT Photographer_PK PRIMARY KEY ( Photographer_ID ) ;


CREATE TABLE Zip
  (
    Zip_ID bigint NOT NULL ,
    Zip    bigint NOT NULL ,
    City   VARCHAR (30) NOT NULL ,
    State  VARCHAR (30) NOT NULL
  ) ;
ALTER TABLE Zip ADD CONSTRAINT Zip_PK PRIMARY KEY ( Zip_ID ) ;


ALTER TABLE Client ADD CONSTRAINT Client_Zip_FK FOREIGN KEY ( Zip_Zip_ID ) REFERENCES Zip ( Zip_ID ) ;

ALTER TABLE Event ADD CONSTRAINT Event_Client_FK FOREIGN KEY ( Client_Client_ID ) REFERENCES Client ( Client_ID ) ;

ALTER TABLE Event ADD CONSTRAINT Event_Entertainer_FK FOREIGN KEY ( Entertainer_Entertainer_ID ) REFERENCES Entertainer ( Entertainer_ID ) ;

ALTER TABLE Event ADD CONSTRAINT Event_Florist_FK FOREIGN KEY ( Florist_ID ) REFERENCES Florist ( Florist_ID ) ;

ALTER TABLE Event ADD CONSTRAINT Event_Location_FK FOREIGN KEY ( Location_Location_ID ) REFERENCES Location ( Location_ID ) ;

ALTER TABLE Event ADD CONSTRAINT Event_Menu_FK FOREIGN KEY ( Menu_Menu_ID ) REFERENCES Menu ( Menu_ID ) ;

ALTER TABLE Event ADD CONSTRAINT Event_Music_FK FOREIGN KEY ( Music_Music_ID ) REFERENCES Music ( Music_ID ) ;

ALTER TABLE Event ADD CONSTRAINT Event_Photographer_FK FOREIGN KEY ( Photographer_Photographer_ID ) REFERENCES Photographer ( Photographer_ID ) ;

ALTER TABLE Location ADD CONSTRAINT Location_Zip_FK FOREIGN KEY ( Zip_Zip_ID ) REFERENCES Zip ( Zip_ID ) ;
