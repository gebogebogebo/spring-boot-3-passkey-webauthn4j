create table M_USER
(
    INTERNAL_ID  varchar(32)  not null primary key,
    USER_ID      varchar(32)  not null unique,
    DISPLAY_NAME varchar(64)  not null,
    PASSWORD     varchar(128) not null
);

create table M_FIDO_CREDENTIAL_FOR_WEBAUTHN4J
(
    ID                       int    default 0 not null auto_increment primary key,
    USER_INTERNAL_ID         varchar(32)      not null,
    CREDENTIAL_ID            varbinary(1000)  not null unique,
    SIGN_COUNT               bigint default 0 not null,
    ATTESTED_CREDENTIAL_DATA varbinary(1000)
);
