CREATE TABLE Admins (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    full_name TEXT NOT NULL,
    email TEXT NOT NULL UNIQUE,
    hashed_password TEXT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE Users (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    full_name TEXT NOT NULL,
    gender TEXT CHECK(gender IN ('Male', 'Female', 'Other')) NOT NULL,
    date_of_birth DATE NOT NULL,
    contact_number TEXT NOT NULL UNIQUE,
    email TEXT UNIQUE,
    address TEXT,
    profession TEXT,
    marital_status TEXT CHECK(marital_status IN ('Single', 'Married', 'Divorced')) NOT NULL,
    profile_photo_url TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    deleted_at TIMESTAMP
);

CREATE TABLE Favorites (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    admin_id INTEGER NOT NULL,
    favorite_user_id INTEGER NOT NULL,
    added_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (admin_id) REFERENCES Admins (id) ON DELETE CASCADE,
    FOREIGN KEY (favorite_user_id) REFERENCES Users (id) ON DELETE CASCADE,
    UNIQUE (admin_id, favorite_user_id)
);
