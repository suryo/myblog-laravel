<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
</head>

<body>
    <ul>
        <li><a href="/koperasicategorybarang">list category barang</a></li>
        <li><a href="/koperasicategorybarang/show/2">show category barang</a></li>
        <li><a href="/koperasicategorybarang/edit/5">edit category barang</a></li>
        <li><a href="/koperasibarang">list barang</a></li>
    </ul>
    <h1>EDIT</h1>
    <form action="{{ url('/koperasicategorybarang/update/'.$find->id) }}" method="post">
        @csrf
        <input type="text" value="{{$find->id}}">
    <input style="width:400px" name="category_barang" value="{{$find->category_barang}}" type="text" placeholder="masukkan category baru disini">
    <input type="submit" value="Submit">
    
    {{-- <input style="width:400px" type="text" placeholder="{{url('/')}}"> --}}

</form>
</body>

</html>
