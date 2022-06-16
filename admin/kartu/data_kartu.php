<div class="card card-info">
	<div class="card-header">
		<h3 class="card-title">
			<i class="fa fa-table"></i> Data KK</h3>
	</div>
	<!-- /.card-header -->
	<div class="card-body">
		<div class="table-responsive">
			<div>
				<a href="?page=add-kartu" class="btn btn-primary">
					<i class="fa fa-edit"></i> Tambah Data</a>
			</div>
			<br>
			<table id="example1" class="table table-bordered table-striped">
				<thead>
					<tr>
						<th>No</th>
						<th>Nama Penanggung</th>
						<th>Nama Pasien</th>
						<th>Hubungan</th>
						<th>Alamat</th>
						<th>No Telepon</th>
						<th>Aksi</th>
					</tr>
				</thead>
				<tbody>

					<?php
              $no = 1;
			  
              $sql = $koneksi->query("select tb_penanggung.*, tb_pasien.nama from tb_penanggung inner join tb_pasien on tb_penanggung.id_pasien = tb_pasien.id_pasien");
              while ($data= $sql->fetch_assoc()) {
            ?>

					<tr>
						<td>
							<?php echo $no++; ?>
						</td>
						<td>
							<?php echo $data['nama_penanggung']; ?>
						</td>
						<td>
							<?php echo $data['nama']; ?>
						</td>
						<td>
							<?php echo $data['hub_lansia']; ?>
			  			</td>
						<td>
							<?php echo $data['alamat_p']; ?>
			  			</td>
						<td>
							<?php echo $data['no_telepon_p']; ?>
						</td>
						<td>
						<a href="?page=anggota&kode=<?php echo $data['id_penanggung']; ?>" title="Anggota KK"
							 class="btn btn-info btn-sm">
								<i class="fa fa-users"></i>
							</a>
							<a href="?page=edit-kartu&kode=<?php echo $data['id_penanggung']; ?>" title="Ubah" class="btn btn-success btn-sm">
								<i class="fa fa-edit"></i>
							</a>
							<a href="?page=del-kartu&kode=<?php echo $data['id_penanggung']; ?>" onclick="return confirm('Apakah anda yakin hapus data ini ?')"
							 title="Hapus" class="btn btn-danger btn-sm">
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