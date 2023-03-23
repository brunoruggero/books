@extends('master')

@section('content')

    <h2>{{$title}}</h2>

    @if(session()->has('success'))
        <x-alert key="success" :message="session()->get('success')" />
    @elseif(session()->has('error'))
        <x-alert key="danger" :message="session()->get('error')" />
    @endif

    <form action="{{ route('user.store') }}" method="post">

        @csrf
        <div class="mb-3">
            <label for="fullName">@lang('messages.fullname')</label>
            <input type="text" class="form-control form-control-sm" name="fullName" placeholder="@lang('messages.fullname')">
            {{ $errors->first('fullName')}}
        </div>

        <div class="mb-3">
            <label for="email">@lang('messages.email')</label>
            <input type="email" class="form-control form-control-sm" name="email" placeholder="@lang('messages.email')">
            {{ $errors->first('email')}}
        </div>

        <div class="mb-3">
            <label for="password">@lang('messages.password')</label>
            <input type="password" class="form-control form-control-sm" name="password" placeholder="@lang('messages.password')">
            {{ $errors->first('password')}}
        </div>
        <button type="submit" class="btn btn-success btn-sm">@lang('messages.btn_create')</button>
        <a href="{{route('users')}}" class="btn btn-warning btn-sm">@lang('messages.btn_back')</a>
    </form>
@endsection
