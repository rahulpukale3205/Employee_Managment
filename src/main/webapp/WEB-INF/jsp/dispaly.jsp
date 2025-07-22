<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Medical HTML-5 Template</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
<body>
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="table-container">
                    <table class="table table-dark table-striped">
                        <thead>
                            <tr>
                                <th>ID</th>
                                <th>Name</th>
                                <th>Email</th>
                                <th>Address</th>
                                <th>Dob</th>
                                <th>Gender</th>
                                <th>Age</th>
                                <th>Joining_Date</th>
                                <th>Department</th>
                                <th>Phone</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>${emp.employee_id}</td>
                                <td>${emp.name}</td>
                                <td>${emp.email}</td>
                                <td>${emp.address}</td>
                                <td>${emp.dob}</td>
                                <td>${emp.gender}</td>
                                <td>${emp.age}</td>
                                <td>${emp.joining_date}</td>
                                <td>${emp.deparment}</td>
                                <td>${emp.phone}</td>
                            </tr>
                            <!-- Repeat rows as needed -->
                        </tbody>
                    </table>
                </div>
                <div class="back-button">
                    <button onclick="goBack()">Back</button>
                </div>
            </div>
        </div>
    </div>
    <script>
        function goBack() {
            window.history.back();
        }
    </script>
</body>
</html>
