USE test_db;

-- statuses table test data
INSERT INTO statuses
    (id, status)
values
    ("1", "作業前"),
    ("2", "作業中"),
    ("3", "作業完了");

-- priorities table test data
INSERT INTO priorities
    (id, priority)
values
    ("1", "低"),
    ("2", "中"),
    ("3", "高");

-- priorities table test data
INSERT INTO todos
    (id, status_id, priority_id, title, implementation_date, due_date, memo)
values
    ("1", "1", "1", "テスト", "2022-2-18 00:00:00.000000", "2022-2-20 00:00:00.000000", "aaa"),
    ("2", "2", "2", "テスト2", "2022-2-18 00:00:00.000000", "2022-2-20 00:00:00.000000", "bbb"),
    ("3", "3", "3", "テスト3", "2022-2-18 00:00:00.000000", "2022-2-20 00:00:00.000000", "ccc");

