<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta http-equiv="x-ua-compatible" content="ie=edge" />
    <title>Material Design for Bootstrap</title>
    <!-- MDB icon -->
    <link rel="icon" href="img/mdb-favicon.ico" type="image/x-icon" />
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.11.2/css/all.css" />
    <!-- Google Fonts Roboto -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap" />
    <!-- MDB -->
    <link rel="stylesheet" href="./resource/css/style.css" />
    <!-- PRISM -->
    <link rel="stylesheet" href="./resource/css/style1.css" />
    <!-- Bootstrap -->
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom styles -->
    <style>
      .page-intro {
        background-color: white;
        width: 100vw;
        min-height: 100vh;
      }

      img {
        max-width: 80%;
      }

      .mdb-page-content {
        padding-left: 240px;
        transition: padding 0.3s linear;
      }

      #toggler {
        display: none;
      }

      @media (max-width: 660px) {
        .mdb-page-content {
          padding-left: 0px;
        }

        #toggler {
          display: unset;
        }

        .mask img {
          width: 100%;
        }
      }

      body {
        background-color: #f8f9fa;
      }

      .form-container {
        max-width: 700px;
        margin: 50px auto;
        padding: 30px;
        border-radius: 10px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        background-color: #ffffff;
      }

      .btn-small {
        font-size: 0.75rem;
        padding: 0.25rem 0.5rem;
      }

      .sidenav-link {
        font-size: 18px;
        padding: 15px 20px;
        background-color: gray; /* Custom background color */
        color: white;
        border-radius: 5px;
        margin: 5px 0;
        display: block;
        text-align: center;
        transition: background-color 0.3s, transform 0.3s;
      }


      .sidenav-link:hover {
        background-color: #0056b3; /* Custom hover color */
        transform: scale(1.05);
        text-decoration: none;
        color: white;
      }
    </style>
  </head>

  <body>
    <div id="full-screen-example" class="sidenav bg-light" data-color="dark" data-mode="side" data-hidden="false" data-scroll-container="#scrollContainer">
      <div class="mt-4">
        <div id="header-content" class="pl-3">
          <img src="https://mdbootstrap.com/img/Photos/Avatars/img%20(23).jpg" alt="avatar" class="rounded-circle img-fluid mb-3" style="max-width: 50px;" />
          <h4>
            <span style="white-space: nowrap;">Rahul Pukale</span>
          </h4>
          <p>pukalerahul630@gmail.com</p>
        </div>
        <hr class="mb-0" />
      </div>
      <div id="scrollContainer">
        <ul class="sidenav-menu">
         <li class="sidenav-item">
            <a class="sidenav-link" href="home">Home</a>
          </li>
          <li class="sidenav-item">
            <a class="sidenav-link" href="register-form"><i class="fas fa-file pr-3"></i>Register</a>
          </li>
          <li class="sidenav-item">
            <a class="sidenav-link" href="selectid"><i class="fas fa-paper-plane pr-3"></i>SearchID</a>
          </li>
          <li class="sidenav-item">
            <a class="sidenav-link" href="select-all"><i class="fas fa-address-book pr-3"></i>DisplayAll</a>
          </li>
        </ul>
        <hr class="m-0" />
      </div>
      <div class="text-center" style="height: 100px;">
        <hr class="mb-4 mt-0" />
      </div>
    </div>

    <div class="container">
      <div class="form-container">
        <h1 class="mb-4">Employee Select ID Form</h1>
        <form action="select-id">
          <div class="form-row">
            <div class="form-group col-md-6">
              <label for="employee_id">Employee ID</label>
              <input type="text" class="form-control" name="employee_id" placeholder="Enter Employee ID">
            </div>
          </div>
          <button type="submit" class="btn btn-primary">Search</button>
          <button type="button" class="btn btn-primary" onclick="history.back()">Back</button>
           <button type="button" class="btn btn-secondary" onclick="window.location.href='home'">Home</button>
        </form>
      </div>
    </div>

    <!-- PRISM -->
    <script type="text/javascript" src="dev/js/new-prism.js"></script>
    <!-- MDB SNIPPET -->
    <script type="text/javascript" src="dev/js/dist/mdbsnippet.min.js"></script>
    <!-- MDB -->
    <script type="text/javascript" src="js/mdb.min.js"></script>
    <!-- Custom scripts -->
    <script type="text/javascript">
      const sidenav = document.getElementById('full-screen-example');
      const instance = mdb.Sidenav.getInstance(sidenav);

      let innerWidth = null;

      const setMode = (e) => {
        if (window.innerWidth === innerWidth) {
          return;
        }

        innerWidth = window.innerWidth;

        if (window.innerWidth < 660) {
          instance.changeMode('over');
          instance.hide();
        } else {
          instance.changeMode('side');
          instance.show();
        }
      };

      setMode();
      window.addEventListener('resize', setMode);
    </script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
  </body>
</html>
