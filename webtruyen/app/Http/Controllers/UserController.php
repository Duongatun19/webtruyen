<?php

namespace App\Http\Controllers;

use App\Http\Requests\AdminRequest;
use App\Models\RegisterModel;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Redirect;
use Illuminate\Support\Facades\Session;
use App\Http\Requests\UserRequest;

class UserController extends Controller
{
    //@ XỬ LÝ ĐĂNG NHẬP VÀ ĐĂNG KÝ
    public function TrangDangKi()
    {
        return view('User/register');
    }
    public function DangKiTK(UserRequest $request)
    {


        $user = new User();
        $user->name = $request->name;
        $user->email = $request->email;
        $user->password = md5($request->password);
        $user->save();

        return redirect()->route('FormLoginAdmin')->with('ok', 'Đăng Kí Thành Công');
    }
    public function LoginAdmin(Request $request)
    {

        $email = $request->email;
        $password = md5($request->password);
        $result = DB::table('users')->where('email', $email)->where('password', $password)->first();
        if ($result) {
            Session::put('name', $result->name);
            Session::put('id', $result->id);
            return redirect()->route('HomeAdmin')->with('ok', 'Đăng Nhập Thành Công');
        } else {

            return redirect()->route('FormLoginAdmin')->with('loi', 'Sai Tài Khoản Hoặc Mật Khẩu !');
        }
    }
    public function Logout()
    {
        Session::put('admin_name', null);
        Session::put('admin_id', null);
        return redirect()->route('FormLoginAdmin')->with('ok', 'Đăng Xuất Thành Công');
    }
    public function List_user()
    {
    }
}
