/*
 Design and implement a system for managing email customer service. Incoming mail goes to a common pool.
 There is a set of customer service agents who reply to email. If the email is part of an ongoing series of replies
 (tracked using the in-reply-to field of email) the mail should preferably be replied to by the same agent who replied earlier.
 The system should track all incoming mail and replies, so an agent can see the history of questions from a customer before replying to an email.
 */
CREATE  DATABASE Project1;
USE Project1;
CREATE TABLE Customers
(
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    email       VARCHAR(200) UNIQUE NOT NULL
);

CREATE TABLE Agents
(
    agent_id INT AUTO_INCREMENT PRIMARY KEY,
    name     VARCHAR(200) UNIQUE NOT NULL
);

CREATE TABLE Emails
(
    email_id    INT AUTO_INCREMENT PRIMARY KEY,
    subject     VARCHAR(200) NOT NULL,
    body        TEXT         NOT NULL,
    customer_id INT,
    agent_id    INT,
    in_reply_to INT,
    sent_at     TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (customer_id) REFERENCES Customers (customer_id),
    FOREIGN KEY (agent_id) REFERENCES Agents (agent_id),
    FOREIGN KEY (in_reply_to) REFERENCES Emails (email_id)
    -- 'in_reply_to' refers to the email_id of the parent email.
    -- If an email is the first in its thread, 'in_reply_to' could be NULL.
);
