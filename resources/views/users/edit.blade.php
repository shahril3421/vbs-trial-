@extends('adminlte::page')

@section('title', 'Kemaskini Pengguna | Dashboard')

@section('content_header')
    <h1>Kemaskini Pengguna</h1>
@stop

@section('content')
   <div class="container-fluid">
    <div class="row">
        <div id="errorBox"></div>
        <div class="col-3">
            <form method="POST" action="{{route('users.update', $user->id)}}">
                @method('patch')
                @csrf
                <div class="card">
                    <div class="card-header">
                        <div class="card-title">
                            <h5>Kemaskini Pengguna</h5>
                        </div>
                    </div>
                    <div class="card-body">
                        <div class="form-group">
                            <label for="name" class="form-label">Nama <span class="text-danger">*</span></label>
                            <input type="text" class="form-control" name="name" placeholder="Enter Full Name" value="{{$user->name}}">
                            @if($errors->has('name'))
                                <span class="text-danger">{{$errors->first('name')}}</span>
                            @endif
                        </div>
                        <div class="form-group">
                            <label for="email" class="form-label">Emel <span class="text-danger">*</span></label>
                            <input type="email" class="form-control" name="email" placeholder="Enter Users Email" value="{{$user->email}}">
                            @if($errors->has('email'))
                                <span class="text-danger">{{$errors->first('email')}}</span>
                            @endif
                        </div>
                        <div class="form-group">
                            <label for="password" class="form-label">Kata Laluan</label>
                            <input type="password" class="form-control" name="password" placeholder="Enter Users Password" value="{{$user->password}}">
                            @if($errors->has('password'))
                                <span class="text-danger">{{$errors->first('password')}}</span>
                            @endif
                        </div>
                        <div class="form-group">
                            <label for="roles" class="form-label">Peranan</label>
                            <select class="form-control select2" multiple="multiple" id="select2" data-placeholder="Select Roles" name="roles[]">
                            @foreach ($roles as $role)
                                <option value="{{$role->id}}" {{$user->id ? (in_array($role->name, $userRole)? 'selected': ''):''}}>{{ucfirst($role->name)}}</option>
                            @endforeach
                            </select>
                        </div>
                    </div>
                    <div class="card-footer">
                        <a href="{{ route('users.index') }}" class="btn btn-secondary">Batal</a>
                        <button type="submit" class="btn btn-primary">Simpan</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
   </div>
@stop

@section('css')
    <link rel="stylesheet" href="/css/admin_custom.css">
@stop

@section('js')
<script>
    $(function (){
        $('#select2').select2();
    });
</script>
@stop
@section('plugins.Select2', true)