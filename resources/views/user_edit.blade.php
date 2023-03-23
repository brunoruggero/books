@extends('master')

@section('content')

    <h2>{{$title}}</h2>

    @if(session()->has('updated_success'))
        <x-alert key="success" :message="session()->get('updated_success')" />
    @elseif(session()->has('updated_error'))
        <x-alert key="danger" :message="session()->get('update_error')" />
    @endif

    <form action="{{ route('user.update', $user->id) }}" method="post">

        @csrf
        @method('put')
        <div class="mb-3">
            <label for="fullName">@lang('messages.fullname')</label>
            <input type="text" class="form-control form-control-sm" name="fullName" placeholder="@lang('messages.fullname')" value="{{ $user->fullName }}">
            {{ $errors->first('fullName')}}
        </div>

        <div class="mb-3">
            <label for="email">@lang('messages.email')</label>
            <input type="email" class="form-control form-control-sm" name="email" placeholder="@lang('messages.email')" value="{{ $user->email }}">
            {{ $errors->first('email')}}
        </div>

        <button type="submit" class="btn btn-success btn-sm">@lang('messages.btn_update')</button>
    </form>

    <hr />

    <h2>@lang('messages.title_pass')</h2>

    @if(session()->has('password_success'))
        <x-alert key="success" :message="session()->get('password_success')" />
    @elseif(session()->has('updated_error'))
        <x-alert key="danger" :message="session()->get('password_error')" />
    @endif

    <form action="{{ route('password.update', $user->id) }}" method="post">
        @csrf
        @method('put')
        <div class="mb-3">
            <label for="password">@lang('messages.password')</label>
            <input type="password" class="form-control form-control-sm" name="password" placeholder="@lang('messages.password')">
            {{ $errors->first('password')}}
        </div>
        <div class="mb-3">
            <label for="password">@lang('messages.password_confirmation')</label>
            <input type="password" class="form-control form-control-sm" name="password_confirmation" placeholder="@lang('messages.password_confirmation')">
            {{ $errors->first('password_confirmation')}}
        </div>
        <button type="submit" class="btn btn-success btn-sm">@lang('messages.btn_update')</button>
    </form>
@endsection
