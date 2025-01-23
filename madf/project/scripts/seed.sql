INSERT INTO Admins (full_name, email, hashed_password) VALUES
('John Doe', 'john.doe@example.com', 'hashed_password_123'),
('Jane Smith', 'jane.smith@example.com', 'hashed_password_456'),
('Mike Brown', 'mike.brown@example.com', 'hashed_password_789');

INSERT INTO Users (full_name, gender, date_of_birth, contact_number, email, address, profession, marital_status, profile_photo_url) VALUES
('Alice Johnson', 'Female', '1990-05-15', '1234567890', 'alice.johnson@example.com', '123 Main St, Cityville', 'Software Engineer', 'Single', 'https://example.com/photos/alice.jpg'),
('Bob Williams', 'Male', '1985-08-20', '9876543210', 'bob.williams@example.com', '456 Maple Ave, Townsville', 'Doctor', 'Married', 'https://example.com/photos/bob.jpg'),
('Carol Davis', 'Female', '1993-03-10', '4561237890', NULL, '789 Pine St, Villagetown', 'Teacher', 'Single', 'https://example.com/photos/carol.jpg'),
('David Brown', 'Male', '1988-12-25', '7894561230', 'david.brown@example.com', '321 Elm St, Hamletville', 'Business Analyst', 'Divorced', 'https://example.com/photos/david.jpg'),
('Eva Wilson', 'Female', '1995-07-30', '1239874560', 'eva.wilson@example.com', '654 Oak St, Countryside', 'Nurse', 'Married', 'https://example.com/photos/eva.jpg');

INSERT INTO Favorites (admin_id, favorite_user_id) VALUES
(1, 1),
(1, 3),
(2, 2),
(3, 4),
(3, 5);
