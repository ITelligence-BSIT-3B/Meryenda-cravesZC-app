<?php include('config/constants.php'); ?>

<html>
    <head>
        <title>Meryenda Craves</title>
        <link rel="stylesheet" href="css/style.css">
    </head>

    <body>
        
        <div class="login">
            <h1 class="text-center">Register</h1>
            <br><br>

            <?php 
                if(isset($_SESSION['login']))
                {
                    echo $_SESSION['login'];
                    unset($_SESSION['login']);
                }

                if(isset($_SESSION['no-login-message']))
                {
                    echo $_SESSION['no-login-message'];
                    unset($_SESSION['no-login-message']);
                }
            ?>
            <br><br>

            
            <form action="" method="POST" class="text-center">
            Full name: <br>
            <input type="text" name="full_name" placeholder="Enter Full name"><br><br>

            Username: <br>
            <input type="text" name="username" placeholder="Enter Username"><br><br>
			 Address: <br>
            <input type="text" name="address" placeholder="Enter Address"><br><br>
			 Contact No.: <br>
            <input type="text" name="contact_no" placeholder="Enter Contact No."><br><br>
			Password: <br>
            <input type="password" name="password" placeholder="Enter Password"><br><br>

            <input type="submit" name="submit" value="Register" class="btn-primary">
            <br><br>
            </form>
            

            <p class="text-center">Meryenda Craves</p>
        </div>

    </body>
</html>

<?php 
		
   
    if(isset($_POST['submit']))
    {
        $full_name = $_POST['full_name'];
		$username = $_POST['username'];
		$address = $_POST['address'];
        $contact_no = $_POST['contact_no'];
        $password = md5($_POST['password']);
        

        
        $sql = "INSERT INTO tbl_customer SET 
            full_name='$full_name',
            username='$username',
			address='$address',
			contact_no='$contact_no',
            password='$password'
        ";
 
        
        $res = mysqli_query($conn, $sql) or die(mysqli_error());

        
        if($res==TRUE)
        {
            
            $_SESSION['add'] = "<div class='success'> Registered Successfully.</div>";
            
            header("location:".SITEURL.'index.php');
        }
        else
        {
            
            $_SESSION['add'] = "<div class='error'>Registration Failed.</div>";
            
            header("location:".SITEURL.'customerregistration.php');
        }

    }
    
?>