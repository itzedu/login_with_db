<html>
<head>
    <title>Welcome</title>
    <link rel="stylesheet" type="text/css" href="/assets/css/welcome.css">
</head>
<body>
    <div id='container'>
        <h1>Welcome <?= $user['first_name'] ?>!</h1>
        <a href="/users/logoff">Log Off</a>
            <div id='info'>
                <p>
                    First Name: <?= $user['first_name'] ?>
                </p>
                <p>
                    Last Name: <?= $user['last_name'] ?>
                </p>
                <p>
                    Email Address: <?= $user['email'] ?>
                </p>
            </div>
    </div>
</body>
</html>