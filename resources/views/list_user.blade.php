@extends('master')

@section('content')

    <h2>{{$title}}</h2>
    <div class="mb-3 h-top">
        <a class="btn btn-success btn-sm" href="{{ route('user.create') }}">@lang('messages.btn_createUser')</a>
        <form class="d-flex" method="get" action="{{ route('users') }}">
            <input class="form-control me-2" type="search" placeholder="@lang('messages.search_user')" name="s" aria-label="Search">
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
                            <th scope="col">@lang('messages.fullname')</th>
                            <th scope="col">@lang('messages.email')</th>
                            <th scope="col">@lang('messages.actions')</th>
                        </tr>
                    </thead>
                    <tbody>
                    @forelse($users as $user)
                        <tr>
                            <th scope="row">{{$user->id}}</th>
                            <td>{{$user->fullName}}</td>
                            <td>{{$user->email}}</td>
                            <td>
                                <a class="btn btn-primary btn-sm" href="{{ route('user.edit', $user->id) }}">@lang('messages.btn_edit')</a>
                                <form action="{{ route('user.destroy', $user->id) }}" method="post">
                                    @csrf()
                                    @method('delete')
                                    <button type="submit" class="btn btn-danger btn-sm">@lang('messages.btn_delete')</button>
                                </form>
                            </td>
                        </tr>
                    @empty
                        <tr>
                            <td colspan="4" style="text-align: center;">@lang('messages.search_result')</td>
                        </tr>
                    @endforelse
                    </tbody>
                </table>
            </div>
        </div>
    </div>

    {{$users->appends(['s' => request()->query('s')])->links()}}
@endsection
