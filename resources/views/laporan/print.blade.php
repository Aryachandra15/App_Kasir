<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
        }

        .transaksi-container {
            max-width: 500px;
            margin: 20px auto;
            background-color: #fff;
            padding: 20px;
            border: 1px solid #ddd;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        .transaksi-header {
            text-align: center;
            margin-bottom: 20px;
        }

        .transaksi-details {
            margin-bottom: 10px;
        }

        .transaksi-details label {
            font-weight: bold;
            display: block;
            margin-bottom: 5px;
        }

        .transaksi-details span {
            display: block;
        }

        table {
    width: 100%;
    border-collapse: collapse;
}

th, td {
    padding: 8px;
    text-align: left;
}

th {
    background-color: #f2f2f2; /* Warna latar belakang header */
}

tr:nth-child(even) {
    background-color: #f2f2f2; /* Warna latar belakang baris genap */
}

tr:nth-child(odd) {
    background-color: #ffffff; /* Warna latar belakang baris ganjil */
}

th, td {
    border-bottom: 1px solid #ddd; /* Border bawah untuk sel header dan data */
}

tr:hover {
    background-color: #ddd; /* Warna latar belakang saat dihover */
}


    </style>
</head>

<body>
    <div class="transaksi-container">
        <div class="transaksi-header">
            <h2>Transaksi</h2>
        </div>
        <div class="transaksi-details">
            <label>Kode Transaksi:</label> <span>{{$transaksi->kode_transaksi}}</span><br>
            <label>Total:</label> <span>{{$transaksi->total}}</span><br>
            <label>Bayar:</label> <span>{{$transaksi->bayar}}</span><br>
            <label>Kembali:</label> <span>{{$transaksi->kembali}}</span><br>
            <label>Kode Kasir:</label> <span>{{$transaksi->kode_kasir}}</span><br>
            <label>Waktu:</label> <span>{{$transaksi->tanggal}}</span><br>

            <table border="1" style="width: 500px; margin-bottom: 30px">
                <thead>
                    <tr>
                        <th>No.</th>
                        <th>Barang</th>
                        <th>harga</th>
                        <th>Jumlah</th>
                        <th>Diskon</th>
                        <th>Total</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach($transaksi_detail as $item)
                    <tr>
                        <td>{{$loop->iteration}}</td>
                        <td>{{$item->barang}}</td>
                        <td>{{$item->harga}}</td>
                        <td>{{$item->jumlah}}</td>
                        <td>{{$item->diskon}}%</td>
                        <td>{{$item->total}}</td>
                    </tr>
                    @endforeach
                </tbody>
            </table>
        </div>
    </div>
</body>

</html>
