@extends('layout.app')

@section('title', 'Kasir - Dashboard')

@section('content')
<section class="section">
    <div class="section-header">
        <h1>Dashboard</h1>
    </div>

    <div class="alert alert-primary">
        <p>Hai <span class="font-weight-bold">{{auth()->user()->nama}}</span>, Kamu Login Sebagai <span class="font-weight-bold">{{auth()->user()->level}}</span>.</p>
    </div>

    <div class="section-body">
    <div class="row">
            <div class="col-lg-3 col-md-6 col-sm-6 col-12">
              <div class="card card-statistic-1">
                <div class="card-icon bg-primary">
                  <i class="far fa-user"></i>
                </div>
                <div class="card-wrap">
                  <div class="card-header">
                    <h4>User</h4>
                  </div>
                  <div class="card-body">
                    {{$user->count()}}
                  </div>
                </div>
              </div>
            </div>
            <div class="col-lg-3 col-md-6 col-sm-6 col-12">
              <div class="card card-statistic-1">
                <div class="card-icon bg-danger">
                <i class="fas fa-box"></i>
                </div>
                <div class="card-wrap">
                  <div class="card-header">
                    <h4>Barang</h4>
                  </div>
                  <div class="card-body">
                  {{$barang->count()}}
                  </div>
                </div>
              </div>
            </div>
            <div class="col-lg-3 col-md-6 col-sm-6 col-12">
              <div class="card card-statistic-1">
                <div class="card-icon bg-warning">
                <i class="fas fa-money-check-alt"></i>
                </div>
                <div class="card-wrap">
                  <div class="card-header">
                    <h4>Transaksi</h4>
                  </div>
                  <div class="card-body">
                  {{$transaksi->count()}}
                  </div>
                </div>
              </div>
            </div>
            <div class="col-lg-3 col-md-6 col-sm-6 col-12">
              <div class="card card-statistic-1">
                <div class="card-icon bg-success">
                <i class="fas fa-info"></i>
                </div>
                <div class="card-wrap">
                  <div class="card-header">
                    <h4>Transaksi Detail</h4>
                  </div>
                  <div class="card-body">
                  {{$detail->count()}}
                  </div>
                </div>
              </div>
            </div>                  
          </div>
    </div>
</section>
@endsection
@push('script')
<script>
    $(document).ready(function () {
        $('#table').DataTable();
    });

</script>
@endpush
