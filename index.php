<?php
include 'helper.php';
include 'header.php';
?>
<section class="visible-xs visible-sm">
	Version for tables and mobiles will come soon.
</section>
<section class="container-fluid hidden-xs hidden-sm">
	<section id="header" class="row">
		<?php
			include 'components/headlines.php';
		?>
		<div id="menu" class="col-md-12 col-lg-12">
			<ul class="col-md-offset-1 col-md-11 col-lg-offset-3 col-lg-9">
				<li class="active">
					<a href="#"> me </a>
				</li>
				<li >
					<a href="http://tran.tpisland.com/resume.php"> my resume </a>
				</li>
				<li>
					<a href="http://tran.tpisland.com/projects.php"> projects </a>
				</li>
			</ul>
		</div>
	</section>
	<section id="content" class="row">
		<section id="main-content" class="col-md-offset-1 col-md-10 col-lg-offset-2 col-lg-8">
			<section class="content-holder">
				<h3 id="aboutme">About me</h3>
				<img id="aboutme-icon" class="header-icon"  src="./img/AboutMe-icon.png" alt="about me">
				<div class="row text-content">
					<p class="col-md-12 col-lg-offset-1 col-lg-10">
						<img class="col-md-2 col-lg-2" src="./img/tran-img.png" alt="my avatar">
						Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur bibendum purus non felis elementum porttitor. Quisque ante enim, ultricies eu condimentum sed, sagittis at sem. Sed vitae libero mattis, commodo sem eget, gravida sem. Aenean et lacus nunc. Nunc vehicula, tortor rutrum tincidunt fringilla, erat magna pellentesque lectus, eu imperdiet turpis purus vel ante. Ut convallis feugiat augue nec egestas. Fusce lacinia sapien arcu, eget vestibulum eros tristique faucibus. Suspendisse vitae suscipit nulla. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae;
					Proin eget eleifend arcu, sit amet porta ipsum. Proin vel odio ac justo elementum lacinia vitae nec purus. Aenean egestas velit vitae tincidunt mattis. Vivamus lacinia quam et tincidunt condimentum. Fusce tristique ipsum augue, nec pulvinar mi vulputate at. Suspendisse potenti. Pellentesque scelerisque est nisi, eu finibus eros imperdiet vel. In hac habitasse platea dictumst. Curabitur iaculis condimentum dapibus. Vestibulum ullamcorper urna et lacinia auctor. Proin eleifend rhoncus consectetur. </p>
				</div>
			</section>
			<section class="content-holder">
				<h3 id="hobbie">Hobbies</h3>
				<img id="hobbie-icon" class="header-icon" src="./img/Hobbies-icon.png" alt="hobbies">
				<div class="row text-content">
					<p class="col-md-12 col-lg-offset-1 col-lg-10"> Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur bibendum purus non felis elementum porttitor. Quisque ante enim, ultricies eu condimentum sed, sagittis at sem. Sed vitae libero mattis, commodo sem eget, gravida sem. Aenean et lacus nunc. Nunc vehicula, tortor rutrum tincidunt fringilla, erat magna pellentesque lectus, eu imperdiet turpis purus vel ante. Ut convallis feugiat augue nec egestas. Fusce lacinia sapien arcu, eget vestibulum eros tristique faucibus. Suspendisse vitae suscipit nulla. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae;
					Proin eget eleifend arcu, sit amet porta ipsum. Proin vel odio ac justo elementum lacinia vitae nec purus. Aenean egestas velit vitae tincidunt mattis. Vivamus lacinia quam et tincidunt condimentum. Fusce tristique ipsum augue, nec pulvinar mi vulputate at. Suspendisse potenti. Pellentesque scelerisque est nisi, eu finibus eros imperdiet vel. In hac habitasse platea dictumst. Curabitur iaculis condimentum dapibus. Vestibulum ullamcorper urna et lacinia auctor. Proin eleifend rhoncus consectetur. </p>
				</div>
			</section>
		</section>
		
	</section>
	<section id="footer" class="row">
		Copyright by Tran Lam @2016.
	</section>
</section>
<?php
include 'footer.php';
?>