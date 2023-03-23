<?php

namespace App\Http\Controllers;

use App\Http\Requests\BookRequest;
use App\Models\Book;
use Illuminate\Http\Request;


class BookController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {

    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('book_create',[
            'title' => 'Create book',
            // 'users' => $users
        ]);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(BookRequest $request)
    {
        $validated = $request->validated();

        $saved = (new Book())->insert($validated);

        ($saved) ?
            $request->session()->flash('success', 'Cadastro realizado com sucesso.') :
            $request->session()->flash('error','Erro ao realizar o cadastro.');


        return back();
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show(Book $book)
    {
        return view('book_details',[
            'title' => 'Details Book',
            'book' => $book
        ]);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit(Book $book)
    {
        return view('book_edit',[
            'title' => 'Edit Book',
            'book' => $book
        ]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Book $book)
    {
        $validated = $request->validate([
            'title' => 'required',
            'description' => 'required',
            'author' => 'required',
            'pages' => 'required',
        ]);

        // dd($validated);

        $updated = $book->update($validated);

        ($updated) ?
            $request->session()->flash('updated_success', 'Cadastro atualizado com sucesso.') :
            $request->session()->flash('updated_error','Erro ao atualizar o cadastro.');

        return back();
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(Request $request,Book $book)
    {
        $deleted = $book->delete();

        ($deleted) ?
            $request->session()->flash('deleted_success', 'Cadastro deletado com sucesso.') :
            $request->session()->flash('deleted_error','Erro ao deletar o cadastro.');

        return back();
    }
}
