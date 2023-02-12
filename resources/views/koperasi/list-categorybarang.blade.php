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
    <br>
    list category barang 
    [<a href="/koperasicategorybarang/add">Add</a>]
    <br>
    <br>
    <table width="100%" border="1">
        <tr>
            <th>ID</th>
            <th>Category Barang</th>
            <th>Action</th>
        </tr>
        @foreach ($res_category_barang as $item)
             <tr>
            <td>{{$item->id}}</td>
            <td>{{$item->category_barang}}</td>
            <td>
            <a href="/koperasicategorybarang/show/{{$item->id}}">show</a> | 
            <a href="/koperasicategorybarang/edit/{{$item->id}}">edit</a> | 
            <a href="/koperasicategorybarang/delete/{{$item->id}}">delete</a>
        </td>
        </tr>
        @endforeach
       
    </table>
</body>
</html>
