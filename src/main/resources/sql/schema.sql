CREATE TABLE `user` (
    id INT AUTO_INCREMENT PRIMARY KEY,
    mail VARCHAR(255) NOT NULL,
    password VARCHAR(255) NOT NULL,
    roles VARCHAR(255) NOT NULL,
    created TIMESTAMP,
    last_logined TIMESTAMP,
    enabled BOOLEAN
);

CREATE TABLE `record` (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT NOT NULL,
    project_id INT NOT NULL,
    display_image_ids VARCHAR(255),
    question_id INT,
    answer_image_statuses VARCHAR(255),
    answer_start_time BIGINT,
    answer_end_time BIGINT,
    created TIMESTAMP
);

CREATE TABLE `question` (
    id INT AUTO_INCREMENT PRIMARY KEY,
    project_id INT NOT NULL,
    text VARCHAR(255) NOT NULL,
    created TIMESTAMP,
    enabled BOOLEAN
);

CREATE TABLE `image` (
    id INT AUTO_INCREMENT PRIMARY KEY,
    question_id INT NOT NULL,
    file_path VARCHAR(255) NOT NULL,
    created TIMESTAMP,
    enabled BOOLEAN
);

CREATE TABLE `project` (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    description TEXT,
    type INT NOT NULL,
    enabled BOOLEAN
);
