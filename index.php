
<?php 
    session_start();
     //   include('/asstes/images/login_background.avif');
     $img = './asstes/images/login-bg.png';
     $logo = './asstes/images/Pharmanest1.png';
     $background = './asstes/images/myriam-zilles-KltoLK6Mk-g-unsplash.jpg';
    // include database and set connection 
    include_once "./config/config.php";
    $db = mysqli_connect($localhost, $username, $password, $dbname);
    if(! $db){
        throw new Exception('Database connection failed: ' . mysqli_connect_error());
    }

    // when signin button click then check email and password in database 
    if (isset($_POST['btnLogin'])) {
        // Retrieve form data and sanitize inputs
        $role = mysqli_real_escape_string($db, $_POST['user-roll']);
        $email = mysqli_real_escape_string($db, $_POST['email']);
        $password = mysqli_real_escape_string($db, $_POST['password']);
    
        // Check if all required fields are provided
        if ($email && $password && $role) {
            $query = "SELECT * FROM {$role} WHERE email='{$email}' AND password='{$password}'LIMIT 1";
            $user_result = mysqli_query($db, $query);
    
            // Check if query was successful and if data exists
            if ($user_result && mysqli_num_rows($user_result) > 0) {
                $user = mysqli_fetch_assoc($user_result); // Fetch user data
    
                $_SESSION['role'] = $role;
                // $_SESSION['id'] = $user['id']; // Assuming your table has an 'id' column
                
                // Redirect to dashboard
                header("Location: dashboard.php");
                exit(); // Ensure no further code executes
            } else {
                // Invalid login credentials
                $msg = "Invalid email, password, or role.";
            }
        } else {
            $msg = "Please fill in all required fields.";
        }
    }
    

?>
<!DOCTYPE html>
<html lang="en">
<head>
<link rel="icon" type="image/png" href="./asstes/images/android.png">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login | Pharmanest</title>
    <!-- Bootstrap CSS -->
    <link href="./bootstrap/css/adminlte.min.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" rel="stylesheet">
    <style>
        body {
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            background: url('<?php echo $background; ?>') no-repeat center center/cover;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }
        .login-container {
            background: rgba(255, 255, 255, 0.95);
            border-radius: 15px;
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.3);
            padding: 40px;
            width: 100%;
            max-width: 480px;
            transition: transform 0.3s ease;
        }
        .login-container:hover {
            transform: translateY(-5px);
        }
        .form-control {
            border-radius: 8px;
            padding: 12px;
            border: 2px solid #e0e0e0;
            transition: all 0.3s ease;
        }
        .form-control:focus {
            box-shadow: 0 0 0 3px rgba(13, 110, 253, 0.2);
            border-color: #0d6efd;
        }
        .form-select {
            border-radius: 8px;
            padding: 12px;
            border: 2px solid #e0e0e0;
        }
        .btn-primary {
            padding: 12px;
            font-weight: 600;
            text-transform: uppercase;
            letter-spacing: 1px;
            border-radius: 8px;
            transition: all 0.3s ease;
        }
        .btn-primary:hover {
            transform: translateY(-2px);
            box-shadow: 0 4px 12px rgba(13, 110, 253, 0.3);
        }
        .form-label {
            font-weight: 600;
            color: #333;
            margin-bottom: 8px;
        }
        .alert {
            border-radius: 8px;
            border-left: 4px solid #dc3545;
        }
        .input-group-text {
            background: none;
            border: none;
            padding-right: 0;
        }
        .password-toggle {
            cursor: pointer;
            position: absolute;
            right: 10px;
            top: 50%;
            transform: translateY(-50%);
            z-index: 10;
            color: #666;
        }
    </style>
</head>
<body>
    <div class="login-container">
        <form action="" method="post" class="needs-validation" novalidate>
            <div class="text-center mb-4">
                <img src="<?php echo $logo; ?>" alt="Pharmanest Logo" class="img-fluid" style="max-width: 220px;">
            </div>

            <!-- Role Selection -->
            <div class="mb-4">
                <label for="user-roll" class="form-label">
                    <i class="fas fa-user-tag me-2"></i>Select Role
                </label>
                <select name="user-roll" id="user-roll" class="form-select" required>
                    <option value="" selected disabled>Choose your role</option>
                    <option value="admin">Administrator</option>
                    <option value="manager">Manager</option>
                    <option value="salesman">Salesman</option>
                </select>
                <div class="invalid-feedback">Please select a role</div>
            </div>

            <!-- Email Input -->
            <div class="mb-4">
                <label for="email" class="form-label">
                    <i class="fas fa-envelope me-2"></i>Email Address
                </label>
                <input type="email" name="email" id="email" class="form-control" 
                       placeholder="Enter your email" required>
                <div class="invalid-feedback">Please enter a valid email address</div>
            </div>

            <!-- Password Input -->
            <div class="mb-4 position-relative">
                <label for="password" class="form-label">
                    <i class="fas fa-lock me-2"></i>Password
                </label>
                <div class="position-relative">
                    <input type="password" name="password" id="password" class="form-control" 
                           placeholder="Enter your password" required>
                    <i class="fas fa-eye password-toggle" onclick="togglePassword()" style="top: 50%; transform: translateY(-50%);"></i>
                </div>
                <div class="invalid-feedback">Please enter your password</div>
            </div>

            <!-- Error Message Display -->
            <?php if (isset($msg)): ?>
                <div class="alert alert-danger d-flex align-items-center" role="alert">
                    <i class="fas fa-exclamation-circle me-2"></i>
                    <?php echo $msg; ?>
                </div>
            <?php endif; ?>

            <!-- Submit Button -->
            <div class="d-grid gap-2">
                <button type="submit" name="btnLogin" class="btn btn-primary">
                    <i class="fas fa-sign-in-alt me-2"></i>Sign In
                </button>
            </div>
        </form>
    </div>

    <!-- Bootstrap JS and Custom Scripts -->
    <script src="./bootstrap/js/adminlte.min.js"></script>
    <script>
        // Password visibility toggle
        function togglePassword() {
            const passwordInput = document.getElementById('password');
            const toggleIcon = document.querySelector('.password-toggle');
            
            if (passwordInput.type === 'password') {
                passwordInput.type = 'text';
                toggleIcon.classList.remove('fa-eye');
                toggleIcon.classList.add('fa-eye-slash');
            } else {
                passwordInput.type = 'password';
                toggleIcon.classList.remove('fa-eye-slash');
                toggleIcon.classList.add('fa-eye');
            }
        }

        // Form validation
        (function () {
            'use strict'
            const forms = document.querySelectorAll('.needs-validation')
            Array.from(forms).forEach(form => {
                form.addEventListener('submit', event => {
                    if (!form.checkValidity()) {
                        event.preventDefault()
                        event.stopPropagation()
                    }
                    form.classList.add('was-validated')
                }, false)
            })
        })()
    </script>
</body>
</html>
