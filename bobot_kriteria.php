<?php
	include('config.php');
	include('fungsi.php');

	include('header.php');
?>
<section class="content">
	<h2 class="ui header">Perbandingan Kriteria</h2>
	<?php showTabelPerbandingan('kriteria','kriteria'); ?>
	<br>
*) Note <br>
Disarankan untuk tidak mengganti Nilai Perbandingan
</section>

<?php include('footer.php'); ?>