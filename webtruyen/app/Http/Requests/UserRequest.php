<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class UserRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
            'email' => 'required|email|unique:App\Models\User,email',
            'name' => 'required',
            'password'=>'required|confirmed|min:6',
            'password_confirmation' => 'required'
            
        ];
    }
    public function messages()
    {
        return['required'=> ':attribute bắt buộc phải nhập(*)',
                'email'=> 'phải có định dạng :attribute  vd : 123@gmail.com (*)',
                'min'=>'Số kí tự phải lớn hơn :min(*)',
                'unique'=> ':attribute Đã Tồn Tại !',
                'confirmed'=>':attribute Nhập Lại Không Chính Xác (*)'];
    }
    public function attributes()
    {
        return[
            'name'=> ' Họ Tên',
            'email'=> 'Email',
            'password'=>'Mật Khẩu',
            'password_confirmation'=>'Mật Khẩu Nhập Lại',
           
        ];
    }
    
}
