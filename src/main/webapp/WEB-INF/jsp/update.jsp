<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Update Record</title>
    <!-- Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
  <div class="container">
    <div class="form-container mt-5">
        <h1 class="mb-4">Update Record</h1>
        <form action="updatedata" method="GET">
            <div class="form-row">
                <div class="form-group col-md-6">
                    <label for="employee_id">Employee ID</label>
                    <input type="text" class="form-control" name="employee_id" value="<%=request.getParameter("employee_id")%>" placeholder="Enter Employee ID">
                </div>
                <div class="form-group col-md-6">
                    <label for="name">Name</label>
                    <input type="text" class="form-control" name="name" value="<%=request.getParameter("name")%>" placeholder="Enter Name">
                </div>
            </div>
            <div class="form-row">
                <div class="form-group col-md-6">
                    <label for="email">Email</label>
                    <input type="email" class="form-control" name="email" value="<%=request.getParameter("email")%>" placeholder="Enter Email">
                </div>
                <div class="form-group col-md-6">
                    <label for="address">Address</label>
                    <input type="text" class="form-control" name="address" value="<%=request.getParameter("address")%>" placeholder="Enter Address">
                </div>
            </div>
            <div class="form-row">
                <div class="form-group col-md-6">
                    <label for="dob">Date of Birth</label>
                    <input type="date" class="form-control" name="dob" value="<%=request.getParameter("dob")%>">
                </div>
                <div class="form-group col-md-6">
                    <label for="gender">Gender</label>
                    <select class="form-control" name="gender">
                        <option value="Male" <%= "Male".equals(request.getParameter("gender")) ? "selected" : "" %>>Male</option>
                        <option value="Female" <%= "Female".equals(request.getParameter("gender")) ? "selected" : "" %>>Female</option>
                        <option value="Other" <%= "Other".equals(request.getParameter("gender")) ? "selected" : "" %>>Other</option>
                    </select>
                </div>
            </div>
            <div class="form-row">
                <div class="form-group col-md-6">
                    <label for="age">Age</label>
                    <input type="number" class="form-control" name="age" value="<%=request.getParameter("age")%>" placeholder="Enter Age">
                </div>
                <div class="form-group col-md-6">
                    <label for="joining_date">Joining Date</label>
                    <input type="date" class="form-control" name="joining_date" value="<%=request.getParameter("joining_date")%>">
                </div>
            </div>
            <div class="form-row">
               <div class="form-group col-md-6">
                    <label for="department">Designation</label>
                    <input type="text" class="form-control" name="designation" value="<%=request.getParameter("designation")%>" placeholder="Enter Department">
                </div>
                <div class="form-group col-md-6">
                    <label for="department">Department</label>
                    <input type="text" class="form-control" name="deparment" value="<%=request.getParameter("deparment")%>" placeholder="Enter Department">
                </div>
            </div>
            <div class="form-row">
                <div class="form-group col-md-6">
                    <label for="phone">Phone</label>
                    <input type="tel" class="form-control" name="phone" value="<%=request.getParameter("phone")%>" placeholder="Enter Phone Number">
                </div>
            </div>
            <button type="submit" class="btn btn-primary">Submit</button>
            <button type="button" class="btn btn-primary" onclick="history.back()">Back</button>
             <button type="button" class="btn btn-primary" onclick="window.location.href='home'">Home</button>
        </form>
    </div>
</div>

    <!-- Bootstrap JS and dependencies -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.2/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
