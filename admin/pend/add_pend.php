<?php
include "inc/koneksi.php";
?>
<div class="card card-info ">
	<div class="card-header">
		<h3 class="card-title">
			<i class="fa fa-edit"></i> Tambah Data Pasien
		</h3>
	</div>
	<form action="" method="post" enctype="multipart/form-data">
		<div class="card-body">

			<div class="form-group row">
				<label class="col-sm-2 col-form-label">Nama Pasien</label>
				<div class="col-sm-6">
					<input type="text" class="form-control" id="nama" name="nama" placeholder="Nama Pasien" required>
				</div>
			</div>

			<div class="form-group row">
				<label class="col-sm-2 col-form-label">Nama Panggilan</label>
				<div class="col-sm-6">
					<input type="text" class="form-control" id="nama_panggilan" name="nama_panggilan" placeholder="Nama Panggilan">
				</div>
			</div>

			<div class="form-group row">
				<label class="col-sm-2 col-form-label">Jenis Kelamin</label>
				<div class="col-sm-3">
					<select name="jekel" id="jekel" class="form-control">
						<option value="-">- Pilih -</option>
						<option>Laki-laki</option>
						<option>Perempuan</option>
					</select>
				</div>
			</div>

			<div class="form-group row">
				<label class="col-sm-2 col-form-label">Tempat/Tgl Lahir</label>
				<div class="col-sm-3">
					<input type="text" class="form-control" id="tempat_lh" name="tempat_lh" placeholder="Tempat Lahir">
				</div>
				<div class="col-sm-3">
					<input type="date" class="form-control" id="tgl_lh" name="tgl_lh" placeholder="" value="">
				</div>
			</div>

			<div class="form-group row">
				<label class="col-sm-2 col-form-label">Pekerjaan</label>
				<div class="col-sm-6">
					<input type="text" class="form-control" id="pekerjaan" name="pekerjaan" placeholder="Pekerjaan">
				</div>
			</div>

			<div class="form-group row">
				<label class="col-sm-2 col-form-label">Status Perkawinan</label>
				<div class="col-sm-3">
					<select name="kawin" id="kawin" class="form-control">
						<option value="-">- Pilih -</option>
						<option>Nikah</option>
						<option>Tidak menikah</option>
						<option>Janda</option>
						<option>Duda</option>
					</select>
				</div>
			</div>

			<div class="form-group row">
				<label class="col-sm-2 col-form-label">Alamat</label>
				<div class="col-sm-6">
					<input type="text" class="form-control" id="alamat" name="alamat" placeholder="Alamat">
				</div>
			</div>

			<div class="form-group row">
				<label class="col-sm-2 col-form-label">Kode Pos/Telepon</label>
				<div class="col-sm-3">
					<input type="text" class="form-control" id="kode_pos" name="kode_pos" placeholder="Kode Pos">
				</div>
				<div class="col-sm-3">
					<input type="text" class="form-control" id="no_telepon" name="no_telepon" placeholder="Telepon/Fax/HP">
				</div>
			</div>

			<div class="form-group row">
				<label class="col-sm-2 col-form-label">Tempat Tinggal</label>
				<div class="col-sm-3">
					<select name="tempat_tinggal" id="tempat_tinggal" class="form-control">
						<option value="Lain-lain">- Pilih -</option>
						<option>Rumah sendiri</option>
						<option>Panti sosial</option>
						<option>Rumah anak</option>
						<option>Tidak tetap</option>
						<option value="Lain-lain">Lain-lain</option>
					</select>
				</div>
			</div>

			<div class="form-group row">
				<label class="col-sm-2 col-form-label">Agama</label>
				<div class="col-sm-6">
					<input type="text" class="form-control" id="agama" name="agama" placeholder="Agama">
				</div>
			</div>

			<div class="form-group row">
				<label class="col-sm-2 col-form-label">Suku</label>
				<div class="col-sm-6">
					<input type="text" class="form-control" id="suku" name="suku" placeholder="Suku">
				</div>
			</div>

			<div class="form-group row">
				<label class="col-sm-2 col-form-label">Pendidikan Terakhir</label>
				<div class="col-sm-3">
					<select name="didik_akhir" id="didik_akhir" class="form-control">
						<option value="Tidak sekolah">- Pilih -</option>
						<option>Tidak sekolah</option>
						<option>SD</option>
						<option>SMP/MTS</option>
						<option>SMA/SMK</option>
						<option>D3</option>
						<option>S1</option>
						<option>S2</option>
						<option>S3</option>
					</select>
				</div>
			</div>

			<div class="form-group row">
				<label class="col-sm-2 col-form-label">No KTP</label>
				<div class="col-sm-6">
					<input type="text" class="form-control" id="nik" name="nik" placeholder="Masukan No KTP">
				</div>
			</div>

			<div class="form-group row">
				<label class="col-sm-2 col-form-label">Golongan Darah</label>
				<div class="col-sm-3">
					<select name="gol_d" id="gol_d" class="form-control">
						<option value="-">- Pilih -</option>
						<option>A</option>
						<option>B</option>
						<option>O</option>
						<option>AB</option>
					</select>
				</div>
			</div>

			<div class="form-group row">
				<label class="col-sm-2 col-form-label">Hobi</label>
				<div class="col-sm-6">
					<input type="text" class="form-control" id="hobi" name="hobi" placeholder="Masukan Hobi">
				</div>
			</div>

			<div class="form-group row">
				<label class="col-sm-2 col-form-label">Jaminan Kesehatan</label>
			</div> 

			<div class="form-group row">
				<label class="col-sm-2 col-form-label">BPJS</label>
				<div class="col-sm-6">
					<input type="text" class="form-control" id="bpjs" name="bpjs" placeholder="Masukan Nomor BPJS">
				</div>
			</div>

			<div class="form-group row">
				<label class="col-sm-2 col-form-label">Asuransi Lain</label>
				<div class="col-sm-6">
					<input type="text" class="form-control" id="asuransi_lain" name="asuransi_lain" placeholder="Masukan Nama dan Nomor Asuransi (contoh: Sinarmas_1234567890)">
				</div>
			</div>

			<div class="form-group row">
				<label class="col-sm-2 col-form-label">Sumber Dana (Biaya Hidup)</label>
				<div class="col-sm-6">
					<input type="text" class="form-control" id="sumber_dn" name="sumber_dn" placeholder="Sumber dana">
				</div>
			</div>

		</div>

		<div class="card-body">
			<div class="card card-info">
				<div class="card-header">
					<h3 class="card-title">
						<i class="fa fa-edit"></i> Tambah Data Penanggung Jawab
					</h3>
				</div>
			</div>

			<div class="form-group row">
				<label class="col-sm-2 col-form-label">Nama</label>
				<div class="col-sm-6">
					<input type="text" class="form-control" id="nama_penanggung" name="nama_penanggung" placeholder="Masukan Nama Penanggung Jawab">
				</div>
			</div>

			<div class="form-group row">
				<label class="col-sm-2 col-form-label">Hubungan Dengan Lansia</label>
				<div class="col-sm-6">
					<input type="text" class="form-control" id="hub_lansia" name="hub_lansia" placeholder="Hubungan">
				</div>
			</div>

			<div class="form-group row">
				<label class="col-sm-2 col-form-label">Alamat</label>
				<div class="col-sm-6">
					<input type="text" class="form-control" id="alamat_p" name="alamat_p" placeholder="Alamat Penanggung">
				</div>
			</div>

			<div class="form-group row">
				<label class="col-sm-2 col-form-label">Kode Pos/Telepon</label>
				<div class="col-sm-3">
					<input type="text" class="form-control" id="kode_pos_p" name="kode_pos_p" placeholder="Kode Pos">
				</div>
				<div class="col-sm-3">
					<input type="text" class="form-control" id="no_telepon_p" name="no_telepon_p" placeholder="Telepon/Fax/HP">
				</div>
			</div>
		</div>

		<div class="card-footer">
			<input type="submit" name="Simpan" value="Simpan" class="btn btn-info">
			<a href="?page=data-pend" title="Kembali" class="btn btn-secondary">Batal</a>
		</div>
	</form>
</div>

<?php
// if ('tgl_lh' == "") {
//     'tgl_lh' == 'NULL';
// } else {
//     'tgl_lh' == "'tgl_lh'";
// }

if (isset($_POST['Simpan'])) {
	//mulai proses simpan data
	
	$sql_simpan = "INSERT INTO tb_pasien (nama, nama_panggilan, jekel, tempat_lh, tgl_lh, 
	pekerjaan, kawin, alamat, kode_pos, no_telepon, tempat_tinggal, agama, 
	suku, didik_akhir, nik, gol_d, hobi, bpjs, asuransi_lain, sumber_dn, status) VALUES (
            '" . $_POST['nama'] . "',
            '" . $_POST['nama_panggilan'] . "',
			'" . $_POST['jekel'] . "',
			'" . $_POST['tempat_lh'] . "',
            '" . $_POST['tgl_lh'] . "',
            '" . $_POST['pekerjaan'] . "',
			'" . $_POST['kawin'] . "',
			'" . $_POST['alamat'] . "',
			'" . $_POST['kode_pos'] . "',
			'" . $_POST['no_telepon'] . "',
			'" . $_POST['tempat_tinggal'] . "',
			'" . $_POST['agama'] . "',
            '" . $_POST['suku'] . "',
			'" . $_POST['didik_akhir'] . "',
			'" . $_POST['nik'] . "',
            '" . $_POST['gol_d'] . "',
            '" . $_POST['hobi'] . "',
			'" . $_POST['bpjs'] . "',
			'" . $_POST['asuransi_lain'] . "',
			'" . $_POST['sumber_dn'] . "',
            'Ada')";
			
	$query_simpan = mysqli_query($koneksi, $sql_simpan); 
	
	$penanggung = mysqli_insert_id($koneksi);

	if ($query_simpan) {
		$qPenanggung =
		"INSERT INTO tb_penanggung (nama_penanggung, hub_lansia, alamat_p, kode_pos_p, no_telepon_p, id_pasien) VALUES (
			'" . $_POST['nama_penanggung'] . "',
			'" . $_POST['hub_lansia'] . "',
			'" . $_POST['alamat_p'] . "',
			'" . $_POST['kode_pos_p'] . "',
			'" . $_POST['no_telepon_p'] . "',
			'" . $penanggung . "')";
			$simpanPenanggung = mysqli_query($koneksi, $qPenanggung);
	}
	// or trigger_error("Query Failed! SQL: $sql_simpan - Error: ".mysqli_error($koneksi), E_USER_ERROR);

	if ($query_simpan) {
		echo "<script>
      Swal.fire({title: 'Tambah Data Berhasil',text: '',icon: 'success',confirmButtonText: 'OK'
      }).then((result) => {if (result.value){
          window.location = 'index.php?page=data-pend';
          }
      })</script>";
	} else {
		echo trigger_error("Query Failed! SQL: $sql_simpan - Error: ".mysqli_error($koneksi), E_USER_ERROR);
		"<script>
      Swal.fire({title: 'Tambah Data Gagal',text: '',icon: 'error',confirmButtonText: 'OK'
      }).then((result) => {if (result.value){
          window.location = 'index.php?page=add-pend';
          }
      })</script>";
	}
}
     mysqli_close($koneksi);
     //selesai proses simpan data
?>