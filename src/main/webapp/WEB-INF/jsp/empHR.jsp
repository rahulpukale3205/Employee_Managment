<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.4.0/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2fF2tD5tFkDjcUK8uEna/1EwBh/Q9Hp5j" crossorigin="anonymous">
    <style>
        body {
            background-color: #f8f9fa;
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
        }

        .btn-container {
            margin-top: 10%;
            text-align: center;
        }

        .btn-hr {
            background-color: #dc3545;
            border-color: #dc3545;
            color: w;
            font-weight: bold;
            padding: 15px 30px;
            margin-right: 80px;
            font-size: 1.5em;
        }

        .btn-employee {
            background-color: #007bff;
            border-color: #007bff;
            color: #ffffff;
            font-weight: bold;
            padding: 15px 30px;
            font-size: 1.5em;
        }

        header {
            background-color: #333;
            color: #fff;
            text-align: center;
            padding: 20px;
        }

        footer {
            background-color: #333;
            color: #fff;
            text-align: center;
            padding: 20px;
            position: fixed;
            bottom: 0;
            width: 100%;
        }
        a{
text-decoration: none;
}
    </style>
</head>

<body style="background-image: url('resource/images/employee2.jpg');background-size: 100%,90%;height: 100vh">
    <header>
        <h1>Employee Management System</h1>
    </header>
    <div class="container">
        <div class="row">
        <form action="login"></form>
            <div class="col-md-12 btn-container">
                <button type="button" class="btn btn-hr"><a href="hlogin">HR Login</a> </button>
                <button type="button" class="btn btn-employee"><a href="elogin">Emplyoee Login</a></button>
            </div>
        </div>
    </div>
    <footer>
        <p>&copy; 2024 Employee Management System</p>
    </footer>
</body>

</html>
