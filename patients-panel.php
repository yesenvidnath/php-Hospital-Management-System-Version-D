<?php
    session_start();
  include('./other/header.php');
?>

<div class="container-fluid">
    <div class="row main-section">

        <div class="col-md-12 side-panel-r">
            <div class="container-fluid navigation-container">

                <?php include('other/navigation.php');?>

            </div>
            <br>
            <div class="container">
                <section class="title-of-dash">
                    <h2>Patient Panel</h2>
                </section>
                <div class="row">

			        <div class="col-sm-4">
                        <a href="./appointment.php">
			        	    <div class="card bg-dark text-white">
			        	    	<img src="./img/card-1.png" class="card-img" alt="...">
			        	    	<div class="card-img-overlay">
			        	    		<div class="card-body text-center">
			        	    			<h5 class="card-title">My Appointment</h5>
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
                        <a href="">
			        	    <div class="card bg-dark text-white">
			        	    	<img src="./img/card-4.png" class="card-img" alt="...">
			        	    	<div class="card-img-overlay">
			        	    		<div class="card-body text-center">
                                        <h5 class="card-title">My Details</h5>
			        	    		</div>
			        	    	</div>
			        	    </div>
                        </a>
			        </div>

                </div>
                <br>
            </div>
        </div>
    </div>
</div>

<?php
  include('other/footer.php');
?>