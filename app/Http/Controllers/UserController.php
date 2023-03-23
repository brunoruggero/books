<?php

namespace App\Http\Controllers;

use App\Http\Requests\UserRequest;
use App\Models\User;
use Illuminate\Http\Request;

class UserController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {

        $users = User::listAndSearch();

        return view('list_user',[
            'title' => 'User',
            'users' => $users
        ]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('user_create',[
            'title' => 'Create User'
        ]);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(UserRequest $request)
    {
        $validated = $request->validated();

        $saved = (new User())->insert($validated);

        ($saved) ?
            $request->session()->flash('success', 'Cadastro realizado com sucesso.') :
            $request->session()->flash('error','Erro ao realizar o cadastro.');


        return back();
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit(User $user)
    {
        return view('user_edit',[
            'title' => 'Edit User',
            'user' => $user
        ]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, User $user)
    {
        $validated = $request->validate([
            'fullName' => 'required',
            'email' => 'required|unique:users,email,' . $user->id,
        ]);

        $updated = $user->update($validated);

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
    public function destroy(Request $request,User $user)
    {
        $deleted = $user->delete();

        ($deleted) ?
            $request->session()->flash('deleted_success', 'Cadastro deletado com sucesso.') :
            $request->session()->flash('deleted_error','Erro ao deletar o cadastro.');

        return back();
    }
}
