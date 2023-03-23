@extends('master')

@section('content')

    <h2>{{$title}}</h2>

    <div class="mt-3 mb-3">
        <label for="description"><b>@lang('messages.title'):</b> <span>{{ $book->title }}</span></label>
    </div>
    <div class="mb-3">
        <label for="description"><b>@lang('messages.description')</b></label>
        <blockquote class="blockquote">
            <p class="description">{{ $book->description }}</p>
        </blockquote>
    </div>
    <div class="mb-3">
        <label for="author"><b>@lang('messages.author'): </b> <span>{{ $book->author }}</span> </label>
    </div>
    <div class="mb-3">
        <label for="pages"><b>@lang('messages.pages'): </b> <span></span> {{ $book->pages }} </label>
    </div>
    <a href="{{route('home')}}" class="btn btn-warning btn-sm">@lang('messages.btn_back')</a>
@endsection
