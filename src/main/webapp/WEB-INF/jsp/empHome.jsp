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
    <link
      rel="stylesheet"
      href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap"
    />
    <!-- MDB -->
    <link rel="stylesheet" href="./resource/css/style.css" />
    <!-- PRISM -->
    <link rel="stylesheet" href="./resource/css/style1.css" />
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
    <div
      id="full-screen-example"
      class="sidenav bg-light"
      data-color="dark"
      data-mode="side"
      data-hidden="false"
      data-scroll-container="#scrollContainer"
    >
      <div class="mt-4">
        <div id="header-content" class="pl-3">
          <img
            src="https://mdbootstrap.com/img/Photos/Avatars/img%20(23).jpg"
            alt="avatar"
            class="rounded-circle img-fluid mb-3"
            style="max-width: 50px;"
          />

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
            <a class="sidenav-link" href="#">Home</a>
          </li>
      
          <li class="sidenav-item">
            <a class="sidenav-link" href="select-allemp">DisplayAll</a>
            <ul class="sidenav-collapse">
             </ul>
          </li>
        
        
        </ul>
        <hr class="m-0" />
        <ul class="sidenav-menu">
       
        </ul>
      </div>
    </div>

    <div class="mdb-page-content text-center page-intro bg-light">
      <div style="background-image: url('resource/images/employee3.jpg'); background-size: 100%, 90%; height: 100vh;">
        <h3 class="my-5"></h3>
      </div>
      <button
        id="toggler"
        class="btn btn-dark mt-5"
        data-toggle="sidenav"
        data-target="#full-screen-example"
      >
        <i class="fas fa-bars"></i>
      </button>
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
        // Check necessary for Android devices
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

      // Event listeners

      window.addEventListener('resize', setMode);
    </script>
  </body>
</html>
