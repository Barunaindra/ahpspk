<?php
	include('config.php');
	include('fungsi.php');

	// mendapatkan data edit
	if(isset($_GET['jenis']) && isset($_GET['id'])) {
		$id 	= $_GET['id'];
		$jenis	= $_GET['jenis'];

		// hapus record
		$query 	= "SELECT nama FROM $jenis WHERE id=$id";
		$result	= mysqli_query($koneksi, $query);
		
		while ($row = mysqli_fetch_array($result)) {
			$nama = $row['nama'];
		}
	}

	if (isset($_POST['update'])) {
		$id 	= $_POST['id'];
		$jenis	= $_POST['jenis'];
		$nama 	= $_POST['nama'];

		$query 	= "UPDATE $jenis SET nama='$nama' WHERE id=$id";
		$result	= mysqli_query($koneksi, $query);

		if (!$result) {
			echo "Update gagal";
			exit();
		} else {
			header('Location: '.$jenis.'.php');
			exit();
		}
	}

	include('header.php');
?>

<section class="content">
	<h2>Edit <?php echo $jenis?></h2>

	<form class="ui form" method="post" action="edit.php">
		<div class="inline field">
			<label>Nama <?php echo $jenis ?></label>
			<select name="nama">
			<?php
$konek = mysqli_connect("localhost","root","","ahp");
$query = "select * from ahp_data_prodi";
$hasil = mysqli_query($konek,$query);
 while($data=mysqli_fetch_array($hasil)){
	echo " <option value=$data[nama_prodi]>$data[nama_prodi]</option>";
	
}
?></select>

			<input type="hidden" name="id" value="<?php echo $id?>">
			<input type="hidden" name="jenis" value="<?php echo $jenis?>">
		</div>
		<br>
		<input class="ui green button" type="submit" name="update" value="UPDATE">
	</form>
</section>

<?php include('footer.php'); ?>