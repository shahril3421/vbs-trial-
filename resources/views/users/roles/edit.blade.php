@extends('adminlte::page')

@section('title', 'Kemaskini Peranan | Dashboard')

@section('content_header')
    <h1>Kemaskini Peranan</h1>
@stop

@section('content')
   <div class="container-fluid">
        <div id="errorBox"></div>
        <form action="{{route('users.roles.update', $role->id)}}" method="POST">
            @method('patch')
            @csrf
            <div class="card">                
                <div class="card-body">
                    <div class="form-group">
                        <label for="name" class="form-label"> Nama <span class="text-danger"> *</span></label>
                        <input type="text" name="name" class="form-control" placeholder="For e.g. Manager" value={{ucfirst($role->name)}}>
                        @if($errors->has('name'))
                            <span class="text-danger">{{$errors->first('name')}}</span>
                        @endif
                    </div>
                    <label for="name" class="form-label"> Kebenaran yang Diberikan <span class="text-danger"> *</span></label>
                    <!--DataTable-->
                    <div class="table-responsive">
                        <table id="tblData" class="table table-bordered table-striped dataTable dtr-inline">
                            <thead>
                                <tr>
                                    <th>
                                        <input type="checkbox" id="all_permission" name="all_permission">
                                    </th>
                                    <th>Nama</th>
                                    <th>Guard</th>
                                </tr>
                            </thead>
                        </table>
                    </div>
                </div>
                <div class="card-footer">
                    <a href="{{ route('users.roles.index') }}" class="btn btn-secondary">Batal</a>
                    <button type="submit" class="btn btn-primary">Simpan Peranan</button>
                </div>
            </div>
        </form>
   </div>
@stop

@section('css')
    <link rel="stylesheet" href="/css/admin_custom.css">
@stop

@section('js')
<script>
    $.ajaxSetup({
        headers:{
            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        }
    })
    $(document).ready(function(){
        //check uncheck all function 
        $('[name="all_permission"]').on('click', function(){
            if($(this).is(":checked"))
            {
                $.each($('.permission'), function(){
                    if($(this).val()!="dashboard")
                    {
                        $(this).prop('checked', true); 
                    }
                });
            }else{
                $.each($('.permission'), function(){
                    if($(this).val()!="dashboard")
                    {
                        $(this).prop('checked', false); 
                    }
                });
            }
        });
        var table = $('#tblData').DataTable({
            reponsive:true, processing:true, serverSide:true, autoWidth:false, bPaginate:false, bFilter:false,
            ajax:"{{route('users.permissions.index', ['role_id'=>$role->id])}}", 
            columns:[
                {data:'chkBox', name:'chkBox', orderable:false, searchable:false, className:'text-center'},
                {data:'name', name:'name'},
                {data:'guard_name', name:'guard_name'},
            ], 
            order:[[0, "desc"]]
        });
    });
    
   
</script>
@stop

@section('plugins.Datatables', true)