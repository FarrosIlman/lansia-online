<?php

if (isset($_GET['kode'])) {
	$sql_cek = "SELECT tb_penanggung.*,tb_pasien.nama from tb_penanggung,tb_pasien where id_penanggung ='" . $_GET['kode'] . "' AND tb_pasien.id_pasien=tb_penanggung.id_pasien";
	$query_cek = mysqli_query($koneksi, $sql_cek);
	$data_cek = mysqli_fetch_array($query_cek, MYSQLI_BOTH);
}
?>

<div class="card card-success">
	<div class="card-header">
		<h3 class="card-title">
			<i class="fa fa-user"></i> Detail Penanggng
		</h3>
		</h3>
		<div class="card-tools">
		</div>
	</div>
	<div class="card-body p-0">
		<table class="table">
			<tbody>
				<tr>
					<td style="width: 150px">
						<b>Nama Penanggung</b>
					</td>
					<td>:
						<?php echo $data_cek['nama_penanggung']; ?>
					</td>
				</tr>
				<tr>
					<td style="width: 150px">
						<b>Nama Pasien</b>
					</td>
					<td>:
						<?php echo $data_cek['nama']; ?>
					</td>
				</tr>
				<tr>
					<td style="width: 150px">
						<b>Hubungan</b>
					</td>
					<td>:
						<?php echo $data_cek['hub_lansia']; ?>
					</td>
				</tr>
				<tr>
					<td style="width: 150px">
						<b>Alamat Penanggung</b>
					</td>
					<td>:
						<?php echo $data_cek['alamat_p']; ?>
					</td>
				</tr>
				<tr>
					<td style="width: 150px">
						<b>No Telepon Penanggung</b>
					</td>
					<td>:
						<?php echo $data_cek['no_telepon_p']; ?>
					</td>
				</tr>
			</tbody>
		</table>
		<div class="card-footer">
			<a href="?page=data-kartu" class="btn btn-warning">Kembali</a>
		</div>
	</div>
</div>