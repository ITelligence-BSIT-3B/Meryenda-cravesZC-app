
 <?php include('partials-front/menu.php'); ?>
 <head>
        <title>Meryenda Craves</title>
        <link rel="stylesheet" href="css/admin.css">
    </head>

        
        <div class="main-content">
            <div class="wrapper">
                <h1>Customer Dashboard</h1>
                <br><br>
                <?php 
                    if(isset($_SESSION['login']))
                    {
                        echo $_SESSION['login'];
                        unset($_SESSION['login']);
                    }
                ?>
                <br><br>

                <div class="col-4 text-center">

                    
                    <br />
                    EDIT PROFILE
                </div>

                <div class="col-4 text-center">

                   
                    <br />
					
                    ORDERS

                </div>
				<div class="col-4 text-center">

                   
                    <br />
                    ORDER STATUS
                </div>

               
