<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<title>Login and Registration</title>
    <link rel="stylesheet" type="text/css" href="../../assets/css/main.css">
    <link href='http://fonts.googleapis.com/css?family=Ubuntu' rel='stylesheet' type='text/css'>
</head>
<body>
    <div id='container'>
        <?php echo validation_errors(); ?>
        <?php echo form_error('Em'); ?>
        <div id='login'>
            <form action='/users/login' method="post">
                <p>
                    <label>Email: </label>
                    <input type='text' name='email'>
                </p>
                <p>
                    <label>Password: </label>
                    <input type='password' name='password'>
                </p>
                <input type='submit' value='Login'>
            </form>
        </div>
        <div id='registration'>
            <form action='/users/create' method="post">
                <p>
                    <label>First Name:</label>
                    <input type='text' name='first_name'>
                </p>
                <p>
                    <label>Last Name:</label>
                    <input type='text' name='last_name'>
                </p>
                <p> 
                    <label>Email Address:</label>
                    <input type='text' name='email'>
                </p>
                <p>
                    <label>Password:</label>
                    <input type='password' name='password'>
                </p>
                <p>
                    <label>Confirm Password:</label>
                    <input type='password' name='confirm_password'>
                </p>
                <input type='submit' value='Register'>
            </form>
        </div>
    </div>

</body>
