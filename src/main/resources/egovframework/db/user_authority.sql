
CREATE TABLE USER_AUTHORITY
(
    USERNAME  VARCHAR(20) PRIMARY KEY ,
    AUTHORITY VARCHAR(20) DEFAULT 'N'
);

INSERT INTO USER_AUTHORITY
values ('admin', 'ADMIN');
