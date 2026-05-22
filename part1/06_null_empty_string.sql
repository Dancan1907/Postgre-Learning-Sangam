

--null - unknown/missing value
--empty string - known value, but it is empty
--zero - known value, but it is zero

DROP TABLE IF EXISTS basics.value_examples; -- to avoid errors if the table already exists. It will only be dropped if it exists.
CREATE TABLE basics.value_examples (
    id SERIAL PRIMARY KEY,
    nickname TEXT,
    bio TEXT,
    score INTEGER
);

INSERT INTO basics.value_examples (nickname, bio, score) VALUES
('Alice', 'Loves hiking and outdoor activities.', 85),
('Bob', '', 0), -- empty string for bio
('Charlie', NULL, 75), -- null for bio
('Dave', 'Enjoys cooking and trying new recipes.', NULL); -- null for score

--SELECT * FROM basics.value_examples;

SELECT * FROM basics.value_examples
WHERE bio IS NULL; -- This will return the row for Charlie, where bio is null.

SELECT * FROM basics.value_examples
WHERE score = 0; -- This will return the row for Bob, where score is zero.