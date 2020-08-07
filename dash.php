<?php
include_once 'dbConnection.php';
session_start();
$email = $_SESSION['email'];
if (!(isset($_SESSION['email']))) {
  header("location:index.php");
} else {
  $name = $_SESSION['name'];
}
?>

<!doctype html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
  <meta name="generator" content="Jekyll v3.8.6">
  <title>ADMINISTRATOR</title>
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
  <script src="https://kit.fontawesome.com/a076d05399.js"></script>
  <style>
    .bd-placeholder-img {
      font-size: 1.125rem;
      text-anchor: middle;
      -webkit-user-select: none;
      -moz-user-select: none;
      -ms-user-select: none;
      user-select: none;
    }

    @media (min-width: 768px) {
      .bd-placeholder-img-lg {
        font-size: 3.5rem;
      }
    }

    body {
      padding-top: 5rem;
    }

    .starter-template {
      padding: 3rem 1.5rem;
      text-align: center;
    }
  </style>
  <!-- Custom styles for this template -->
  <link href="starter-template.css" rel="stylesheet">
</head>


<body>
  <nav class="navbar navbar-expand-md navbar-light bg-light fixed-top">
    <div class="container">
      <a class="navbar-brand" href="#">Ujian Online</a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExampleDefault" aria-controls="navbarsExampleDefault" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>

      <div class="collapse navbar-collapse" id="navbarsExampleDefault">
        <ul class="navbar-nav mr-auto">
          <li <?php if (@$_GET['q'] == 0) echo 'class="nav-item active"'; ?>>
            <a class="nav-link" href="dash.php?q=0">Beranda <span class="sr-only">(current)</span></a>
          </li>

          <li <?php if (@$_GET['q'] == 1) echo 'class="nav-item active"'; ?>>
            <a class="nav-link" href="dash.php?q=1">User</a>
          </li>

          <li <?php if (@$_GET['q'] == 6) echo 'class="nav-item active"'; ?>>
            <a class="nav-link" href="dash.php?q=6">Data Peserta</a>
          </li>

          <li <?php if (@$_GET['q'] == 2) echo 'class="nav-item active"'; ?>>
            <a class="nav-link" href="dash.php?q=2">Peringkat</a>
          </li>

          <li <?php if (@$_GET['q'] == 4 || @$_GET['q'] == 5) echo 'class="dropdown"'; ?>>
            <a class="nav-link dropdown-toggle" href="#" id="dropdown01" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Ujian</a>
            <div class="dropdown-menu" aria-labelledby="dropdown01">
              <a class="dropdown-item" href="dash.php?q=4">Tambah Ujian</a>
              <a class="dropdown-item" href="dash.php?q=5">Hapus Ujian</a>
            </div>
          </li>
        </ul>
        <form class="form-inline my-2 my-lg-0">
          <!--  -->
          <a class="btn btn-danger" href="logout.php?q=account.php" role="button">Logout</a>
        </form>
      </div>
    </div>
  </nav>

  <main role="main" class="container">

    <!-- tab beranda -->
    <?php if (@$_GET['q'] == 0) {

      $result = mysqli_query($con, "SELECT * FROM quiz ORDER BY date ASC") or die('Error');
      echo  
      '<div class="panel">
        <div class="table-responsive">
          <table class="table table-bordered table-striped">
          <h3><i class="fas fa-book-reader"></i> Daftar Ujian</h3>
            <tr class="text-center">
              <th>No.</th>
              <th>Nama Ujian</th>
              <th>Jumlah Pertanyaan</th>
              <th>Batas Waktu</th>
              <th>Total Nilai</th>
            </tr>';

            $c = 1;
            while ($row = mysqli_fetch_array($result)) {
              $title  = $row['title'];
              $total  = $row['total'];
              $sahi   = $row['sahi'];
              $time   = $row['time'];
              $eid    = $row['eid'];

              $q12 = mysqli_query($con, "SELECT score FROM history WHERE eid='$eid' AND email='$email'") or die('Error98');
              $rowcount = mysqli_num_rows($q12);

              if ($rowcount == 0) {
                echo
                '<tr class="text-center">
                  <td>' . $c++ . '</td>
                  <td>' . $title . '</td>
                  <td>' . $total . ' soal</td>
                  <td>' . $time . ' menit</td>
                  <td>' . $sahi * $total . '</td>
                </tr>';
              }
            }
            $c = 0;
      echo 
          '</table>
        </div>
      </div>';
    }

    // tab peringkat
    if (@$_GET['q'] == 2) {
      $rank = mysqli_query($con, "SELECT * FROM history") or die('ErrorRank');
            echo  '<div class="panel">
            <div class="table-responsive">
            <table class="table table-striped table-sm table-bordered title1">
            <h3><i class="far fa-chart-bar"></i> Data Nilai</h3>
            <tr class="text-center">
              <th>#</th>
              <th>Email</th>
              <th>Nama Ujian</th>
              <th>Soal Terjawab</th>
              <th>Benar</th>
              <th>Salah</th>
              <th>Nilai</th>
            </tr>';
            $c = 0;
            while ($row = mysqli_fetch_array($rank)) {
              $email = $row['email'];
              $eid = $row['eid'];
              $qa = $row['level'];
              $r = $row['sahi'];
              $w = $row['wrong'];
              $s = $row['score'];

              $peringkat = mysqli_query($con, "SELECT title FROM quiz WHERE eid='$eid'") or die('ErrorPeringkat');
              while ($row = mysqli_fetch_array($peringkat)) {
                $title = $row['title'];
              }

              $c++;
              echo '<tr>
                <td class="text-center">' . $c . '</td>
                <td>' . $email . '</td>
                <td>' . $title . '</td>
                <td class="text-center">' . $qa . ' soal</td>
                <td class="text-center">' . $r . ' benar</td>
                <td class="text-center">' . $w . ' salah</td>
                <td class="text-center">' . $s . '</td>
              </tr>';
            }
            echo '</table>
            </div>';
    }
    ?>
    <!--closed-->

    <!-- tab user -->
    <?php if (@$_GET['q'] == 1) {

      $result = mysqli_query($con, "SELECT * FROM user") or die('Error');
      echo  '<div class="panel">
      <div class="table-responsive">
      <table class="table table-bordered table-striped table-sm table-bordered title1">
      <h3><i class="fas fa-user"></i> Daftar User</h3>
      <tr class="text-center">
        <th>No.</th>
        <th>Nama</th>
        <th>Email</th>
        <th>Pendidikan</th>
        <th>Jenis Kelamin</th>
        <th>Umur</th>
        <th>Lama bergabung Grab</th>
        <th>Riwayat mendapatkan informasi tentang Medical First Responder</th>
      </tr>';
      $c = 1;
      while ($row = mysqli_fetch_array($result)) {
        $name = $row['name'];
        $umur = $row['umur'];
        $gabung = $row['gabung'];
        $jeniskelamin = $row['jeniskelamin'];
        $email = $row['email'];
        $pendidikan = $row['pendidikan'];
        $mobile = $row['mobile'];
        $nopol = $row['nopol'];
        $riwayat = $row['riwayat'];


        echo '<tr>
        <td class="text-center">' . $c++ . '</td>
        <td>' . $name . '</td>
        <td>' . $email . '</td>
        <td>' . $pendidikan . '</td>
        <td>' . $jeniskelamin . '</td>
        <td>' . $umur . ' tahun</td>
        <td class="text-center">' . $gabung . ' tahun</td>
        <td class="text-center">' . $riwayat . ' </td>
        </tr>';
      }
      $c = 0;
      echo '</table></div></div>';
    } ?>
    <!--user end-->
    
    <!-- tab data peserta -->
    <?php if (@$_GET['q'] == 6) {
      include 'form.php';      
    } ?>
    <!--user end-->

    <!-- tab tambah sual -->
    <?php
    if (@$_GET['q'] == 4 && !(@$_GET['step'])) {
      echo '<div class="row"><span class="title1" style="margin-left:40%;font-size:30px;"><b>Masukkan rincian soal</b></span><br /><br /><div class="col-md-3"></div><div class="col-md-6"><form class="form-horizontal title1" name="form" action="update.php?q=addquiz"  method="POST"><fieldset>
          <!-- Text input-->
          <div class="form-group">
            <label class="col-md-12 control-label" for="name"></label>  
            <div class="col-md-12">
            <input id="name" name="name" placeholder="judul ujian" class="form-control input-md" type="text">    
            </div>
          </div>
          <!-- Text input-->
          <div class="form-group">
            <label class="col-md-12 control-label" for="total"></label>  
            <div class="col-md-12">
            <input id="total" name="total" placeholder="jumlah pertanyaan" class="form-control input-md" type="number">    
            </div>
          </div>
          <!-- Text input-->
          <div class="form-group">
            <label class="col-md-12 control-label" for="right"></label>  
            <div class="col-md-12">
            <input id="right" name="right" placeholder="poin jawaban benar" class="form-control input-md" min="0" type="number">    
            </div>
          </div>
          <!-- Text input-->
          <div class="form-group">
            <label class="col-md-12 control-label" for="wrong"></label>  
            <div class="col-md-12">
            <input id="wrong" name="wrong" placeholder="poin jawaban salah" class="form-control input-md" min="0" type="number">    
            </div>
          </div>
          <!-- Text input-->
          <div class="form-group">
            <label class="col-md-12 control-label" for="time"></label>  
            <div class="col-md-12">
            <input id="time" name="time" placeholder="batas waktu ujian" class="form-control input-md" min="1" type="number">    
            </div>
          </div>
          <!-- Text input-->
          <div class="form-group">
            <label class="col-md-12 control-label" for="tag"></label>  
            <div class="col-md-12">
            <input id="tag" name="tag" placeholder="name #tag untuk pencarian name ujian" class="form-control input-md" type="text">    
            </div>
          </div>
          <!-- Text input-->
          <div class="form-group">
            <label class="col-md-12 control-label" for="desc"></label>  
            <div class="col-md-12">
            <textarea rows="8" cols="8" name="desc" class="form-control" placeholder="deskripsi ujian ..."></textarea>  
            </div>
          </div>
          <div class="form-group">
            <label class="col-md-12 control-label" for=""></label>
            <div class="col-md-12"> 
              <input  type="submit" style="margin-left:45%" class="btn btn-primary" value="Submit" class="btn btn-primary"/>
            </div>
          </div>
          </fieldset>
          </form></div>';
    }
    ?>
    <!--add quiz end-->

    <!--add quiz step2 start-->
    <?php
    if (@$_GET['q'] == 4 && (@$_GET['step']) == 2) {
      echo '
          <div class="row">
          <span class="title1" style="margin-left:40%;font-size:30px;"><b>Isi Detail Pertanyaan</b></span><br /><br />
          <div class="col-md-3"></div><div class="col-md-6"><form class="form-horizontal title1" name="form" action="update.php?q=addqns&n=' . @$_GET['n'] . '&eid=' . @$_GET['eid'] . '&ch=4 "  method="POST">
          <fieldset>
          ';

      for ($i = 1; $i <= @$_GET['n']; $i++) {
        echo '<b>Pertanyaan ' . $i . ': </b><br>
          <div class="form-group">
            <label class="col-md-12 control-label" for="qns' . $i . ' "></label>  
            <div class="col-md-12">
            <textarea rows="3" cols="5" name="qns' . $i . '" class="form-control" placeholder="Tulis pertanyaan ' . $i . ' disini ..."></textarea>  
            </div>
          </div>

          <!-- Text input-->
          <div class="form-group">
            <label class="col-md-12 control-label" for="' . $i . '1"></label>  
            <div class="col-md-12">
            <input id="' . $i . '1" name="' . $i . '1" placeholder="jawaban a" class="form-control input-md" type="text">              
            </div>
          </div>

          <!-- Text input-->
          <div class="form-group">
            <label class="col-md-12 control-label" for="' . $i . '2"></label>  
            <div class="col-md-12">
            <input id="' . $i . '2" name="' . $i . '2" placeholder="jawaban b" class="form-control input-md" type="text">              
            </div>
          </div>

          <!-- Text input-->
          <div class="form-group">
            <label class="col-md-12 control-label" for="' . $i . '3"></label>  
            <div class="col-md-12">
            <input id="' . $i . '3" name="' . $i . '3" placeholder="jawaban c" class="form-control input-md" type="text">              
            </div>
          </div>

          <!-- Text input-->
          <div class="form-group">
            <label class="col-md-12 control-label" for="' . $i . '4"></label>  
            <div class="col-md-12">
            <input id="' . $i . '4" name="' . $i . '4" placeholder="jawaban d" class="form-control input-md" type="text">              
            </div>
          </div>

<br />

          <b>Jawaban yang benar</b> :<br>
          <select id="ans' . $i . '" name="ans' . $i . '" placeholder="pilih jawaban yang benar " class="form-control input-md">
            <option value="a">pilih jawaban dari pertanyaan ' . $i . '</option>
            <option value="a">jawaban a</option>
            <option value="b">jawaban b</option>
            <option value="c">jawaban c</option>
            <option value="d">jawaban d</option> </select><br /><br />';
      }
      echo '<div class="form-group">
          <label class="col-md-12 control-label" for=""></label>
            <div class="col-md-12"> 
                <input type="submit" style="margin-left:45%" class="btn btn-primary" value="Submit" class="btn btn-primary"/>
              </div>
            </div>
          </fieldset>
          </form></div>';
    }
    ?>
    <!--add quiz step 2 end-->

    <!--remove quiz-->
    <?php if (@$_GET['q'] == 5) {

      $result = mysqli_query($con, "SELECT * FROM quiz ORDER BY date ASC") or die('Error');
      echo '<div class="panel">
      <div class="table-responsive">
      <table class="table table-striped title1">
      <tr>
      <td><b>No.</b></td>
      <td><b>Ujian</b></td>
      <td><b>Jumlah Pertanyaan</b></td>
      <td><b>Poin</b></td>
      <td><b>Batas Waktu</b></td>
      <td><b>Aksi</b></td>
      </tr>';
      $c = 1;
      while ($row = mysqli_fetch_array($result)) {
        $title = $row['title'];
        $total = $row['total'];
        $sahi = $row['sahi'];
        $time = $row['time'];
        $eid = $row['eid'];
        echo '<tr>
        <td>' . $c++ . '</td>
        <td>' . $title . '</td>
        <td>' . $total . '</td>
        <td>' . $sahi * $total . '</td>
        <td>' . $time . '&nbsp;min</td>
        <td><b><a href="update.php?q=rmquiz&eid=' . $eid . '" class="btn btn-danger">Hapus</td>
        </tr>';
      }
      $c = 0;
      echo '</table></div></div>';
    }
    ?>

  </main><!-- /.container -->

  <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
</body>

</html>