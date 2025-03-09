Flutter Matrimony App Requirement
MATRIMONY APPLICATION REQUIREMENT
Week
Submission Work
16/01/2025 to - Database design with dummy data using SQLite Studio.
25/01/2025
- Design dashboard screen with four buttons.
26/01/2025 to - Design and validate Add User Screen.
01/02/2025
- Insert User in database using Map/Model class.
02/02/2025 to - Design user list screen with basic data and search bar, sorting icons with data from
08/02/2025
database.
- Do search, sorting, favorite/unfavorite operation on it.
09/02/2025 to - Design favorite user list and display only favorite users from database.
15/02/2025
- Display user detail in separate new screen.
16/02/2025 to - Edit user and refresh user list.
22/02/2025
- Delete user from database and local list and refresh user list.
23/02/2025 to - Implement insert and list operation using api (MockApi).
01/03/2025
- Implement update and delete operation using api (MockApi).
Introduction:
This application can be used by a single person/matrimonial service company for matrimonial business to
maintain records in an electronic format. The owner of the matrimonial service company will use this
application to replace pen & paper with this flutter mobile application.
Application should contain basic facilities as mentioned below more features
are allowed.
Dashboard Screen
Add/Edit User
User List
Favorite User
Delete User
Search User
User Detail
About Us

Flutter Matrimony App Requirement
1. Dashboard Screen:
Dashboard screen only contains 4 buttons for navigation in to the screens
- Add User
- User List
- Favorite User
- About Us
2. Add User
Add/Edit screen contains below elements
- Full Name
- Email Address
- Mobile Number
- Date of Birth
- City
- Gender
- Hobbies
- Password
- Confirm Password
Add/Edit User screen should also validate with below criteria.
Field
Full Name
Acceptance CriteriaValidation Rules
The First/Last Name field must
allow alphabets only.
It must contain a minimum of 3
characters and a maximum of 50
characters.
Spaces and special characters like
hyphen (-) or apostrophe (') are
allowed.
Must be non-empty.
Must match the regex: ^[a-zA-Z\s'-
]{3,50}$.
Show an error message if invalid, e.g.,
"Enter a valid full name (3-50 characters,
alphabets only)”.
Highlight the specific field with an error
message.
Prevent form submission until all errors
are resolved.


Flutter Matrimony App Requirement
Email Address
The Email Address field must
follow the standard email format
(e.g., example@example.com).
It must be unique and not
previously registered
Mobile Number
The Mobile Number field must
accept 10-digit numbers only.
It must allow country codes
optionally (e.g., +91 for India).
The number must not already be
registered.
Date of Birth
The Date of Birth must be in
DD/MM/YYYY format.
Users must be at least 18 years old
to register.
The maximum age allowed is 80
years.
Gender
The Gender field must allow
selection of one option from
predefined values (e.g., Male,
Female, Other).
Selection is mandatory.
Must be non-empty.
Must match the regex: ^[a-zA-Z0-9._%+-
]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$.
Show an error message if invalid, e.g.,
"Enter a valid email address."
Check
for
uniqueness
during
submission(Optional).
Highlight the specific field with an error
message.
Prevent form submission until all errors
are resolved.
Must be non-empty.
Must match the regex: ^\+?[0-9]{10,15}$.
Show an error message if invalid, e.g.,
"Enter a valid 10-digit mobile number."
Check
for
uniqueness
during
submission(Optional).
Highlight the specific field with an error
message.
Prevent form submission until all errors
are resolved.
Must be non-empty.
Must match the regex: ^(0[1-9]|[12][0-
9]|3[01])/(0[1-9]|1[0-2])/\d{4}$.
Validate age based on the current date.
Show an error message if invalid, e.g.,
"You must be at least 18 years old to
register.“
Highlight the specific field with an error
message.
Prevent form submission until all errors
are resolved.
Must be non-empty.
Must match predefined options.
Show an error message if invalid, e.g.,
"Please select your gender.“
Highlight the specific field with an error
message.
Prevent form submission until all errors
are resolved.


Flutter Matrimony App Requirement
3. User List
User Item Contains below elements
- User Name
- City
- Email
- Mobile Number
- Date of Birth
- Gender
- Age
- Favorite (Icon Button)
- Edit (Icon Button)
- Delete (Icon Button)
4. Favorite User
Click on favorite button icon will change from outline to filled
and user will be added as favorite and it will show in favorite
list.
After click on filled icon user will be unfavorite and removed
from the favorite list.
User can be favorite/unfavorite vice versa.
5. Delete User
-
-
-
While click on delete button from user list or detail page, alert
dialog will pop up with title “Are you sure want to delete this user?”,
with two buttons yes & no.
Pressing yes button user will deleted and alter dialog will dismiss.
Pressing no button alter dialog will dismiss.


Flutter Matrimony App Requirement
6. Search User
-
-
-
-
User can be search by typing in search bar above the user list.
While user is typing auto filter the users from list and show only filtered user in the list.
If no user found by search then message will shown as “No User Found”.
Search to be done by
1. User Name
2. City
3. Age
4. Email
5. Phone number
7. User Detail
-
-
-
By tap on any user in user list user detail screen will be navigated.
In this screen all the details of user will be displayed in read only mode.
In this screen there Edit, Delete and favorite button should be available.
8. About Us
- About us screen should display basic details of users and application
- You can refer any aswdc application available on playstore/appstore for reference of about us screen.
