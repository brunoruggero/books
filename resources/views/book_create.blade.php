@extends('master')

@section('content')

    <h2>{{$title}}</h2>

    @if(session()->has('success'))
        <x-alert key="success" :message="session()->get('success')" />
    @elseif(session()->has('error'))
        <x-alert key="danger" :message="session()->get('error')" />
    @endif

    <form action="{{ route('book.store') }}" method="post">
        @csrf
        <div class="mb-3">
            <label for="title">@lang('messages.title')</label>
            <input type="text" class="form-control form-control-sm" name="title" placeholder="@lang('messages.title')">
            {{ $errors->first('title')}}
        </div>

        <div class="mb-3">
            <label for="description">@lang('messages.description')</label>
            <textarea name="description" class="form-control form-control-sm" placeholder="@lang('messages.description')"></textarea>
            {{ $errors->first('description')}}
        </div>

        <div class="mb-3">
            <label for="author">@lang('messages.author')</label>
            <input type="text" class="form-control form-control-sm" name="author" placeholder="@lang('messages.author')">
            {{ $errors->first('author')}}
        </div>

        <div class="mb-3">
            <label for="pages">@lang('messages.pages')</label>
            <input type="number" class="form-control form-control-sm" name="pages" placeholder="@lang('messages.pages')">
            {{ $errors->first('pages')}}
        </div>
        <button type="submit" class="btn btn-success btn-sm">@lang('messages.create')</button>
        <a href="{{route('home')}}" class="btn btn-warning btn-sm">@lang('messages.btn_back')</a>
    </form>
@endsection
