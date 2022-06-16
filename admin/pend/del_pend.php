<?php
if(isset($_GET['kode'])){
            $sql_hapus = 
            "DELETE tb_penanggung,tb_pasien FROM tb_penanggung
            INNER JOIN tb_pasien ON tb_pasien.id_pasien = tb_penanggung.id_pasien
            WHERE tb_penanggung.id_pasien='" . $_GET['kode'] . "'";

            $query_hapus = mysqli_query($koneksi, $sql_hapus);

            if ($query_hapus) {
                echo "<script>
                Swal.fire({title: 'Hapus Data Berhasil',text: '',icon: 'success',confirmButtonText: 'OK'
                }).then((result) => {
                    if (result.value) {
                        window.location = 'index.php?page=data-pend';
                    }
                })</script>";
                }else{
                echo trigger_error("Query Failed! SQL: $sql_ubah_p - Error: ".mysqli_error($koneksi), E_USER_ERROR);
                // "<script>
                // Swal.fire({title: 'Hapus Data Gagal',text: '',icon: 'error',confirmButtonText: 'OK'
                // }).then((result) => {
                //     if (result.value) {
                //         window.location = 'index.php?page=data-pend';
                //     }
                // })</script>";
            }
        }

