<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Laporan Transaksi</title>


</head>

<body>
    <div class="transaksi-container">
        <div class="transaksi-header">
            <h2>Laporan Transaksi</h2>
            <h3>{{$dari}} Sampai {{$sampai}}</h3>
        </div>

        <div class="transaksi-body">
            <table border="1">
                <thead>
                    <tr>
                        <th>Kode Transaksi</th>
                        <th>Tanggal</th>
                        <th>Kasir</th>
                        <th>Bayar</th>
                        <th>Kembali</th>
                        <th>Total</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach($transaksi as $item)
                    <tr>
                        <td>{{$item->kode_transaksi}}</td>
                        <td>{{$item->tanggal}}</td>
                        <td>{{$item->kode_kasir}}</td>
                        <td>{{$item->bayar}}</td>
                        <td>{{$item->kembali}}</td>
                        <td>{{$item->total}}</td>
                    </tr>
                    @endforeach
                    <tr class="total-row">
                        <td colspan="5">Total</td>
                        <td>{{$total}}</td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>
</body>
</html>