<?php
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    // Database connection
    $servername = "localhost";
    $username = "root";
    $password = "";
    $dbname = "hierarchical_member_management";

    $conn = mysqli_connect($servername, $username, $password, $dbname);

    if (!$conn) {
        die("Connection failed: " . mysqli_connect_error());
    }

    $response = array();

    if (isset($_POST['name'])) {
        $name = trim(mysqli_real_escape_string($conn, $_POST['name']));
        $parent = isset($_POST['parent']) && !empty($_POST['parent']) ? (int)$_POST['parent'] : NULL;

        // Validate name
        if (!preg_match('/^[a-zA-Z0-9 .\-]+$/', $name)) {
            $response['success'] = false;
            $response['message'] = 'Please enter a valid name.';
        } else {
            // Insert member into the database
            $insertQuery = "INSERT INTO Members (CreatedDate, name, ParentId) VALUES (NOW(), ?, ?)";
            $stmt = mysqli_prepare($conn, $insertQuery);
            mysqli_stmt_bind_param($stmt, 'si', $name, $parent);

            if (mysqli_stmt_execute($stmt)) {
                $response['success'] = true;
                $response['message'] = 'Member added successfully.';
            } else {
                $response['success'] = false;
                $response['message'] = 'Error: ' . mysqli_error($conn); // Debugging message
            }

            mysqli_stmt_close($stmt);
        }
    } else {
        $response['success'] = false;
        $response['message'] = 'Invalid request. Please provide name.';
    }

    mysqli_close($conn);

    header('Content-Type: application/json');
    echo json_encode($response);
}
?>
