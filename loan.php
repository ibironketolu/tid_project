<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
				<meta name="keywords" content="TID LOAN"/>
	<meta name="description" content="TID loan offer quick loan within 24rs, we offer short & long term of investment and operate 24hrs."/>
	<meta name="Keywords" content="loan, quick loan, instant loan, short-term investment,long-term investment, 24hrs loan in lagos, 10% interest loan rate, 15% interest loan rate, low interest loan, less paper work loan, 1m loan service, loan company, licenced financial loan company, no collateral loan,rent loan, school fees loan, car loan services, business loan, pay small small loan installment"/>
	<meta name="Author" content="TID LOAN SERVICES"/>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>LOAN </title>
	<script type="text/javascript" src="bootstrap/js/bootstrap.bundle.js">

</script>
	<link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.css">
		<style type="text/css">

#mainDiv{
	border: 2px solid red;
	

}

#nav{
	background-color: #111D57;
	color: white;
	position: sticky;
	
}

#nav2{
	font-size: 20px;
	margin-left: 30%;
	margin-top: 1%;


}

#nav1{
	margin-top: 1%;
	margin-bottom: 1%;
}

#copy{
				color:white ;
				text-align: center;
				border: 2px solid white;
				background-color: #111D57;
			}

#footer{
	
	height: 230px;
	margin-top: 2%;
	background-color:#111D57 ;
	color: white;
}

#cal_main{
	height: 400px;
	margin-top: 5%;

	
}

#cal{
	background-color: #111D57;
	margin-left: 1%;
	padding-left: 2%;
	border: 2px solid black;
	border-radius: 5%;
}

h2{
	text-align: center;
	color:white ;
}

#txt{
	color: white;

}

#loan{
	text-align: center;
	margin-top: 3%;
	font-size: 27px;
}

#loan1{
	margin-top: 4%;
	text-align: center;
	background-color: whitesmoke;
	height: 400px;
}

</style>	
<link rel="stylesheet" type="text/css" href="fontawsome/css/all.css">			
</head>
<body>

	<div class="container-fluid" id="mainDiv">
		<!-- Begining of Nav bar -->
	<div class="row" id="nav">
		<div class="col" id="nav1">
	<a class="navbar-brand" href="index.php"><img src="image/ttt.jpg" width='100' height="60"></a>
		</div>
		<div class="col" id="nav2">
			<nav class="navbar navbar-expand-lg navbar-white ">
  <div class="container-fluid">
 
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse " id="navbarSupportedContent">
      <ul class="navbar-nav " id="text">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="index.php" style="color:white">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="about.php" style="color:white">About us</a>
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false" style="color:white">
            Service
          </a>
          <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
            <li><a class="dropdown-item" href="loan.php">Loan</a></li>
            <li><hr class="dropdown-divider"></li>
            <li><a class="dropdown-item" href="investment.php">Investment</a></li>
        </ul>
                <li class="nav-item">
          <a class="nav-link" href="customer/register.php" style="color:white">Login</a>
        </li>
        </li>
       
      </ul>
     
    </div>
  </div>
</nav>
		</div>
	</div>
		<!-- End of Nav bar -->

			<!-- Begining of loan Cal -->

				<div class="row" id="cal_main">
					<div class="col" id="cal">
						<h2>Loan Calculator</h2>
						<form>
						<p id="txt"><strong>Amount (₦)
							<input type="number" name="" id="amount" onchange="Calculate()" class="form-control">
						</strong></p>

						<p id="txt"><strong>Interest Rate:
								<input type="number" name="" id="rate" onchange="Calculate()" class="form-control">
						</strong></p>

						<p id="txt"><strong>Monthly Repayment
							<input type="number" name="" id="month" onchange="Calculate()" class="form-control">
						</strong></p>

						<button type="button" class="btn btn-outline-primary btn-lg" onclick="Calculate()">Total</button>
						</form>
					</div>
					<div class="col">
						<img src="image/approve.png" alt="myphoto" height="400">
					</div>
				</div>
			<!-- End of loan cal -->

			<!-- Begining of loan summary -->

			<div class="row" id="loan">
				<div class="col">
					<h3>LOANS</h3>
					<p>Do you have an urgent need for cash to settle bills, <br>take care of emergencies or grab an opportunity? Does payday seem so far and bills are piling up? <br>Don’t worry! Our convenient, secure and instant loans have got you covered.<br>

						Apply for a loan now and get the funds in less than 3 hours.</p>
				</div>
			</div>

			<div class="row" id="loan1">
				<div class="col mt-3">
					<img src="image/wallet2.png" alt="myphoto" height="100">
					<h3>Express Cash</h3>
					<p>Whenever or urgent you need cash, <br>we’re right there for you.</p>
				</div>
				<div class="col mt-3">
					<img src="image/simple.png" alt="myphoto" height="100">
					<h3>Easy Repayment Terms <br> And Rates</h3>
					<p>There are no hidden charges, our repayment terms <br>are clear and convenient, and you don’t need to have a cheque book.</p>
				</div>
				<div class="col mt-3">
					<img src="image/hassle.png" alt="myphoto" height="100">
					<h3>Stress Free</h3>
					<p>Easy to use tools from anywhere. Instant cash <br>immediately your loan is approved . No gimmicks, <br>confusing terms or hidden charges.</p>
				</div>
				<div class="row mt-3">
					<div class="col">
						<a href="customer/register.php"><button type="button" class="btn btn-outline-primary btn-lg">Apply Now</button></a>
					</div>
				</div>
			</div>
			<!-- End of Loan summary -->		



		<!-- Begining of filter -->
					<div class="row" id="footer">
						<div class="col mt-3">
							<h3>CONTACT US </h3>
							<i class="fa-solid fa-envelope fa-1x"></i> tidloanfinance@gmail.com<br>
							<i class="fa-solid fa-phone"></i> +2349069224767<br>
							<i class="fa fa-globe"></i> 2b Bola Onasanya street off Adio-Somoye Street<br>Ogudu, Gra, Ogudu. Ojota <br>Lagos, Nigeria.
						</div>
						<div class="col mt-3">
							<a href=""><img src="image/twitter.png" alt="twit" style="height:70px"></a>
						<p>Reach us via</p>
						</div>
						<div class="col mt-3">
							<a href=""><img src="image/facebook2.png" alt="twit" style="height:70px"></a>
						<p>Reach us via </p>
						</div>
						<div class="col mt-3">
							<a href=""><img src="image/linked_in.png" alt="twit" style="height:70px"></a>
						<p>Reach us via </p>
						</div>
							
						
					</div>

					<!-- End of filter -->

							<!-- copywrite -->

						<div class="row" id="copy">
							<div class="col">

								<span><strong>&#169; 2022 TID Loan and Finace. All Rights Reserved</strong></span>
							</div>
						</div>

							<!-- End of coywrite -->







	</div>
























				<script type="text/javascript"  src="jquery_min.js"></script>
				<script type="text/javascript" language="javscript">
function Calculate() {
	const amount = document.querySelector('#amount').value;

	const rate = document.querySelector('#rate').value;

	const month = document.querySelector('month').value;

	const interest = (amount * (rate * 0.1)) / month;

	const total = ((amount / month) + interest).toFixed(2);

	document.querySelector('#total').innerHTML = "Monthly payment: (₦)" + total;
}




</script>	
</body>
</html>