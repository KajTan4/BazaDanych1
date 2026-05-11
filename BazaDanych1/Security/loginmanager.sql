CREATE ROLE [loginmanager]
    AUTHORIZATION [dbo];


GO
GRANT ALTER
    ON ROLE::[loginmanager] TO [234472@student.uek.krakow.pl]
    WITH GRANT OPTION;


GO
GRANT ALTER
    ON ROLE::[loginmanager] TO [CloudSA893957fe]
    WITH GRANT OPTION;

