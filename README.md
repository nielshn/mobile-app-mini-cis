# Mobile App CIS Mini

## Project Description

The CIS Mini app is designed to meet the needs of students and streamline various activities at IT Del. This application serves as a tool for both the administrative staff (BAAK) and students to manage and request different services efficiently.

## Roles

The system consists of two main roles:

1. **Admin (BAAK)**: Users responsible for managing data and approving requests.
2. **Students**: Users who will make requests and use functions related to their activities.

## Functional Description

The system includes the following functions:

1. **Student Registration**
   - Users input their National ID number, Student ID (NIM), Full Name, Phone Number, Username (Email), and Password to register for the first time. Users can also register via Google Account or Facebook Account.

2. **Authentication (Login/Logout)**
   - Users enter their username and password to log into the system and access its features. Upon successful login, menus and functions are displayed. Users can also logout to exit the program.

3. **Room Booking**
   - Students can book rooms for meetings or other activities. BAAK will approve the room requests. (Note: Rooms booked at the same time cannot be requested and will show a message indicating the room is already booked).

4. **Request Letters**
   - Students can request various letters from BAAK. BAAK will approve the request once the letter is ready.

5. **Request Campus Exit Permission**
   - Students can request permission to leave the campus from BAAK. BAAK will approve the request if valid.

6. **Request Overnight Stay Permission (IB)**
   - Students can request overnight stay permission (IB) from BAAK. BAAK will approve the request. (Note: IB can only be requested on Fridays after 17:00 and Saturdays from 08:00 to 17:00. Requests outside these hours will be automatically canceled).

7. **Purchase T-Shirts**
   - Students can purchase t-shirts through the app, selecting from 5 sizes and viewing the prices (sizes include S, M, L, XL, XXL). Payment is required to confirm the order. Orders without payment will not be processed. Payments must match the specified amount for successful transactions.

8. **View Reports/History**
   - Both BAAK and students can view a list of their requests and the history of actions taken.

9. **Cancel Requests**
   - Students can cancel their requests by deleting the corresponding data entries.

10. **Manage Data**
    - BAAK can manage data (CRUD operations) necessary for various functions according to the database design.

## Prerequisites

### Backend (Laravel)

1. **Backend (Laravel) Requirements:**
   - PHP >= 7.3
   - Composer
   - MySQL

### Frontend (Flutter)

2. **Frontend (Flutter) Requirements:**
   - Flutter SDK
   - Android Studio or Xcode (for iOS)
   - Visual Studio Code or any preferred IDE

## Step-by-Step Installation Guide

### Backend (Laravel)

1. **Clone the Repository:**
   ```sh
   git clone <repository-url>
   cd <repository-directory>

2. **Install Depedencies**
   ```sh
    composer install
   ```
3. **Setup Environment Variables:**
   ```sh
   cp .env.example .env
   ```
4. **Generate Application Key:**
   ```sh
   php artisan key:generate
   ```
5. **Configure Database:**
   ```
   DB_CONNECTION=mysql
   DB_HOST=127.0.0.1
   DB_PORT=3306
   DB_DATABASE=your_database
   DB_USERNAME=your_username
   DB_PASSWORD=your_password
   ```
6. **Run Migrations and Seeders:**
   ```sh
   php artisan migrate --seed
   ```
7. **Serve the Application:**
   ```sh
   php artisan serve --host=YourIPAddress --port=8080
   ```
## Frontend (Flutter)
1. **Clone the Repository:**
   ```sh
   git clone <repository-url>
   cd <repository-directory>
   ```
   
2. **Upgrade Flutter**
   ```sh
   flutter upgrade
   ```
3. **Install Dependencies**
   ```sh
   flutter pub get
   ```
4. **Configure the Base URL:**
* Update the baseUrl in the Flutter project to match the IP address of your Laravel backend server.
* Open lib/constants.dart
* Replace the baseUrl with your Laravel server IP.
  ```dart
  String url = 'http://yourIPAddress:8080/api/';
  ```
5. Run the Flutter Project:
   ```sh
   flutter run
   ```
## Contributing

If you wish to contribute to the project, please fork the repository and use a feature branch. Pull requests are warmly welcome.

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/feature-name`)
3. Commit your changes (`git commit -m 'Add some feature'`)
4. Push to the branch (`git push origin feature/feature-name`)
5. Create a new Pull Request

## License

This project is licensed under the MIT License - see the LICENSE.md file for details.

## Contact
For any queries, please contact:

Name: Daniel Siahaan  
LinkedIn: [Daniel Siahaan](https://www.linkedin.com/in/daniel-siahaan-ab03b6204/)
