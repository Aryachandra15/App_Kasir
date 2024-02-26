@extends('layout.app')

@section('title', 'Kasir - Laporan')

@section('content')
<section class="section">
    <div class="section-header">
        <h1>Laporan</h1>
    </div>

    <div class="section-body">
        <div class="row">
            <div class="col-12">
                <div class="card shadow">
                <div class="card-header bg-white justify-content-center">
                        <form action="/laporan/cari">
                            <div class="row">
                                <div class="col-md-4">
                                    <div class="form-group d-flex">
                                        <label class="mr-1" for="nama">Dari</label>
                                        <input type="date" class="form-control" name="dari" id="tanggalDari" max="<?php echo date('Y-m-d'); ?>">
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-group d-flex">
                                        <label class="mr-1" for="nama">Sampai</label>
                                        <input type="date" class="form-control mr-5" name="sampai" id="tanggalSampai" max="<?php echo date('Y-m-d'); ?>">
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <button type="submit" class="btn btn-sm btn-success"><i class="fa fa-search"></i> Cari</button>
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                    <div class="card-body p-2">
                        <table class="table table-hover" id="table">
                            <thead>
                                <tr>
                                    <th>No.</th>
                                    <th>Tanggal Transaksi</th>
                                    <th>Kode Transaksi</th>
                                    <th>Total</th>
                                    <th>Bayar</th>
                                    <th>Kembali</th>
                                    <th>Kode Kasir</th>
                                    <th>Aksi</th>
                                </tr>
                            </thead>
                            <tbody>
                                @foreach($transaksi as $item)
                                <tr>
                                    <td>{{$loop->iteration}}</td>
                                    <td>{{$item->created_at->timezone('Asia/Jakarta')}}</td>
                                    <td>{{$item->kode_transaksi}}</td>
                                    <td>{{$item->total}}</td>
                                    <td>{{$item->bayar}}</td>
                                    <td>{{$item->kembali}}</td>
                                    <td>{{$item->kode_kasir}}</td>
                                    <td>
                                        <a href="/laporan/{{$item->kode_transaksi}}" class="btn btn-sm btn-info"> Detail</a>
                                        <a href="/laporan/{{$item->kode_transaksi}}/print" class="btn btn-sm btn-danger" target="_blank"><i class="fa fa-print"></i> Print</a>
                                    </td>
                                </tr>
                                @endforeach
                            </tbody>
                        </table>
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