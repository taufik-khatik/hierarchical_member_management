
# Hierarchical Member Management System

## Overview
This project is a **Hierarchical Member Management System** built using **PHP**, **jQuery**, **Bootstrap**, and **MySQL**. The system allows users to create and manage a hierarchy of members with parent-child relationships. Key features include the ability to dynamically display a tree of members, add new members with parent-child relationships, and validate user input.

---

## Features

![Home Page](https://github.com/taufik-khatik/hierarchical_member_management/blob/main/home-page-screenshot.png)
*Screenshot: Home Page*

### 1. **Dynamic Members Tree**
   - Displays members in a **tree structure** based on their parent-child relationships.
   - The hierarchy is generated dynamically from the database.

### 2. **Add Member Functionality**
   - Users can **add new members** using a modal form.
   - The form includes a dropdown for selecting a **parent member** and a text input for entering the new member's name.
   - Allows adding members **with or without a parent**.

### 3. **Input Validation**
   - The system performs **input validation** for the member's name, allowing only **alphanumeric characters**, spaces, **dots**, and **hyphens**.
   - Displays an error message if the input is invalid.

### 4. **Database Integration**
   - Members are stored in a **MySQL database** with the following fields: `id`, `name`, `ParentId`, and `CreatedDate`.
   - The system handles **adding new members** and **fetching members** from the database dynamically.

### 5. **AJAX-Based User Interface**
   - The project uses **AJAX** to communicate with the backend, allowing for seamless updates without page reloads.
   - Members can be added and displayed dynamically.

---

## Video Demonstration

Here is a demonstration of the project:
[![Video Demo](https://github.com/taufik-khatik/hierarchical_member_management/blob/main/video-demo.webm)](https://github.com/taufik-khatik/hierarchical_member_management/blob/main/video-demo.webm)

---

## Project Structure

### 1. **`index.php`**
   - This is the main file that renders the interface.
   - It contains:
     - A button to open the **"Add Member"** modal.
     - A dynamic tree structure to display the member hierarchy.
     - JavaScript to handle fetching members, populating dropdowns, and handling form submissions.

### 2. **`add_member.php`**
   - This file handles adding new members to the system.
   - It includes:
     - **Validation of input**.
     - **Parent-child relationship checks**.
     - **Inserts new members** into the database.

### 3. **`fetch_members.php`**
   - This file fetches the list of all members from the database and returns the data in JSON format to be displayed on the frontend.

---

## Database Schema

The system uses a single table, `Members`, with the following schema:

| Field        | Type          | Description                                  |
|--------------|---------------|----------------------------------------------|
| `id`         | INT           | Primary key, auto-incremented.               |
| `name`       | VARCHAR(255)  | Name of the member.                          |
| `ParentId`   | INT           | ID of the parent member (nullable).          |
| `CreatedDate`| DATETIME      | Timestamp for when the member was created.   |

---

## Installation and Setup

### 1. Clone the repository:
   ```bash
   git clone https://github.com/your-username/hierarchical-member-management.git
   ```

### 2. Import the database schema:
   - Create a new MySQL database named hierarchical_member_management.
   - Import the **"hierarchical_member_management.sql"** file into the database.

### 3. Update database credentials:
   - Update the following variables in **add_member.php** and **fetch_members.php** with your database credentials:
   ```bash
   $servername = "localhost";
   $username = "root";
   $password = "";
   $dbname = "hierarchical_member_management";
   ```
   
### 4. Run the project:
   - Place the project folder in your server's document root.
   - Open the index.php file in your browser (e.g., http://localhost/hierarchical-member-management/index.php).

---

## How It Works

### Adding a Member
   - Click the "Add Member" button.
   - A modal appears where you:
      - Enter the member's name.
      - Choose a parent member from the dropdown (optional).
   - After filling out the form, click "Save Changes" to add the member.
   - The member will be added to the database and the tree will update dynamically.

### Viewing the Members Tree
The members are displayed in a tree structure based on their parent-child relationships.

---

## Technologies Used
- Frontend: HTML, Bootstrap, jQuery
- Backend: PHP
- Database: MySQL

---

## Authors

[Taufik Khatik](https://taufikkhatik.netlify.app/)

---

## License
This project is open-source and available under the [MIT License](https://github.com/taufik-khatik/hierarchical_member_management/blob/main/LICENSE).

