<?php
  session_start();
  include('./other/header.php');
?>
<div class="container-fluid">

    <div class="row main-section">

        <div class="col-md-12 side-panel-r">

            <div class="container-fluid navigation-container">

            	<?php include('./other/navigation.php');?>

            </div>

            <br>
			
            <div class="container">

				<section class="title-of-dash">
					<h2>Admin Panel</h2>
				</section>
                <div class="row">

			        <div class="col-sm-4">
                        <a href="./appointment.php">
			        	    <div class="card bg-dark text-white">
			        	    	<img src="./img/card-1.png" class="card-img" alt="...">
			        	    	<div class="card-img-overlay">
			        	    		<div class="card-body text-center">
			        	    			<h5 class="card-title">Appointment</h5>
			        	    		</div>
			        	    	</div>
			        	    </div>
                        </a>
			        </div>

			        <div class="col-sm-4">
                        <a href="./rooms.php">
			        	    <div class="card bg-dark text-white">
			        	    	<img src="./img/card-2.png" class="card-img" alt="...">
			        	    	<div class="card-img-overlay">
			        	    		<div class="card-body text-center">
                                        <h5 class="card-title">Rooms</h5>
			        	    		</div>
			        	    	</div>
			        	    </div>
                        </a>
			        </div>

			        <div class="col-sm-4">
                        <a href="./staff.php">
			        	    <div class="card bg-dark text-white">
			        	    	<img src="./img/card-3.png" class="card-img" alt="...">
			        	    	<div class="card-img-overlay">
			        	    		<div class="card-body text-center">
			        	    			<h5 class="card-title">Staff</h5>
			        	    		</div>
			        	    	</div>
			        	    </div>
                        </a>
			        </div>
                </div>
                <br>

                <div class="row">
			        <div class="col-sm-4">
                        <a href="./payment-panel.php">
			        	    <div class="card bg-dark text-white">
			        	    	<img src="./img/card-5.png" class="card-img" alt="...">
			        	    	<div class="card-img-overlay">
			        	    		<div class="card-body text-center">
			        	    			<h5 class="card-title">Payment</h5>
			        	    		</div>
			        	    	</div>
			        	    </div>
                        </a>
			        </div>

			        <div class="col-sm-4">
                        <a href="./patients.php">
			        	    <div class="card bg-dark text-white">
			        	    	<img src="./img/card-4.png" class="card-img" alt="...">
			        	    	<div class="card-img-overlay">
			        	    		<div class="card-body text-center">
                                        <h5 class="card-title">Patients</h5>
			        	    		</div>
			        	    	</div>
			        	    </div>
                        </a>
			        </div>

                    <div class="col-sm-4">
                        <a href="./users.php">
			        	    <div class="card bg-dark text-white">
			        	    	<img src="./img/card-user.jpg" class="card-img" alt="...">
			        	    	<div class="card-img-overlay">
			        	    		<div class="card-body text-center">
                                        <h5 class="card-title">Users</h5>
			        	    		</div>
			        	    	</div>
			        	    </div>
                        </a>
			        </div>

                </div>

            </div>
        </div>
    </div>
</div>

<style>

.navbar-nav{
	display: none;
}

</style>

<?php
  include('./other/footer.php');
?>