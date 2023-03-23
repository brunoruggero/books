@extends('master')

@section('content')

<h2>{{$title}}</h2>
    <div class="mb-3 h-top">
        <a class="btn btn-success btn-sm" href="{{ route('book.create') }}">@lang('messages.create_book')</a>
        <form class="d-flex" method="get" action="{{ route('home') }}">
            <input class="form-control me-2" type="search" placeholder="@lang('messages.search_book')" name="s" aria-label="Search">
            <button class="btn btn-outline-success" type="submit">@lang('messages.btn_search')</button>
        </form>
    </div>
    @if(session()->has('deleted_success'))
        <x-alert key="success" :message="session()->get('deleted_success')" />
    @elseif(session()->has('deleted_error'))
        <x-alert key="danger" :message="session()->get('deleted_error')" />
    @endif

    <div class="container">
        <div class="container-table">
            <div class="table-responsive">
                <table class="table">
                    <thead>
                        <tr>
                            <th scope="col">#</th>
                            <th scope="col">@lang('messages.title')</th>
                            <th scope="col">@lang('messages.description')</th>
                            <th scope="col">@lang('messages.author')</th>
                            <th scope="col">@lang('messages.pages')</th>
                            <th scope="col">@lang('messages.create')</th>
                            <th scope="col">@lang('messages.actions')</th>
                        </tr>
                    </thead>
                    <tbody>
                    @forelse($books as $book)
                        <tr>
                            <th scope="row">{{$book->id}}</th>
                            <td>{{$book->title}}</td>
                            <td>{{substr($book->description, 0,30)}} ...</td>
                            <td>{{$book->author}}</td>
                            <td>{{$book->pages}}</td>
                            <td>{{date('d/m/Y',strtotime($book->created_at))}}</td>
                            <td>
                                <a class="btn btn-success btn-sm" href="{{ route('book.show', $book->id) }}">@lang('messages.btn_details')</a>
                                <a class="btn btn-primary btn-sm" href="{{ route('book.edit', $book->id) }}">@lang('messages.btn_edit')</a>
                                <form action="{{ route('book.destroy', $book->id) }}" method="post">
                                    @csrf()
                                    @method('delete')
                                    <button type="submit" class="btn btn-danger btn-sm">@lang('messages.btn_delete')</button>
                                </form>
                            </td>
                        </tr>
                    @empty
                        <tr>
                            <td colspan="7" style="text-align: center;">@lang('messages.search_result')</td>
                        </tr>
                    @endforelse
                    </tbody>
                </table>
            </div>
        </div>
    </div>

    <div class="pageLinks">
        {{$books->links()}}
    </div>
@endsection
