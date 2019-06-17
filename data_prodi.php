<?php
include('config.php');
include('fungsi.php');

// header
include('header.php');
?>

<section class="content">
			<h2 class="ui header">Daftar Program Studi Yang ada di UNSIQ</h2>
<table width="50%"  class="ui collapsing striped blue table">
        <thead>
            <tr>
                 <th>No</th>
                <th>Nama Prodi</th>
                <th>Fakultas</th>
                <th>Jenjang</th>
            </tr>
        </thead>
        <tr>
<?php
$konek = mysqli_connect("localhost","root","","ahp");
$query = "select * from ahp_data_prodi";
$hasil = mysqli_query($konek,$query);
$i = 0;
 while($data=mysqli_fetch_array($hasil)){
    $i++;
 	?>

                <td class="center aligned"><?php echo $i ?></td>
                <td class="center aligned"><?php echo $data['nama_prodi'] ?></td>
                <td class="center aligned"><?php echo $data['Fakultas'] ?></td>
                <td class="center aligned"><?php echo $data['gelar'] ?></td>
 
                </tr>
                              <?php
}
?>
        <tbody>






    </table>
    </form>	





</section>

<?php include('footer.php'); ?>
