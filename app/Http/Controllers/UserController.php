<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class UserController extends Controller
{
    public function __construct(){
        session_start();
    }
    public function getLogin(){
        return view('login');
    }
    public function postLogin(Request $request){

    }
}
