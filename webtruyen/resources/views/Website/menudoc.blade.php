<div class=" tuannn">
    <div class="side-bar-right">
        {{-- @Danh mục Truyện --}}
        <div class="khung">
            <div class="title ">
                <p><i class="bi bi-list-task"></i>&nbsp;&nbsp; Danh mục Truyện</p>
            </div>
            <div class="content bgnew py-2">
                <ul>
                    @foreach ($tendms as $tendm)
                        <a href="{{ route('xemtheodanhmuc', [$tendm->id, $tendm->slugdm]) }}">
                            <li style="display: flex;">
                                &nbsp;&nbsp;<i class="bi bi-caret-right-fill"></i>&nbsp;&nbsp;
                                {{ $tendm->danhmuc }}
                            </li>
                        </a>
                    @endforeach
                </ul>
            </div>
        </div>
        {{-- @ Top Truyện yêu Thích --}}
        <div class="khung py-2">
            <div class="title">
                <p><i class="bi bi-sort-numeric-down"></i>&nbsp;&nbsp; Top Truyện Yêu Thích</p>
            </div>
            <div class="menulist bgnew">
                <ul>
                    <li><a href="" class="menuitem"><img src="/uploads/img_truyen/77.jpg" alt="" width="50px"
                                height="50px">&nbsp;&nbsp;&nbsp;Item 1<i class="bi bi-eye"></i>&nbsp;125,23</li>
                    <li><a href=""><img src="/uploads/img_truyen/77.jpg" alt="" width="50px"
                                height="50px">&nbsp;&nbsp;&nbsp;Item 1</a></li>
                    <li><a href=""><img src="/uploads/img_truyen/77.jpg" alt="" width="50px"
                                height="50px">&nbsp;&nbsp;&nbsp;Item 1</a></li>
                    <li><a href=""><img src="/uploads/img_truyen/77.jpg" alt="" width="50px"
                                height="50px">&nbsp;&nbsp;&nbsp;Item 1</a></li>
                    <li><a href=""><img src="/uploads/img_truyen/77.jpg" alt="" width="50px"
                                height="50px">&nbsp;&nbsp;&nbsp;Item 1</a></li>
                    <li><a href=""><img src="/uploads/img_truyen/77.jpg" alt="" width="50px"
                                height="50px">&nbsp;&nbsp;&nbsp;Item 1</a></li>
                    <li><a href=""><img src="/uploads/img_truyen/77.jpg" alt="" width="50px"
                                height="50px">&nbsp;&nbsp;&nbsp;Item 1</a></li>
                    <li><a href=""><img src="/uploads/img_truyen/77.jpg" alt="" width="50px"
                                height="50px">&nbsp;&nbsp;&nbsp;Item 1</a></li>
                    <li><a href=""><img src="/uploads/img_truyen/77.jpg" alt="" width="50px"
                                height="50px">&nbsp;&nbsp;&nbsp;Item 1</a></li>
                    <li><a href=""><img src="/uploads/img_truyen/77.jpg" alt="" width="50px"
                                height="50px">&nbsp;&nbsp;&nbsp;Item 1</a></li>
                </ul>
            </div>
        </div>
        {{-- @ Thể Loại --}}
        <div class="khung pb-2">

            <div class="title">
                <p><i class="bi bi-tag"></i> &nbsp;&nbsp; Thể Loại</p>
            </div>
            <div class="content-theloai row py-2">
               
                @foreach($theloai as $item)
                <div class="menu-theloai px-2 col-6">
                    <ul>
                     
                        <li>
                            <a href=""><i class="bi bi-tag"></i>&nbsp;&nbsp;{{$item->theloai}}     </a>
                        </li>
               
    
                    </ul>
                </div>
                @endforeach
          
             
            
            </div>
        </div>
        {{-- @ Truyện của độc giả --}}
        <div class="khung">
            <div class="title">
                <p><i class="bi bi-journals"></i>&nbsp;&nbsp; Truyện Ngắn Độc Giả</p>
            </div>
            <div class="content">
                <ul>

                    {{-- @foreach ($tendms as $tendm) --}}
                    <a href="">
                        {{-- <li style="display: flex;">
                &nbsp;&nbsp;<i class="bi bi-filter-left"></i>&nbsp;&nbsp;
                {{$tendm->tendm}}
                </li> --}}
                    </a>
                    {{-- @endforeach --}}
                </ul>
            </div>
        </div>
    </div>
</div>
