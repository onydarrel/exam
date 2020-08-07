<!doctype html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="Ujian Online">
  <meta name="author" content="Ony Darrell">
  <meta name="generator" content="Jekyll v3.8.6">
  <title>EXAM ONLINE</title>
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
</head>

<body>
  <div class="container">
    <h4 class="text-center">INFORM CONSENT (PERSETUJUAN MENJADI RESPONDEN)</h4>
    <p class="text-justify">Perkenalkan nama Saya <b>Purqon</b> (NIM. 1611019) Mahasiswi S1 Keperawatan, Stikes Patria Husada Blitar. Saya bermaksud melakukan penelitian mengenai “Edukasi melalui video online terhadap pengetahuan pengemudi ojek online dalam berperan sebagai <b>Medical First Responder</b>”. Penelitian ini dilakukan sebagai tahap akhir dalam penyelesaian studi. Saya berharap ketersediaannya untuk menjadi responden dalam penelitian ini dimana akan dilakukan pengisian kuesioner yang terkait dengan penelitian. Semua informasi yang saudara berikan terjamin kerahasiaannya.
    </p>

    <div class="form-check">
      <input class="form-check-input" type="radio" name="exampleRadios" id="exampleRadios1" value="option1">
      <label class="form-check-label" for="exampleRadios1">Setuju</label>
    </div>
    <div class="form-check">
      <input class="form-check-input" type="radio" name="exampleRadios" id="exampleRadios2" value="option2">
      <label class="form-check-label" for="exampleRadios2">Tidak Setuju</label>
    </div>

    <hr>

    <form action="sign.php?q=account.php" method="POST">
      <div class="text-center mb-4">
        <img class="mb-4" src="/docs/4.4/assets/brand/bootstrap-solid.svg" alt="" width="72" height="72">
        <h1 class="h3 mb-3 font-weight-normal"><b>REGISTRASI</b></h1>
      </div>

      <div class="form-group row">
        <label for="name" class="col-sm-2 col-form-label">Nama</label>
        <div class="col-sm-10">
          <input type="text" class="form-control" id="name" name="name">
        </div>
      </div>
      <div class="form-group row">
        <label for="email" class="col-sm-2 col-form-label">Email</label>
        <div class="col-sm-10">
          <input type="email" class="form-control" id="email" name="email">
        </div>
      </div>
      <div class="form-group row">
        <label for="password" class="col-sm-2 col-form-label">Password</label>
        <div class="col-sm-10">
          <input type="password" class="form-control" name="password" id="pwd">
        </div>
      </div>

      <fieldset class="form-group">
        <div class="row">
          <legend class="col-form-label col-sm-2 pt-0">Rentang Umur</legend>
          <div class="col-sm-10">
            <div class="form-check">
              <input class="form-check-input" type="radio" name="umur" value="12-25">
              <label class="form-check-label" for="umur">12 - 25 thn</label>
            </div>
            <div class="form-check">
              <input class="form-check-input" type="radio" name="umur" value="26-35">
              <label class="form-check-label" for="umur">26 - 35 thn</label>
            </div>
            <div class="form-check">
              <input class="form-check-input" type="radio" name="umur" value="36-45">
              <label class="form-check-label" for="umur">36 - 45 thn</label>
            </div>
            <div class="form-check">
              <input class="form-check-input" type="radio" name="umur" value="46-55">
              <label class="form-check-label" for="umur">46 - 55 thn</label>
            </div>
          </div>
        </div>
      </fieldset>

      <fieldset class="form-group">
        <div class="row">
          <legend class="col-form-label col-sm-2 pt-0">Jenis Kelamin</legend>
          <div class="col-sm-10">
            <div class="form-check">
              <input class="form-check-input" type="radio" name="jeniskelamin" value="Laki-Laki">
              <label class="form-check-label" for="jeniskelamin">Laki - Laki</label>
            </div>
            <div class="form-check">
              <input class="form-check-input" type="radio" name="jeniskelamin" value="Perempuan">
              <label class="form-check-label" for="jeniskelamin">Perempuan</label>
            </div>
          </div>
        </div>
      </fieldset>

      <fieldset class="form-group">
        <div class="row">
          <legend class="col-form-label col-sm-2 pt-0">Pendidikan</legend>
          <div class="col-sm-10">
            <div class="form-check">
              <input class="form-check-input" type="radio" name="pendidikan" value="SD">
              <label class="form-check-label" for="pendidikan">SD</label>
            </div>
            <div class="form-check">
              <input class="form-check-input" type="radio" name="pendidikan" value="SMP">
              <label class="form-check-label" for="pendidikan">SMP / Sederajat</label>
            </div>
            <div class="form-check">
              <input class="form-check-input" type="radio" name="pendidikan" value="SMU">
              <label class="form-check-label" for="pendidikan">SMU / Sederajat</label>
            </div>
            <div class="form-check">
              <input class="form-check-input" type="radio" name="pendidikan" value="Diploma">
              <label class="form-check-label" for="pendidikan">Diploma</label>
            </div>
            <div class="form-check">
              <input class="form-check-input" type="radio" name="pendidikan" value="Sarjana">
              <label class="form-check-label" for="pendidikan">Sarjana</label>
            </div>
          </div>
        </div>
      </fieldset>

      <fieldset class="form-group">
        <div class="row">
          <legend class="col-form-label col-sm-2 pt-0">Lama bergabung Grab</legend>
          <div class="col-sm-10">
            <div class="form-check">
              <input class="form-check-input" type="radio" name="gabung" value="0-2">
              <label class="form-check-label" for="gabung">0 - 2 thn</label>
            </div>
            <div class="form-check">
              <input class="form-check-input" type="radio" name="gabung" value="3-5">
              <label class="form-check-label" for="gabung">3 - 5 thn</label>
            </div>
            <div class="form-check">
              <input class="form-check-input" type="radio" name="gabung" value=">5">
              <label class="form-check-label" for="gabung">lebih dari 5 thn</label>
            </div>
          </div>
        </div>
      </fieldset>

      <fieldset class="form-group">
        <div class="row">
          <legend class="col-form-label col-sm-2 pt-0">Riwayat mendapatkan informasi tentang Medical First Responder (Prtolongan Pertama)?</legend>
          <div class="col-sm-10">
            <div class="form-check">
              <input class="form-check-input" type="radio" name="riwayat" value="Ya">
              <label class="form-check-label" for="riwayat">Ya</label>
            </div>
            <div class="form-check">
              <input class="form-check-input" type="radio" name="riwayat" value="Tidak">
              <label class="form-check-label" for="riwayat">Tidak</label>
            </div>
          </div>
        </div>
      </fieldset>



      <div class="form-group row">
        <div class="col-sm-10">
          <button type="submit" name="create" class="btn btn-primary">Daftar</button>
          <a href="index.php">Login</a>
        </div>
      </div>
    </form>
  </div>
</body>

</html>