<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>HR Login</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.4.0/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2fF2tD5tFkDjcUK8uEna/1EwBh/Q9Hp5j" crossorigin="anonymous">
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f8f9fa;
        }

        .login-container {
            max-width: 400px;
            margin: 150px auto;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            background-color: #fff;
        }

        .form-group {
            margin-bottom: 20px;
        }

        label {
            display: block;
            margin-bottom: 8px;
            color: #333;
        }

        input {
            width: 100%;
            padding: 10px;
            box-sizing: border-box;
            border: 1px solid #ced4da;
            border-radius: 4px;
        }

        button {
            background-color: #3498db;
            color: #fff;
            padding: 10px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 16px;
            width: 100%;
        }

        button:hover {
            background-color: #2980b9;
        }

        .error-message {
            color: red;
            margin-bottom: 10px;
        }

        header {
            background-color: #343a40;
            color: #fff;
            text-align: center;
            padding: 20px 0;
            margin-bottom: 20px;
        }

        footer {
            background-color: #343a40;
            color: #fff;
            text-align: center;
            padding: 10px 20px;
            position: fixed;
            bottom: 0;
            width: 100%;
        }
    </style>
</head>
<body style="background-image: url('resource/images/home.jpg');background-size: 100%,90%;height: 100vh">
<header>
    <h1>HR Login</h1>
</header>
<div class="login-container" style="background-color: gray;">
    <form action="hrlog" method="post">
        <div class="form-group">
            <h3 class="error-message">${errorMsg}</h3>
            <label for="username" style="color: white;">Username:</label>
            <input type="text" name="username" class="form-control" placeholder="Enter your username" required>
        </div>
        <div class="form-group">
            <label for="password" style="color: white">Password:</label>
            <input type="password" name="password" class="form-control" placeholder="Enter your password" required>
        </div>
        <button type="submit" class="btn btn-primary btn-block">Login</button>
    </form>
</div>
<footer>
    <p>&copy; 2024 HR Management System</p>
</footer>
</body>
</html>
