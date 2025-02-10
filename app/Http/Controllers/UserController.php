<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class UserController extends Controller
{
    public function getUsername($name)
    {
        // echo "User name" . $name;
        return view('getuser', ['name' => $name]);
    }

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
}
