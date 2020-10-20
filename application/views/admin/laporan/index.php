<main role="main" class="col-md-9 ml-sm-auto col-lg-10 px-md-4">
  <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
    <h1 class="h2"><?= $title; ?></h1>
  </div>
  <div class="card">
    <div class="card-body">
      <div class="row">
        <div class="col-md-6">
          <div class="card" style="width: 18rem;">
            <div class="card-body">
              <h5 class="card-title">Laporan Guru</h5>
              <a href="<?= base_url('admin/laporan/guru'); ?>" target="_blank" class="btn btn-primary"><i class="fas fa-print"></i></a>
            </div>
          </div>
        </div>
        <div class="col-md-6">
          <div class="card" style="width: 18rem;">
            <div class="card-body">
              <h5 class="card-title">Laporan Siswa</h5>
              <a href="<?= base_url('admin/laporan/siswa'); ?>" target="_blank" class="btn btn-primary"><i class="fas fa-print"></i></a>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</main>