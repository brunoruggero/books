@extends('master')

@section('content')

    <h2>{{$title}}</h2>

    @if(session()->has('updated_success'))
        <x-alert key="success" :message="session()->get('updated_success')" />
    @elseif(session()->has('updated_error'))
        <x-alert key="danger" :message="session()->get('update_error')" />
    @endif

    <form action="{{ route('book.update', $book->id) }}" method="post">
        @csrf
        @method('put')
        <div class="mb-3">
            <label for="title">@lang('messages.title')</label>
            <input type="text" class="form-control form-control-sm" name="title" value="{{ $book->title }}">
            {{ $errors->first('title')}}
        </div>

        <div class="mb-3">
            <label for="description">@lang('messages.description')</label>
            <textarea name="description" class="form-control form-control-sm">{{ $book->description }}</textarea>
            {{ $errors->first('description')}}
        </div>

        <div class="mb-3">
            <label for="author">@lang('messages.author')</label>
            <input type="text" class="form-control form-control-sm" name="author" value="{{ $book->author }}">
            {{ $errors->first('author')}}
        </div>

        <div class="mb-3">
            <label for="pages">@lang('messages.pages')</label>
            <input type="number" class="form-control form-control-sm" name="pages" value="{{ $book->pages }}">
            {{ $errors->first('pages')}}
        </div>
        <button type="submit" class="btn btn-success btn-sm">@lang('messages.btn_update')</button>
        <a href="{{route('home')}}" class="btn btn-warning btn-sm">@lang('messages.btn_back')</a>
    </form>
@endsection
