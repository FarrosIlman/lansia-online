<div class="card card-info">
	<div class="card-header">
		<h3 class="card-title">
			<i class="fa fa-table"></i> Data Pasien Lansia
		</h3>
	</div>
	<!-- /.card-header -->
	<div class="card-body">
		<div class="table-responsive">
			<div>
				<a href="?page=add-pend" class="btn btn-primary">
					<i class="fa fa-edit"></i> Tambah Data Pasien</a>
			</div>
			<br>
			<table id="example1" class="table table-bordered table-striped">
				<thead>
					<tr>
						<th>No</th>
						<th>NIK</th>
						<th>Nama</th>
						<th>JK</th>
						<th>Alamat</th>
						<th>No Telepon</th>
						<th>Aksi</th>
					</tr>
				</thead>
				<tbody>

					<?php
					mysqli_report(MYSQLI_REPORT_ERROR | MYSQLI_REPORT_STRICT);
					$no = 1;
					$sql = $koneksi->query("SELECT p.id_pasien, p.nik, p.nama, p.jekel, p.pekerjaan, p.alamat, p.no_telepon, a.id_kk, k.no_kk, k.kepala from 
			  tb_pasien p left join tb_anggota a on p.id_pasien=a.id_pasien 
			  left join tb_kk k on a.id_kk=k.id_kk where status='Ada'");
					while ($data = $sql->fetch_assoc()) {
					?>

						<tr>
							<td>
								<?php echo $no++; ?>
							</td>
							<td>
								<?php echo $data['nik']; ?>
							</td>
							<td>
								<?php echo $data['nama']; ?>
							</td>
							<td>
								<?php echo $data['jekel']; ?>
							</td>
							<td>
								<?php echo $data['alamat']; ?>
							</td>
							<td>
								<?php echo $data['no_telepon']; ?>
							</td>

							<td>
								<a href="?page=view-pend&kode=<?php echo $data['id_pasien']; ?>" title="Detail" class="btn btn-info btn-sm">
									<i class="fa fa-user"></i>
								</a>
								<a href="?page=edit-pend&kode=<?php echo $data['id_pasien']; ?>" title="Ubah" class="btn btn-success btn-sm">
									<i class="fa fa-edit"></i>
								</a>
								<a href="?page=del-pend&kode=<?php echo $data['id_pasien']; ?>" onclick="return confirm('Apakah anda yakin hapus data ini ?')" title="Hapus" class="btn btn-danger btn-sm">
									<i class="fa fa-trash"></i>
								</a>
							</td>
						</tr>

					<?php
					}
					?>
				</tbody>
				</tfoot>
			</table>
		</div>
	</div>
	<!-- /.card-body -->