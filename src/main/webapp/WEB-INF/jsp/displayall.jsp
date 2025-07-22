<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta http-equiv="x-ua-compatible" content="ie=edge" />
    <title>Material Design for Bootstrap</title>
    <!-- Include necessary CSS and JS files -->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.11.2/css/all.css" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-icons/1.10.0/font/bootstrap-icons.min.css">
    <style>
      /* Your custom styles here */
    </style>
  </head>

  <body>
    <div class="mdb-page-content text-center page-intro bg-light">
      <div class="container mt-3">
        <h4>Show All Records</h4>
        <div class="table-responsive">
          <table class="table table-dark table-striped">
            <thead>
              <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Email</th>
                <th>Address</th>
                <th>Date of Birth</th>
                <th>Gender</th>
                <th>Age</th>
                <th>Joining Date</th>
                <th>Designation</th>
                <th>Department</th>
                <th>Phone</th>
                <th>Action</th>
              </tr>
            </thead>
            <tbody>
              <c:forEach items="${emp}" var="e">
                <tr>
                  <td>${e.employee_id}</td>
                  <td>${e.name}</td>
                  <td>${e.email}</td>
                  <td>${e.address}</td>
                  <td>${e.dob}</td>
                  <td>${e.gender}</td>
                  <td>${e.age}</td>
                  <td>${e.joining_date}</td>
                  <td>${e.designation}</td>
                  <td>${e.deparment}</td>
                  <td>${e.phone}</td>
                  <td>
                    <a href="update?employee_id=${e.employee_id}&name=${e.name}&email=${e.email}&address=${e.address}&dob=${e.dob}&gender=${e.gender}&age=${e.age}&joining_date=${e.joining_date}&designation=${e.designation}&deparment=${e.deparment}&phone=${e.phone}" class="btn btn-sm btn-warning">Edit</a>
                    <a href="delete-form?employee_id=${e.employee_id}" class="btn btn-sm btn-danger">Delete</a>
                  </td>
                </tr>
              </c:forEach>
            </tbody>
          </table>
        </div>
      </div>
    </div>
    <!-- Include necessary JS files -->
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js"></script>
  </body>
</html>
