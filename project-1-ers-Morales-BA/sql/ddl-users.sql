DROP TABLE ERS_USERS;

CREATE TABLE ERS_USERS (
        U_ID integer primary key NOT NULL,
        U_USERNAME varchar2(40) UNIQUE NOT NULL,
        U_PASSWORD VARCHAR2(40) NOT NULL,
        U_FIRSTNAME VARCHAR2(30),
        U_LASTNAME VARCHAR2(30),
        U_EMAIL VARCHAR2(100) UNIQUE,
        UR_ID INTEGER NOT NULL
        );
        
ALTER TABLE ERS_USERS ADD CONSTRAINT FK_UR_ID
FOREIGN KEY (UR_ID)
REFERENCES ERS_USER_ROLES (UR_ID);