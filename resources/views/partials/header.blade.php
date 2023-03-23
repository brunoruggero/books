@auth
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <div class="container-fluid">
        <a class="navbar-brand" href="{{ route('home') }}">Books</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="{{ route('home') }}">@lang('messages.home')</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="{{ route('book.create') }}">@lang('messages.create_book')</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="{{ route('users') }}">@lang('messages.list_user')</a>
                </li>
                <li class="nav-item">
                    @auth
                    <p class="nav-link"> Hi, {{ auth()->user()->fullName }} | <a href="{{ route('login.destroy') }}">@lang('messages.logout')</a></p>
                    @endauth
                    @guest
                    <p class="nav-link">@lang('messages.welcome')</p>
                    @endguest
                </li>
            </ul>
            <div id="div-temp">
                <span class="material-symbols-outlined">partly_cloudy_day</span>
                <span id="temperature"></span> <span> - </span> <span id="city"></span>
            </div>
        </div>
    </div>
</nav>
@endauth
