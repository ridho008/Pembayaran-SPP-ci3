<nav class="navbar navbar-dark sticky-top bg-dark flex-md-nowrap p-0 shadow">
  <a class="navbar-brand col-md-3 col-lg-2 mr-0 px-3" href="<?= base_url('dashboard'); ?>"><i class="fas fa-school"></i> SPP MUDA</a>
  <button class="navbar-toggler position-absolute d-md-none collapsed" type="button" data-toggle="collapse" data-target="#sidebarMenu" aria-controls="sidebarMenu" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <input class="form-control form-control-dark w-100" type="text" placeholder="Search" aria-label="Search">
  <ul class="navbar-nav px-3">
    <li class="nav-item text-nowrap">
      <a class="nav-link" href="<?= base_url('auth/logout'); ?>">Sign out</a>
    </li>
  </ul>
</nav>

<div class="container-fluid">
  <div class="row">
    <nav id="sidebarMenu" class="col-md-3 col-lg-2 d-md-block bg-light sidebar collapse">
      <div class="sidebar-sticky pt-3">
        <ul class="nav flex-column">
          <li class="nav-item">
            <a class="nav-link<?= $this->uri->segment(1) == 'dashboard' ? ' active' : '' ?>" href="<?= base_url('dashboard'); ?>">
              <i class="fas fa-tachometer-alt"></i>
              Dashboard
            </a>
          </li>
          <h6 class="sidebar-heading d-flex justify-content-between align-items-center px-3 mt-4 mb-1 text-muted">
            <span>Master Data</span>
            <a class="d-flex align-items-center text-muted" href="#" aria-label="Add a new report">
              <span data-feather="plus-circle"></span>
            </a>
          </h6>
          <li class="nav-item">
            <a class="nav-link<?= $this->uri->segment(2) == 'users' ? ' active' : '' ?>" href="<?= base_url('admin/users'); ?>">
              <i class="fas fa-users"></i>
              Data Users
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link<?= $this->uri->segment(2) == 'guru' ? ' active' : '' ?>" href="<?= base_url('admin/guru'); ?>">
              <i class="fas fa-user-friends"></i>
              Data Guru
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link<?= $this->uri->segment(2) == 'wali' ? ' active' : '' ?>" href="<?= base_url('admin/wali'); ?>">
              <i class="fas fa-user-tie"></i>
              Data Wali Kelas
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link<?= $this->uri->segment(2) == 'siswa' ? ' active' : '' ?>" href="<?= base_url('admin/siswa'); ?>">
              <i class="fas fa-users"></i>
              Data Siswa
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link<?= $this->uri->segment(2) == 'transaksi' ? ' active' : '' ?>" href="<?= base_url('admin/transaksi'); ?>">
              <i class="fas fa-money-check-alt"></i>
              Transaksi
            </a>
          </li>
        </ul>

        <h6 class="sidebar-heading d-flex justify-content-between align-items-center px-3 mt-4 mb-1 text-muted">
          <span>Laporan</span>
          <a class="d-flex align-items-center text-muted" href="#" aria-label="Add a new report">
            <span data-feather="plus-circle"></span>
          </a>
        </h6>
        <ul class="nav flex-column mb-2">
          <li class="nav-item">
            <a class="nav-link<?= $this->uri->segment(2) == 'laporan' ? ' active' : '' ?>" href="<?= base_url('admin/laporan'); ?>">
              <i class="fas fa-clipboard-list"></i>
              Laporan
            </a>
          </li>
        </ul>
      </div>
    </nav>