@extends('layout')
@section('pageTitle','All Teachers')
@section('content')
<meta name="csrf-token" content="{{ csrf_token() }}">
<div class="app-title">
    <div>
        <h1>
            <i class="fa fa-th-list"></i> All Teachers 
            <a class="side btn btn-success" href="{{ url('teacher/create') }}">
                Add Teacher
            </a>
        </h1>
</div>
</div>
<div class="row">
    <div class="col-md-12">
        <div class="tile">
        @if(Session::has('success'))
            <p class="alert alert-success">{{ session('success') }}</p>
        @endif
        <div class="tile-body">
            <table class="table table-bordered" id="dataTable">
                <thead>
                    <tr class="bg-light">
                        <th>ID</th>
                        <th>Photo</th>
                        <th>Full Name</th>
                        <th>Mobile</th>
                        <th>Teacher ID</th>
                        <th>Action</th>
                    </tr>
                </thead>
                <tbody>
                    @if(count($teachers)>0)
                        @foreach($teachers as $s)
                        <tr>
                            <td>{{ $s->id }}</td>
                            <td>
                                <img width="100" src="{{ asset('imgs/teacher_imgs/'.$s->photo) }}" class="img-fluid rounded-circle" />
                                {{-- <p class="mt-2">
                                    <a href="{{ url('teacher/salary-card/'.$s->id) }}" class="btn btn-sm btn-info mt-1">Salary Detail</a><br />
                                </p> --}}
                            </td>
                            <td>
                                <strong>{{ $s->full_name }}</strong>
                                <table class="table table-bordered mt-2 table-condensed">
                                    <tr>
                                        <th>Father Name</th>
                                        <td>{{ $s->father_name }}</td>
                                    </tr>
                                    <tr>
                                        <th>Mother Name</th>
                                        <td>{{ $s->mother_name }}</td>
                                    </tr>
                                </table>
                            </td>
                            <td>{{ $s->mobile }}</td>
<td><a href="#" data-toggle="modal" data-target="#adhaarImg{{ $s->id }}" title="Click to view  Photo">{{ $s->adhaar_no }}</a></td>
                            <td>
                                <a target="_blank" href="{{ url('teacher/detail/'.$s->id) }}" class="btn btn-secondary btn-sm" title="Full Detail">View</a>
                                <a href="{{ url('teacher/update/'.$s->id) }}" class="btn btn-info btn-sm" title="Modify Detail">Edit</a>
                                <a href="{{ url('teacher/delete/'.$s->id) }}" onclick="return confirm('Are you sure to delete this data?')" class="btn btn-danger btn-sm" title="Delete Student">Delete</a>
{{-- Student Adhaar Image --}}
<div class="modal fade" id="adhaarImg{{ $s->id }}" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-scrollable" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">{{ $s->full_name }} Teacher Image</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <img class="img-fluid" src="{{ asset('imgs/teacher_adhaar_imgs/'.$s->adhaar_img) }}" />
            </div>
        </div>
    </div>
</div>

                            </td>
                        </tr>
                        @endforeach
                    @endif
                </tbody>
            </table>
        </div>
        </div>
    </div>
</div>
<!-- Page specific javascripts-->
<!-- Data table plugin-->
<script type="text/javascript" src="{{ asset('backend') }}/js/plugins/jquery.dataTables.min.js"></script>
{{-- Print Media --}}
<script type="text/javascript" src="{{ asset('backend') }}/js/dataTables.buttons.min.js"></script>
<script type="text/javascript" src="{{ asset('backend') }}/js/buttons.print.min.js"></script>

<script type="text/javascript" src="{{ asset('backend') }}/js/plugins/dataTables.bootstrap.min.js"></script>
<script type="text/javascript">
    $('#dataTable').DataTable({
        order:[[0,'desc']],
        pageLength:'20',
        paging:false,
        dom: 'Bfrtip',
            buttons: [
                {
                    'extend':'print',
                    className:'btn btn-sm btn-info',
                    text:'Print',
                    header:false,
                    message:'<div class="text-center mb-4"><h1>Antipolo Senior Highschool</h1><h4></h4></div>',
                    title:''
                }
            ]
    });
</script>
@endsection