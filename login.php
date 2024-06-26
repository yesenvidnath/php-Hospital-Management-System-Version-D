<?php
include('connect.php');



if (isset($_SESSION['user'])) {
  header("Location: index.php");
  exit;
}

if ($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_POST['utype']) && isset($_POST['uname']) && isset($_POST['psw'])) {
    $utype = $_POST['utype'];
    $uname = $_POST['uname'];
    $psw = $_POST['psw'];

    $sql = "SELECT * FROM users WHERE username = '$uname' AND password = '$psw' AND user_type = '$utype'";
    $result = $conn->query($sql);

    if ($result->num_rows > 0) {
        $row = $result->fetch_assoc();
        $_SESSION['user'] = $row;
        $_SESSION['user_type'] = $row['user_type'];

        if ($row['user_type'] === 'patient') {
            $query = "SELECT first_name, last_name FROM patients WHERE user_id = " . $row['user_id'];
        } elseif ($row['user_type'] === 'staff') {
            $query = "SELECT first_name, last_name FROM staff WHERE user_id = " . $row['user_id'];
        } else {
            $query = "";
        }

        if (!empty($query)) {
            $result = $conn->query($query);
            if ($result->num_rows > 0) {
                $user_data = $result->fetch_assoc();
                $user_name = $user_data['first_name'] . ' ' . $user_data['last_name'];
            } else {
                $user_name = "Unknown";
            }
        } else {
            $user_name = "Admin";
        }

        // Store the user's name in the session
        $_SESSION['user']['name'] = $user_name;

        switch ($_SESSION['user_type']) {
            case 'staff':
                $redirect = 'staff-panel.php';
                break;
            case 'admin':
                $redirect = 'admin-panel.php';
                break;
            case 'patient':
                $redirect = 'patients-panel.php';
                break;
        }

        header("Location: $redirect");
        exit;
    } else {
        echo '<script>alert("Invalid username, password or user type!");</script>';
    }
}
?>

<head>
        <!-- Bootstrap CSS CDN -->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- External CSS -->
    <link rel="stylesheet" href="./css/home_page/style.css">
    <link rel="stylesheet" href="./css/modal/modal.css">
</head>


<div class="container">

    <div class="row h-100">
        <div class="col-sm-12 my-auto">
            <div class="card card-block mx-auto" style="border: none">

                <form id="login-form" method="POST" class="modal-content animate container">

                    <div class="imgcontainer">
                    <img src="./img/img_avatar2.png" alt="Avatar" class="avatar" width="50%">
                    </div>
                    <br>
                    <div>
                        <select id="utype" name="utype">
                            <option value="">Select User Type</option>
                            <option value="staff">Staff</option>
                            <option value="admin">Admin</option>
                            <option value="patient">Patient</option>
                        </select>
                    </div>

                    <div>
                        <label for="uname">Username</label>
                        <input type="text" placeholder="Enter Username" name="uname" required>
                    </div>

                    <div>
                        <label for="psw">Password</label>
                        <input type="password" placeholder="Enter Password" name="psw" required>
                    </div>

                    <div>
                        <div class="row">
                            <div class="col-6">
                            <button type="submit">Login</button>
                            </div>
                            <div class="col-6">
                                <a href="index.php" class="button-back">Go Back</a>
                            </div>
                        </div>
                        
                        <label>
                            <input type="checkbox" checked="checked" name="remember"> Remember me
                        </label>
                    </div>

                </form>

            </div>
        </div>
    </div>

</div>


<style>
    .button-back {
    margin-top: 120px;
    background: red;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    cursor: pointer;
    width: 40%;
    border-radius: 5px;
    position: absolute;
    text-align: center;
    text-decoration: none;
    }
    .button-back:hover{
        color: white;
    }
    .container {
        height: 100%;
    }

    .note {
        position: absolute;
        z-index: 10;
        right: 0;
        top: 0;
        padding: 5px;
        max-width:100em;
    }

    .modal-content {
	background-color: var(--bg--color);
	margin: 5px auto;
	border: none !important;
	width: 40%;
}
</style>