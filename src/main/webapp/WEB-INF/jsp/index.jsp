<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Employee Management</title>
<style type="text/css">
body {
    font-family: Arial, sans-serif;
    margin: 0;
    padding: 0;
}
header {
    background-color: #333;
    color: #fff;
    text-align: center;
}
.centered-button {
    display: flex;
    justify-content: center;
    align-items: center;
    height: 75vh;
}
.centered-button a {
    padding: 10px 20px; /* Adjust padding for smaller size */
    font-size: 2em; /* Adjust font size for smaller size */
    background-color: #007bff;
    color: #fff;
    border: none;
    cursor: pointer;
    text-decoration: none;
    text-transform: uppercase;
    border-radius: 5px;
    transition: 0.2s;
    position: relative;
    overflow: hidden;
    transform: scale(1.2); /* Adjust scale for smaller size */
}
.centered-button a:hover {
    background-color: #0056b3;
}
.centered-button a span {
    position: relative;
    z-index: 0;
    color: #fff;
}
.centered-button a .liquid {
    position: absolute;
    top: -60px;
    left: 0;
    width: 100%;
    height: 200px;
    background: #7293ff;
    box-shadow: inset 0 0 50px rgba(0, 0, 0, 0.7);
    z-index: -1;
    transition: 0.6s;
}
.centered-button a .liquid::after,
.centered-button a .liquid::before {
    position: absolute;
    content: "";
    width: 200%;
    height: 200%;
    top: 0;
    left: 0;
    transform: translate(-25%, -75%);
}
.centered-button a .liquid::after {
    border-radius: 45%;
    background: rgba(20, 20, 20, 1);
    box-shadow: 0 0 10px 5px #7293ff, inset 0 0 5px #7293ff;
    animation: animate 5s linear infinite;
    opacity: 0.8;
}
.centered-button a .liquid::before {
    border-radius: 40%;
    box-shadow: 0 0 10px rgba(26, 26, 26, 0.5),
        inset 0 0 5px rgba(26, 26, 26, 0.5);
    background: rgba(26, 26, 26, 0.5);
    animation: animate 7s linear infinite;
}
@keyframes animate {
    0% {
        transform: translate(-25%, -75%) rotate(0);
    }
    100% {
        transform: translate(-25%, -75%) rotate(360deg);
    }
}
.centered-button a:hover .liquid {
    top: -120px;
}
.centered-button a:hover {
    box-shadow: 0 0 5px #7293ff, inset 0 0 5px #7293ff;
    transition-delay: 0.2s;
}
</style>
</head>
<body style="background-image: url('resource/images/employee2.jpg');background-size: 100%,90%;height: 100vh">
<header>
    <h1>Employee Management System</h1>
</header>
<div class="centered-button">
    <a href="emphr" target="_blank">
    <span>Login</span>
    <div class="liquid"></div>
</a>
</div>
</body>
</html>
