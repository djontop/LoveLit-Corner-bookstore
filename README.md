# LoveLit Corner - THE COLLECTION YOU WILL LOVE

LoveLit Corner is an online bookstore that combines the love for literature with a cozy and inviting ambience, offering a wide range of books to explore and enjoy.

## Project Description

Our project includes both User and Admin panels:

### User Panel

The User Panel allows users to perform the following actions:

- **View Products:** Browse through the available products.
- **About:** Learn more about LoveLit Corner.
- **Contact:** Send messages to the admin for support or inquiries.
- **Shop:** Explore and purchase the latest products available in the store.
- **Placed Orders:** View all previously placed orders.
- **Login Page:** Access the account by logging in.
- **Register Page:** Register for a new account.
- **Wishlist:** Save favorite products for future reference.
- **Cart Page:** View and manage items in the shopping cart.

### Admin Panel

The Admin Panel provides administrative functions including:

- **Dashboard:** Overview of key metrics and activities.
  - Total pending payments.
  - Completed payments.
  - Total orders placed.
  - Products added.
  - Number of normal and admin users.
  - Total accounts.
  - New messages.
- **Add New Products:** Add new products to the store inventory.
- **Manage Products:** Edit or delete existing products.
- **Check Orders:** View and manage orders, change their status between pending, complete, or on hold.
- **Users Account:** View user accounts, delete accounts if necessary, and send messages.
- **Support Ticket:** Handle support tickets and inquiries from users.

## Setup

1. **Install XAMPP:**
   - If not already installed, download and install XAMPP from [Download](https://www.apachefriends.org/index.html).

2. **Start Apache and MySQL services:**
   - Open the XAMPP control panel.
   - Start both Apache and MySQL services.

3. **Import database:**
   - Locate the SQL file `book_store.sql` in the project's `database` directory.
   - Open phpMyAdmin from the XAMPP control panel.
   - Create a new database if not already existing.
   - Import the `book_store.sql` file into the newly created database.

4. **Configure MySQL connection:**
   - Open the `config.php` file located in the project's root directory.
   - Update the following variables with your MySQL server details:
     - `$servername`: The hostname of your MySQL server.
     - `$username`: Your MySQL username.
     - `$password`: Your MySQL password.
     - `$database`: The name of the database where you imported the `book_store.sql` file.
     - `$port`: The port number used by your MySQL server (usually 3306).

## Usage

1. **Open project directory:**
   - Open the project directory in your preferred code editor (e.g., Visual Studio Code).

2. **Start services:**
   - Start the Apache and MySQL services in XAMPP if not already started.

3. **Access project:**
   - Navigate to `http://localhost/` in your web browser.

4. **Explore and enjoy:**
   - Explore the bookstore, search for books, add them to your cart, and proceed to checkout to purchase your favorite reads!

## Technologies Used

- **MySQL:** Database management system used to store and manage book data.
- **PHP:** Server-side scripting language used for backend development.
- **HTML/CSS:** Markup and styling languages used for frontend development.

## Contributing

Contributions are welcome! If you find any bugs or have suggestions for improvements, please open an issue or submit a pull request.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Contact

For any inquiries or support, feel free to contact us at [Manthan Vasant](mailto:manthanvasant@gmail.com).

Made by Manthan Vasant
