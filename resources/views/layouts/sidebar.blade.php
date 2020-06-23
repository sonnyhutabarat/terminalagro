<li class="header">MAIN NAVIGATION</li>
        <li><a href="{{ url('/') }}"><i class="fa fa-dashboard"></i> <span>Dashboard</span></a></li>
        <li class="treeview">
          <a href="#">
            <i class="fa fa-shopping-basket"></i>
            <span>Toko</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            <li><a href="{{ url('toko') }}">Daftar Toko</a></li>
            <li><a href="{{ url('konfirmasi') }}">Konfirmasi Toko</a></li>
          </ul>
        </li>
        <li class="treeview">
          <a href="#">
            <i class="fa fa-shopping-bag"></i>
            <span>Produk</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            <li><a href="{{ url('kategori') }}">Kategori Produk</a></li>
            <li><a href="{{ url('produk') }}">Daftar Produk</a></li>
          </ul>
        </li>
        <li><a href="{{ url('pembeli') }}"><i class="fa fa-user-circle"></i> <span>Pembeli</span></a></li>
        <li class="treeview">
          <a href="#">
            <i class="fa fa-bookmark"></i> <span>Konfirmasi</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            <li><a href="{{ url('konfirmasi') }}">Status Toko</a></li>
          </ul>
        </li>
        <li class="treeview">
          <a href="#">
            <i class="fa fa-money"></i> <span>Transaksi</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            <li><a href="{{ url('transaksi')}}">Daftar Transaksi</a></li>
            <li><a href="{{ url('statustransaksi')}}">Status Transaksi</a></li>
            <li><a href="{{ url('statuspengiriman')}}">Status Pengiriman</a></li>
          </ul>
        </li>
        <li><a href="{{ url('pembeli') }}"><i class="fa fa-user-circle"></i> <span>Pembeli</span></a></li>
        <li class="treeview">
          <a href="#">
            <i class="fa fa-bar-chart"></i> <span>Statistik</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            <li><a href="{{ url('penjualanchart')}}">Statistik Transaksi</a></li>
            <li><a href="{{ url('produkchart')}}">Statistik Produk</a></li>
          </ul>
        </li>
        <li><a href="{{ url('refrensibank') }}"><i class="fa fa-university"></i> <span>Refrensi Bank</span></a></li>
        <li><a href="{{ url('role') }}"><i class="fa fa-address-card-o"></i> <span>Role</span></a></li>
        <li><a href="{{ url('syaratketentuan') }}"><i class="fa fa-book"></i> <span>Syarat & Ketentuan</span></a></li>
          