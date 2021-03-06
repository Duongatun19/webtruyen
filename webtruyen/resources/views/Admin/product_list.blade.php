@extends('layout/admin_layout')
@section('product_list')
    <div class="row ps-5 py-3">
        <nav style="--bs-breadcrumb-divider: '>';" aria-label="breadcrumb" class="">
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="{{ route('Home') }}"><i
                            class="bi bi-house-door-fill"></i>&nbsp;Admin</a></li>
                <li class="breadcrumb-item active" aria-current="page">List Comics</li>
            </ol>
        </nav>
    </div>
    <div class="row px-5 py-3">
        <div class="phanloai">
            <div>
                <h3>List Comics</h3>
            </div>
            <div>
                <a href="{{ route('create_product') }}" style="display: flex;"><button type="button"
                        class="btn btn-primary">ADD</button></a>
            </div>
        </div>
    </div>
    <div class="row px-5">
        <table class="table table-sm " id="dataTables-example">
            <thead>
                <tr>
                    <th scope="col">STT</th>
                    <th scope="col">Name</th>
                    <th scope="col">Img</th>
                    <th scope="col">Slug</th>
                    <th scope="col">HOT</th>
                    <th scope="col">Content</th>
                    <th scope="col">Author</th>
                    <th scope="col">Status</th>
                    <th scope="col">Show</th>
                    <th scope="col">Setting</th>

                </tr>
            </thead>
            <tbody>
                @foreach ($list_truyen as $truyen)
                    <tr>
                        <td>{{ $truyen->id }}</td>
                        <td>{{ $truyen->name_product }}</td>
                        <td><img src="/uploads/img_truyen/{{ $truyen->img_product }}" alt="" srcset="" width="70px"
                                height="85px"></td>
                        <td>{{ $truyen->slug_product }}</td>
                        <td>
                            @if ('0' == $truyen->hot)
                                <p style="color: rgb(3, 180, 3)">ON</p>
                            @else
                                <p style="color: red">OFF</p>
                            @endif
                        </td>

                        <td>
                            <textarea name="" id="" cols="20" rows="3" disabled>{{ $truyen->content_product }}</textarea>
                        </td>

                        <td>{{ $truyen->Author->name_author }}</td>
                        <td>
                            @if ('0' == $truyen->tinhtrang)
                            <p style="color: rgb(238, 255, 0)">??ang c???p nh???t</p>
                            
                            @else
                            <p style="color: rgb(3, 180, 3)">Full</p>
                            @endif
                        </td>
                        <td>
                            @if ('0' == $truyen->kichhoat)
                                <p style="color: rgb(3, 180, 3)">ON</p>
                            @else
                                <p style="color: red">OFF</p>
                            @endif
                        </td>
                        <td>
                            <div class="thaotac">
                                <button><a href="{{ route('edit_product', $truyen->id) }}" class="btn-sua"><i
                                            class="fa-solid fa-wrench"></i></a></button>&nbsp;&nbsp;
                                <form action="{{ route('delete_truyen', $truyen->id) }}" method="post"
                                    class="dele">
                                    @csrf
                                    @method('DELETE')
                                    <button onclick="return confirm('B???n C?? Ch???c Mu???n Xo?? M???c N??y kh??ng ?')"
                                        type="submit"><i class="fa-solid fa-trash-can"></i></button>
                                </form>
                        </td>
                    </tr>
                @endforeach
            </tbody>
        </table>
    </div>
@endsection
