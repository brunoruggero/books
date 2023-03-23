@extends('master')

@section('content')
    <div class="container-login">
        <div class="box-login">
            <div class="logo">
                <img src="{{ URL::to('images/logo.png') }}" alt="">
            </div>
            <h2>@lang('messages.title_login')</h2>
            <form action="{{route('login.store')}}" method="post">
                @csrf()
                <input type="email" name="email" placeholder="@lang('messages.login_email')" value="eloah.tamoio@cortes.net.br" >
                {{ $errors->first('email')}}
                <input type="password" name="password" placeholder="@lang('messages.login_pass')" value="123456" >
                {{ $errors->first('password')}}
                <div class="mt-3">
                    <input type="checkbox" name="remember"> @lang('messages.check_remember')
                </div>
                <button type="submit">@lang('messages.btn_login')</button>
            </form>

        </div>
    </div>
@endsection
