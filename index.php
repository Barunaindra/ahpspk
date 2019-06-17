
<?php
include('config.php');
include('fungsi.php');

// header
include('header.php');
?>

	<section class="content">
			<h2 class="ui header">Analitycal Hierarchy Process (AHP)</h2>

			<p>Analytic Hierarchy Process (AHP) merupakan suatu model pendukung keputusan yang dikembangkan oleh Thomas L. Saaty. Model pendukung keputusan ini akan menguraikan masalah multi faktor atau multi kriteria yang kompleks menjadi suatu hirarki. Hirarki  didefinisikan sebagai suatu representasi dari sebuah permasalahan yang kompleks dalam suatu struktur multi level dimana level pertama adalah tujuan, yang diikuti level faktor, kriteria, sub kriteria, dan seterusnya ke bawah hingga level terakhir dari alternatif.</p>
			
			<p>AHP membantu para pengambil keputusan untuk memperoleh solusi terbaik dengan mendekomposisi permasalahan kompleks ke dalam bentuk yang lebih sederhana untuk kemudian melakukan sintesis terhadap berbagai faktor yang terlibat dalam permasalahan pengambilan keputusan tersebut. AHP mempertimbangkan aspek kualitatif dan kuantitatif dari suatu keputusan dan mengurangi kompleksitas suatu keputusan dengan membuat perbandingan satu-satu dari berbagai kriteria yang dipilih untuk kemudian mengolah dan memperoleh hasilnya.</p>

			<p>AHP sering digunakan sebagai metode pemecahan masalah dibanding dengan metode yang lain karena alasan-alasan sebagai berikut :</p>

			<ol class="ui list">
				<li>Struktur yang berhirarki, sebagai konsekuesi dari kriteria yang  dipilih, sampai pada subkriteria yang paling dalam.</li>
				<li>Memperhitungkan validitas sampai dengan batas toleransi inkonsistensi berbagai kriteria dan alternatif yang dipilih oleh pengambil keputusan.</li>
				<li>Memperhitungkan daya tahan output analisis sensitivitas pengambilan keputusan.</li>
			</ol>

			<br>
			<p>Berikut adalah cara Penggunaan Aplikasi SPK Untuk Menentukan Pilihan Prodi di UNSIQ menggunakan metode AHP (Analitycal Hirarchy Process) :</p>

			<ol class="ui list">
			<li>Klik pada menu Daftar Prodi yang ada di UNSIQ untuk melihat Prodi yang akan anda pilih.</li>
			<li>Klik pada Menu Kriteria untuk melihat jenis kriteria yang digunakan.</li>
			<li>lalu Klik Lanjut, anda akan di alihkan ke menu Alternatif.</li>
			<li>Pada menu Alternatif akan tampil 4 prodi. klik edit untuk mengganti prodi yang anda inginkan.</li>
			<li>Jika sudah silahkan anda klik lanjut.</li>
			<li>Lalu akan tampil Perbandingan Kriteria, disarankan anda tidak mengganti nilai bobot yang sudah ada</li>
			<li>Klik Submit, untuk beralih ke menu perbandingan alternatif. Di sini anda disarankan untuk memilih yang lebih penting berdasarkan 4 kriteria dan menginput bobot nilai perbandingan antar prodi.</li> 
			<li>Lalu klik Lanjut jika anda sudah selesai menginput nilai dan memilih mana yng lebih penting berdasarkan 4 kriteria </li>
			<li>Setelah itu akan muncul hasil Perhitungan keseluruhan dan tampil ranking prodi bobot tertinggi sampai terendah</li>
			<br>

			<h3 class="ui header">Tabel Tingkat Kepentingan menurut Saaty (1980)</h3>
			<table class="ui collapsing striped blue table">
				<thead>
					<tr>
						<th>Nilai Numerik</th>
						<th>Tingkat Kepentingan <em>(Preference)</em></th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td class="center aligned">1</td>
						<td>Sama pentingnya <em>(Equal Importance)</em></td>
					</tr>
					<tr>
						<td class="center aligned">2</td>
						<td>Sama hingga sedikit lebih penting</td>
					</tr>
					<tr>
						<td class="center aligned">3</td>
						<td>Sedikit lebih penting <em>(Slightly more importance)</em></td>
					</tr>
					<tr>
						<td class="center aligned">4</td>
						<td>Sedikit lebih hingga jelas lebih penting</td>
					</tr>
					<tr>
						<td class="center aligned">5</td>
						<td>Jelas lebih penting <em>(Materially more importance)</em></td>
					</tr>
					<tr>
						<td class="center aligned">6</td>
						<td>Jelas hingga sangat jelas lebih penting</td>
					</tr>
					<tr>
						<td class="center aligned">7</td>
						<td>Sangat jelas lebih penting <em>(Significantly more importance)</em></td>
					</tr>
					<tr>
						<td class="center aligned">8</td>
						<td>Sangat jelas hingga mutlak lebih penting</td>
					</tr>
					<tr>
						<td class="center aligned">9</td>
						<td>Mutlak lebih penting <em>(Absolutely more importance)</em></td>
					</tr>
				</tbody>
			</table>

	</section>

<?php include('footer.php'); ?>
