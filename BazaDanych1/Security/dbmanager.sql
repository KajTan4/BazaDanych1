CREATE ROLE [dbmanager]
    AUTHORIZATION [dbo];


GO
GRANT ALTER
    ON ROLE::[dbmanager] TO [234472@student.uek.krakow.pl]
    WITH GRANT OPTION;


GO
GRANT ALTER
    ON ROLE::[dbmanager] TO [CloudSA893957fe]
    WITH GRANT OPTION;

