<?php

namespace App\Http\Controllers;
use Illuminate\Support\Facades\View;
use Illuminate\Http\Request;

class UserController extends Controller
{
/*     public function getUsername($name)
    {
        // echo "User name" . $name;
        return view('getuser', ['name' => $name]);
    }
 */
    function custommerName(){
        return "Al-amin";
    }

    function role($name){
        return 'Seller ' . $name;
    }

    function getName($name){
        return view('/name', ['Name' => $name]);
    }

    function user(){
        return view('user');
    }

    function header(){
        return view('components.header');
    }

    // check if view exists
    function userHome(){
        if(View::exists('welcome')){
            return view("welcome");
        }else{
            return "No view Found";
        }
    }

    function aboutPage($name){
        return view("user", ['name'=> $name]);
    }

    function getUser(){
        $userName = ['Amin', 'Rafi', 'Rabbi', 'Hazrat', 'Munna', 'Mustafize', 'Ismail', "Razib"];
        $name = "Hazrat Ali";
        return view('getUser', ['name' =>$name, "userName" => $userName]);
    }
}
