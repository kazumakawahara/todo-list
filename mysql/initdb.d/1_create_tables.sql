USE test_db;

CREATE TABLE statuses
(
    id     INT         NOT NULL AUTO_INCREMENT,
    status VARCHAR(10) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE priorities
(
    id       INT     NOT NULL AUTO_INCREMENT,
    priority CHAR(1) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE todos
(
    id                  INT         NOT NULL AUTO_INCREMENT,
    status_id           INT         NOT NULL,
    priority_id         INT         NOT NULL,
    title               VARCHAR(50) NOT NULL,
    implementation_date DATETIME    NOT NULL,
    due_date            DATETIME    NOT NULL,
    memo                TEXT        NOT NULL,
    PRIMARY KEY (id),

    FOREIGN KEY fk_status_id (status_id)
        REFERENCES statuses (id)
        ON DELETE RESTRICT ON UPDATE RESTRICT,

    FOREIGN KEY fk_priority_id (priority_id)
        REFERENCES priorities (id)
        ON DELETE RESTRICT ON UPDATE RESTRICT
);
