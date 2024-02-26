<div class="main-sidebar">
    <aside id="sidebar-wrapper">
        <div class="sidebar-brand sidebar-gone-show"><a href="index.html">Stisla</a></div>
        @if(auth()->user()->level == 'Admin')
        <ul class="sidebar-menu">
            <li class="dropdown bg-white">
                <a href="/dashboard" class="nav-link mb-2 ml-2"><i class="fas fa-fire"></i><span>Dashboard</span></a>
            </li>
        </ul>
        <ul class="sidebar-menu">
            <li class="dropdown bg-white">
                <a href="/kategori" class="nav-link m-2"><i class="fas fa-list"></i><span>Kategori</span></a>
            </li>
        </ul>
        <ul class="sidebar-menu">
            <li class="dropdown bg-white">
                <a href="/satuan" class="nav-link m-2"><i class="fas fa-box"></i><span>Satuan</span></a>
            </li>
        </ul>
        <ul class="sidebar-menu">
            <li class="dropdown bg-white">
                <a href="/barang" class="nav-link m-2"><i class="fas fa-boxes"></i><span>Barang</span></a>
            </li>
        </ul>
        @endif 
        @if(auth()->user()->level == 'Kasir')
        <ul class="sidebar-menu">
            <li class="dropdown bg-white">
                <a href="/penjualan" class="nav-link m-2"><i class="fas fa-shopping-cart"></i><span>Penjualan</span></a>
            </li>
        </ul>
        @endif 
        @if(auth()->user()->level == 'Admin')
        <ul class="sidebar-menu">
            <li class="dropdown bg-white">
                <a href="/laporan" class="nav-link m-2"><i class="fas fa-file"></i><span>Laporan</span></a>
            </li>
        </ul>
        <ul class="sidebar-menu">
            <li class="dropdown bg-white">
                <a href="/user" class="nav-link m-2"><i class="fas fa-users"></i><span>User</span></a>
            </li>
        </ul>
        @endif
        <ul class="sidebar-menu">
            <li class="dropdown bg-white">
                <a href="/logout" class="nav-link m-2 text-danger"><i class="fas fa-sign-out-alt text-danger"></i><span>Logout</span></a>
            </li>
        </ul>
    </aside>
</div>
