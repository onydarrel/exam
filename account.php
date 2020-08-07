<!doctype html>
<html lang="en" class="h-100">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
  <meta name="generator" content="Jekyll v3.8.6">
  <title>PESERTA UJIAN</title>
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
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

    /* Custom page CSS
-------------------------------------------------- */
    /* Not required for template or sticky footer method. */

    main>.container {
      padding: 60px 15px 0;
    }

    .footer {
      background-color: #f5f5f5;
    }

    .footer>.container {
      padding-right: 15px;
      padding-left: 15px;
    }

    code {
      font-size: 80%;
    }

    p {
      margin-top: 7px;
    }
  </style>
  <!--alert message-->
  <?php if (@$_GET['w']) {
    echo '<script>alert("' . @$_GET['w'] . '");</script>';
  }
  ?>
  <!--alert message end-->
</head>

<?php
include_once 'dbConnection.php';
?>

<body class="d-flex flex-column h-100">




  <header>
    <!-- Fixed navbar -->
    <nav class="navbar navbar-expand-md navbar-light fixed-top bg-light">
      <div class="container">
        <a class="navbar-brand" href="#"></a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarCollapse">
          <ul class="navbar-nav mr-auto">
            <?php
            include_once 'dbConnection.php';
            session_start();
            if (!(isset($_SESSION['email']))) {
              header("location:index.php");
            } else {
              $name = $_SESSION['name'];
              $email = $_SESSION['email'];
              echo '
              <p>Selamat datang, <b>' . $name . ' </b></p>';
            } ?>
            <li <?php if (@$_GET['q'] == 1) echo 'class="active nav-item"'; ?>>
              <a class="nav-link" href="account.php?q=1">Home</a>
            </li>
            <li <?php if (@$_GET['q'] == 1) echo 'class="active nav-item"'; ?>>
              <a class="nav-link" href="account.php?q=2">Riwayat</a>
            </li>

            <li <?php if (@$_GET['q'] == 1) echo 'class="active nav-item"'; ?>>
              <a class="nav-link" href="logout.php?q=account.php">Logout</a>
            </li>
          </ul>

        </div>
      </div>
    </nav>
  </header>

  <main role="main" class="flex-shrink-0">
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <!-- MENU HOME -->
          <?php if (@$_GET['q'] == 1) {
            $result = mysqli_query($con, "SELECT * FROM quiz ORDER BY date ASC") or die('Error');
            echo  '<div class="panel">
              <div class="table-responsive">
              <table class="table table-striped table-sm table-bordered">
                <div id="urutan">
                  <h5>URUTAN UJIAN</h5>
                  <ol class="alert alert-warning px-4" role="alert">
                    <li>Menjawab soal <b>PRE TEST</b> (Driver Grab diminta untuk mengisi Kuesioner Pre Test)</li>
                    <li>Video tidak bisa diputar sebelum Peserta selesai melakukan Ujian <b>Pre Test</b> (Driver Grab diminta melihat video tentang Medical First Responder)</li>
                    <li>Pemutaran Video, kemudian Peserta menjawab soal <b>POST TEST</b> (Driver Grab diminta untuk mengisi Kuesioner Post Test)</li>
                  </ol>
                </div>
                <tr>
                  <th>#</th>
                  <th>Ujian</th>
                  <th>Jumlah Soal</th>
                  <th>Poin</th>
                  <th>Batas Waktu</th>
                  <th>Aksi</th>
                </tr>';
            $c = 1;
            while ($row = mysqli_fetch_array($result)) {
              $title = $row['title'];
              $total = $row['total'];
              $sahi = $row['sahi'];
              $time = $row['time'];
              $eid = $row['eid'];
              $q12 = mysqli_query($con, "SELECT score FROM history WHERE eid='$eid' AND email='$email'") or die('Error98');
              $rowcount = mysqli_num_rows($q12);
              if ($rowcount == 0) {
                echo '
                <tr>
                  <td colspan="6">
                    <figure id="videoContainer" data-fullscreen="true">
                        <video id="video" width="100%" preload="metadata" poster="img/moment.jpg">
                          <source src="video/video.mp4" type="video/mp4">
                        </video>
                        <ul id="video-controls" class="controls">
                            <li><button id="playpause" type="button">Play/Pause</button></li>
                        </ul>
                      </figure>
                    <script src="js/video-player.js"></script>
                  </td>
                </tr>
                <tr>
                    <td>' . $c++ . '</td>
                    <td><b>' . $title . '</b></td>
                    <td>' . $total . '</td>
                    <td>' . $sahi * $total . '</td>
                    <td>' . $time . ' menit</td>
                    <td><a href="account.php?q=quiz&step=2&eid=' . $eid . '&n=1&t=' . $total . '" class="btn btn-warning">Ujian</a>
                    </td>
                  </tr>';
              } else {
                echo '<tr>
                  <td>' . $c++ . '</td>
                  <td><b>' . $title . '</b> <span title="Ujian ini sudah Anda selesaikan" class="glyphicon glyphicon-ok" aria-hidden="true"></span></td>
                  <td>' . $total . '</td>
                  <td>' . $sahi * $total . '</td>
                  <td>' . $time . '&nbsp;min</td>
                  <td><a href="update.php?q=quizre&step=25&eid=' . $eid . '&n=1&t=' . $total . '" class="btn btn-danger disabled">Selesai</a></td>
                  </tr>';
              }
            }
            $c = 0;
            echo '</table>
              </div>
              </div>';
          } ?>
          <!--home closed-->

          <!-- MENU QUIZ -->
          
          <?php
          if (@$_GET['q'] == 'quiz' && @$_GET['step'] == 2) {


            $eid = @$_GET['eid'];
            $sn = @$_GET['n'];
            $total = @$_GET['t'];
            $q = mysqli_query($con, "SELECT * FROM questions WHERE eid='$eid' AND sn='$sn'");
            echo '<div class="panel">';
            while ($row = mysqli_fetch_array($q)) {
              $qns = $row['qns'];
              $qid = $row['qid'];
              echo 'Pertanyaan' . $sn . ' : <br><b>' . $qns . '</b><br>';
            }
            $q = mysqli_query($con, "SELECT * FROM options WHERE qid='$qid'");
            echo '
              <form action="update.php?q=quiz&step=2&eid=' . $eid . '&n=' . $sn . '&t=' . $total . '&qid=' . $qid . '" method="POST" class="form-horizontal">
                <br>';
            while ($row = mysqli_fetch_array($q)) {
              $option = $row['option'];
              $optionid = $row['optionid'];
              echo '<input type="radio" name="ans" value="' . $optionid . '"> ' . $option . '<br><br>';
            }
            echo '<br>
                <button type="submit" class="btn btn-primary">Submit</button>
              </form>
            </div>';
            //header("location:dash.php?q=4&step=2&eid=$id&n=$total");
          }

          // MENU HASIL
          if (@$_GET['q'] == 'result' && @$_GET['eid']) {
            $eid = @$_GET['eid'];
            $q = mysqli_query($con, "SELECT * FROM history WHERE eid='$eid' AND email='$email' ") or die('Error157');
            echo  '<div class="panel">
            
            <h1>Hasil</h1>
            <table class="table table-striped table-sm table-bordered">';
            while ($row = mysqli_fetch_array($q)) {
              $s = $row['score'];
              $w = $row['wrong'];
              $r = $row['sahi'];
              $qa = $row['level'];
              echo '<tr>
                <td>Jumlah Pertanyaan</td>
                <td>' . $qa . '</td>
              </tr>
              <tr>
                <td>Jawaban Benar</td>
                <td>' . $r . '</td>
              </tr>
              <tr>
                <td>Jawaban Salah</td>
                <td>' . $w . '</td></tr>
              <tr>
                <td>Nilai</td>
                <td>' . $s . '</td>
              </tr>';
            }
            $q = mysqli_query($con, "SELECT * FROM rank WHERE  email='$email' ") or die('Error157');
            while ($row = mysqli_fetch_array($q)) {
              $s = $row['score'];
              echo '<tr>
              <td>Total Nilai Ujian</td>
              <td>' . $s . '</td>
              </tr>';
            }
            echo '</table></div>';
          }
          ?>
          <!--quiz end-->

          <?php
          // MENU RIWAYAT
          if (@$_GET['q'] == 2) {
            $q = mysqli_query($con, "SELECT * FROM history WHERE email='$email' ORDER BY date ASC ") or die('Error197');
            echo  '<div class="panel">
            <div class="table-responsive">
            <table class="table table-striped table-sm table-bordered">
            <tr>
              <th>#</th>
              <th>Nama</th>
              <th>Nama Ujian</th>
              <th>Soal Terjawab</th>
              <th>Benar</th>
              <th>Salah</th>
              <th>Nilai</th>
            </tr>';
            $c = 0;
            while ($row = mysqli_fetch_array($q)) {
              $eid = $row['eid'];
              $qa = $row['level'];
              $r = $row['sahi'];
              $w = $row['wrong'];
              $s = $row['score'];

              $q23 = mysqli_query($con, "SELECT title FROM quiz WHERE  eid='$eid'") or die('Error208');
              while ($row = mysqli_fetch_array($q23)) {
                $title = $row['title'];
              }

              $c++;
              echo '<tr>
                <td>' . $c . '</td>
                <td>' . $name . '</td>
                <td>' . $title . '</td>
                <td>' . $qa . ' soal</td>
                <td>' . $r . ' benar</td>
                <td>' . $w . ' salah</td>
                <td>' . $s . '</td>
              </tr>';
            }
            echo '</table></div>';
          }

          // MENU PERINGKAT
          if (@$_GET['q'] == 3) {
            $q = mysqli_query($con, "SELECT * FROM rank  ORDER BY score ASC") or die('Error223');
            echo '<div class="panel title">
            <div class="table-responsive">
            <table class="table table-striped table-sm table-bordered">
            <tr>
              <th>#</th>
              <th>Nama</th>
              <th>JK</th>
              <th>Pendidikan</th>
              <th>Nilai</th>
            </tr>';
            $c = 0;
            while ($row = mysqli_fetch_array($q)) {
              $e = $row['email'];
              $s = $row['score'];
              $q12 = mysqli_query($con, "SELECT * FROM user WHERE email='$e' ") or die('Error231');
              while ($row = mysqli_fetch_array($q12)) {
                $name = $row['name'];
                $jeniskelamin = $row['jeniskelamin'];
                $pendidikan = $row['pendidikan'];
              }
              $c++;
              echo '<tr>
                <td><b>' . $c . '</b></td>
                <td>' . $name . '</td>
                <td>' . $jeniskelamin . '</td>
                <td>' . $pendidikan . '</td>
                <td>' . $s . '</td>
              </tr>';
            }
            echo '
            </table>
            </div>
            </div>';
          }
          ?>
        </div>
      </div>
    </div>

    </div>
  </main>

  <footer class="footer mt-auto py-3">
    <div class="container">
      <span class="text-muted">UJIAN ONLINE @2020</span>
    </div>
  </footer>

  <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
  <!-- <script>
        $(document).ready(function(){
          $("#urutan").hide();
        });
      </script> -->
</body>

</html>

