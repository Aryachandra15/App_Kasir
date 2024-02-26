<nav class="navbar navbar-expand-lg main-navbar">
        <form class="form-inline mr-auto">
          <a href="/dashboard" class="navbar-brand sidebar-gone-hide">Kasir Barokah </a>
        </form>
        <ul class="navbar-nav navbar-right">
        <li class="dropdown"><a href="#" data-toggle="dropdown" class="nav-link dropdown-toggle nav-link-lg nav-link-user">
            <img alt="image" src="{{asset('assets/img/avatar/avatar-1.png')}}" class="rounded-circle mr-1">
            <div class="d-sm-none d-lg-inline-block">{{auth()->user()->nama}}</div></a>
            <div class="dropdown-menu dropdown-menu-right">
              @if(auth()->user()->level=='Admin')
              <a href="/user" class="dropdown-item has-icon">
                <i class="fas fa-user"></i> User
              </a>
              <div class="dropdown-divider"></div>
              @endif
              <a href="/logout" class="dropdown-item has-icon text-danger">
                <i class="fas fa-sign-out-alt"></i> Logout
              </a>
            </div>
          </li>
        </ul>
      </nav>