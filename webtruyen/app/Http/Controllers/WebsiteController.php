<?php

namespace App\Http\Controllers;

use App\Models\Author;
use App\Models\dmtruyen;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Models\baiviet;
use App\Models\Banner;
use App\Models\Product;
use App\Models\session;
use App\Models\thuocdanh;
use App\Models\thuocloai;
use App\Models\theloai;

class WebsiteController extends Controller
{
    //@ Phần xử lí các trang hiển thị trên Website
    public function Home()
    {
        $tendms = dmtruyen::orderBy('id', 'DESC')->get();
        $truyen = Product::orderBy('id', 'DESC')->where('kichhoat', 0)->paginate(14);

       foreach ($truyen as $item )
        $theloai = theloai::orderBy('id', 'DESC')->get();
        $truyenhot = Product::orderBy('id', 'DESC')->where('hot', 0)->where('kichhoat', 0)->paginate(14);
     
        //@tổng view theo view_session
        $session = session::where('id_product',$item->id)->get();
      
    //     

        
        
        $show = 'show'; //*gán biến $show = 'show'
        $banners = Banner::all()->where('show_banner', $show); //*lấy trường show_banner với điều kiện show_banner = $show ('show)
        $session_new = session::with('Product')->where('kichhoat', 0)->paginate(14);
        if ($banners) {

            return view('Website/home')->with(compact('tendms', 'banners', 'truyen', 'session_new', 'truyenhot','theloai'));
        }
    }
    public function allbaiviet()
    {
        $tendms = dmtruyen::orderBy('id', 'DESC')->get();
        $show = 'show';
        $banners = Banner::all()->where('show_banner', $show);
        if ($banners) {
            return view('Website/home')->with('tendms', $tendms)->with('banners', $banners);
        }
    }
    public function formTrangtruyen($id)
    {
        $truyen = Product::find($id);
        $theloai = theloai::orderBy('id', 'DESC')->get();
        $truyennew = Product::orderBy('id', 'DESC')->get();
        $tendms = dmtruyen::orderBy('id', 'DESC')->get();
        $cungloai = Product::orderBy('id', 'DESC')->where('kichhoat', 0)->where('danhmuc_id', $truyen->danhmuc_id)->paginate(14);
        $session = session::orderBy('id', 'ASC')->where('id_product', $id)->paginate(20);
        $session_dau = session::orderBy('id', 'ASC')->where('id_product', $id)->first();
        $sl_session = count($session); //số lượng chương

        return view('Website/form_trang_truyen')->with(compact('tendms', 'session', 'cungloai', 'truyen', 'sl_session', 'session_dau', 'truyennew','theloai'));
    }
    //@TRANG XEM THEO TỪNG DANH MỤC
    public function xemtheodanhmuc($id)
    {
        $tendms = dmtruyen::orderBy('id', 'DESC')->get();
        $theloai = theloai::orderBy('id', 'DESC')->get();
        $dm = dmtruyen::orderBy('id', 'DESC')->where('id', $id)->get();
        //@lấy ra mảng có chứa danhmuc và lấy liên kết vs prouct với điều kiện id danh mục bằng id truyền vào 
        $truyen = dmtruyen::with('nhieuTruyen')->where('id', $id)->first();
   
        return view('Website/formdanhmuc')->with(compact('tendms', 'truyen', 'dm','theloai'));
    }
    public function xemtheotheloai($id) {
        $tendms = dmtruyen::orderBy('id', 'DESC')->get();
        $theloai = theloai::orderBy('id', 'DESC')->get();
        $tl = theloai::orderBy('id', 'DESC')->where('id', $id)->get();
        $truyen = theloai::with('tl_Truyens')->where('id',$id)->first();
        return view('Website/form_theloai')->with(compact('tendms','theloai','truyen','tl'));
    }
    public function session_view($id)
    {
        $session = session::find($id);
        $theloai = theloai::orderBy('id', 'DESC')->get();
        $tendms = dmtruyen::All();
        $session_truyen = session::orderBy('id', 'ASC')->where('id_product', $session->id_product)->paginate(20);
        $biendem = count($session_truyen);

        return view('Website/session_view')->with(compact('tendms', 'session', 'biendem', 'session_truyen','theloai'));
    }
    //@ Phần xử lí đọc truyện
    public function doctruyen($id)
    {
        $tendms = dmtruyen::orderBy('id', 'DESC')->get();
        $view_session = session::find($id);
        $theloai = theloai::orderBy('id', 'DESC')->get();
        $all_session = session::orderBy('id', 'ASC')->where('kichhoat', '0')->where('id_product', $view_session->id_product)->get();
        //@ lấy ra id kế tiếp dựa trên id session
        $next_session = session::where('id_product', $view_session->id_product)->where('id', '>', $view_session->id)->min('id');
        $pre_session = session::where('id_product', $view_session->id_product)->where('id', '<', $view_session->id)->max('id');
        //@ lấy ra một mảng trong bảng session dựa trên id của truyện và id bẳng với id của session kế tiếp
        $next_slug = session::orderBy('id', 'DESC')->where('id_product', $view_session->id_product)->where('id', $next_session)->get();
        $pre_slug = session::orderBy('id', 'DESC')->where('id_product', $view_session->id_product)->where('id', $pre_session)->get();
        $max_id = session::where('id_product', $view_session->id_product)->orderBy('id', 'DESC')->first();
        $min_id = session::where('id_product', $view_session->id_product)->orderBy('id', 'ASC')->first();
        //  dd($view_session->id_product);
        //@ lấy ra slug_session từ mẳng next_slug
        foreach ($next_slug as $item) {
            $next_slug = $item->slug_session;
        }
        foreach ($pre_slug as $item) {
            $pre_slug = $item->slug_session;
        }
        //@tăng view_session
        $view_session = session::where('id',$id)->first();
     
        $view_session->view_session = $view_session->view_session+1;
        $view_session->save();


        return view('Website/doctruyen')->with(compact('tendms', 'max_id', 'min_id', 'view_session', 'all_session', 'next_session', 'pre_session', 'pre_slug', 'next_slug','theloai'));
    }
    //@ Phần xử lí tìm Kiếm
    public function timkiem(Request $request)
    {



        $tendms = dmtruyen::All();
        $theloai = theloai::orderBy('id', 'DESC')->get();
        $key = $request->key;
        $truyen = Product::with('danhmuc')->where('name_product', 'LIKE', '%' . $key . '%')->get();
        


        return view('Website/timkiem')->with(compact('truyen', 'key', 'tendms','theloai'));
    }
    public function timkiem_ajax(Request $request)
    {
        $data = $request->all();
        if ($data['keywords']) {
            $truyen = Product::where('kichhoat', 0)->where('name_product', 'LIKE', '%' . $data['keywords'] . '%')->get();
            
            $output = '
            <ul class="dropdown-menu" style="display:block;">';
            foreach ($truyen as  $tr) {
                $output .= '
            <li class="li_search_ajax"><a href="' . route('trangtruyen', [$tr->id, $tr->slug_product]) . '"><img src="/uploads/img_truyen/' . $tr->img_product . '" alt="">' . $tr->name_product . '</a></li>';
            
            }
            $output .= '</ul>';
            echo $output;
            // $dm = dmtruyen::where('kichhoat', 0)->where('danhmuc', 'LIKE', '%' . $data['keywords'] . '%')->get();
            // $output = '
            // <ul class="dropdown-menu" style="display:block;">';
            // foreach ($dm as  $item) {
            //     $output .= '
            // <li class="li_search_ajax"><a href="' . route('xamtheodanhmuc', [$item->id, $item->slugdm]) . '">'.$item->danhmuc . '</a></li>';
            // }
            // $output .= '</ul>';
            // echo $output;
        }
    }
}
