<?php
$con = mysqli_connect("localhost", "root", "", "examgrab");

if (mysqli_connect_errno()) {
  echo "Gagal terhubung ke MySQL : " . mysqli_connect_error();
  exit();
}
?>

<!doctype html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
  <title>Data Peserta</title>
</head>

<body>
  <div>
    <table class="table table-bordered table-striped table-sm">
    <h3><i class="fas fa-users"></i> Data Peserta</h3>
      <tr>
      <?php
        $nama = mysqli_fetch_array(mysqli_query($con, "SELECT COUNT(1) FROM user"))[0];
        ?>
        <th colspan=" 2">Jumlah Peserta</th>
        <td><?php echo $nama; ?> Orang</td>
      </tr>

      <tr>
        <?php
        $umur1 = mysqli_fetch_array(mysqli_query($con, "SELECT COUNT(1) FROM user WHERE umur='12-25'"))[0];
        ?>
        <th colspan="3">Rentang Umur</th>
      </tr>
      <tr>
        <th scope="row"></th>
        <td>21 - 30 tahun</td>
        <td><?php echo $umur1; ?> Orang</td>
      </tr>
      <tr>
        <?php
        $umur2 = mysqli_fetch_array(mysqli_query($con, "SELECT COUNT(1) FROM user WHERE umur='26-35'"))[0];
        ?>
        <th scope="row"></th>
        <td>31 - 40 tahun</td>
        <td><?php echo $umur2; ?> Orang</td>
      </tr>
      <tr>
        <?php
        $umur3 = mysqli_fetch_array(mysqli_query($con, "SELECT COUNT(1) FROM user WHERE umur='36-45'"))[0];
        ?>
        <th scope="row"></th>
        <td>41 - 50 tahun</td>
        <td><?php echo $umur3; ?> Orang</td>
      </tr>
      <tr>
        <?php
        $umur4 = mysqli_fetch_array(mysqli_query($con, "SELECT COUNT(1) FROM user WHERE umur='46-55'"))[0];
        ?>
        <th scope="row"></th>
        <td>51 - 60 tahun</td>
        <td><?php echo $umur4; ?> Orang</td>
      </tr>
      <tr>
        <th colspan="3">Jenis Kelamin</th>
      </tr>
      <tr>
        <?php
        $jk1 = mysqli_fetch_array(mysqli_query($con, "SELECT COUNT(1) FROM user WHERE jeniskelamin='Laki-Laki'"))[0];
        ?>
        <th scope="row"></th>
        <td>Laki - Laki</td>
        <td><?php echo $jk1; ?> Orang</td>
      </tr>
      <tr>
        <?php
        $jk2 = mysqli_fetch_array(mysqli_query($con, "SELECT COUNT(1) FROM user WHERE jeniskelamin='Perempuan'"))[0];
        ?>
        <th scope="row"></th>
        <td>Perempuan</td>
        <td><?php echo $jk2; ?> Orang</td>
      </tr>
      <tr>
        <th colspan="3">Pendidikan</th>
      </tr>
      <tr>
        <?php
        $pddk1 = mysqli_fetch_array(mysqli_query($con, "SELECT COUNT(1) FROM user WHERE pendidikan='SD'"))[0];
        ?>
        <th scope="row"></th>
        <td>SD</td>
        <td><?php echo $pddk1; ?> Orang</td>
      </tr>
      <tr>
        <?php
        $pddk2 = mysqli_fetch_array(mysqli_query($con, "SELECT COUNT(1) FROM user WHERE pendidikan='SMP'"))[0];
        ?>
        <th scope="row"></th>
        <td>SMP / Sederajat</td>
        <td><?php echo $pddk2; ?> Orang</td>
      </tr>
      <tr>
        <?php
        $pddk3 = mysqli_fetch_array(mysqli_query($con, "SELECT COUNT(1) FROM user WHERE pendidikan='SMU'"))[0];
        ?>
        <th scope="row"></th>
        <td>SMU / Sederajat</td>
        <td><?php echo $pddk3; ?> Orang</td>
      </tr>
      <tr>
        <?php
        $pddk4 = mysqli_fetch_array(mysqli_query($con, "SELECT COUNT(1) FROM user WHERE pendidikan='Diploma'"))[0];
        ?>
        <th scope="row"></th>
        <td>Diploma</td>
        <td><?php echo $pddk4; ?> Orang</td>
      </tr>
      <tr>
        <?php
        $pddk5 = mysqli_fetch_array(mysqli_query($con, "SELECT COUNT(1) FROM user WHERE pendidikan='Sarjana'"))[0];
        ?>
        <th scope="row"></th>
        <td>Sarjana</td>
        <td><?php echo $pddk5; ?> Orang</td>
      </tr>
      <tr>
        <th colspan="3">Lama Bergabung dengan Grab</th>
      </tr>
      <tr>
        <?php
        $gabung1 = mysqli_fetch_array(mysqli_query($con, "SELECT COUNT(1) FROM user WHERE gabung='0-2'"))[0];
        ?>
        <th scope="row"></th>
        <td>0 - 2 tahun</td>
        <td><?php echo $gabung1; ?> Orang</td>
      </tr>
      <tr>
        <?php
        $gabung2 = mysqli_fetch_array(mysqli_query($con, "SELECT COUNT(1) FROM user WHERE gabung='3-5'"))[0];
        ?>
        <th scope="row"></th>
        <td>3 - 5 tahun</td>
        <td><?php echo $gabung2; ?> Orang</td>
      </tr>
      <tr>
        <?php
        $gabung3 = mysqli_fetch_array(mysqli_query($con, "SELECT COUNT(1) FROM user WHERE gabung='>5'"))[0];
        ?>
        <th scope="row"></th>
        <td>Lebih dari 5 tahun</td>
        <td><?php echo $gabung3; ?> Orang</td>
      </tr>
    </table>
  </div>

  <!-- Optional JavaScript -->
  <!-- jQuery first, then Popper.js, then Bootstrap JS -->
  <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
</body>

</html>