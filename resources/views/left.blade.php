<ul class="app-menu">
	<li><a class="app-menu__item" href="{{ url('dashboard') }}" style="color: #4169e1"><i class="app-menu__icon fa fa-tachometer"></i>Dashboard</a></li>

    <li><a class="app-menu__item" href="{{ url('student/classes') }}" style="color: #4169e1"><i class="app-menu__icon fa fa-puzzle-piece"></i> All Classes</a></li>

    <li><a class="app-menu__item" href="{{ url('students') }}" style="color: #4169e1"><i class="app-menu__icon fa fa-user"></i> All Students</a></li>
    
    @if(Session::has('adminData'))
	    @php
	    	$data=Session::get('adminData');
	    @endphp
	    @if($data[0]->role=='admin')
		
			<li><a class="app-menu__item" href="{{ url('counsel/pending') }}" style="color: #4169e1"><i class="app-menu__icon fa fa-bell"></i> Pending Cases
			<span class="badge badge-secondary">  {{ App\Mcounsel::count() }}</span></a></li>
			<li><a class="app-menu__item" href="{{ url('counsel/complete') }}" style="color: #4169e1"><i class="app-menu__icon fa fa-check-circle"></i>Complete Cases</a></li>
			<li><a class="app-menu__item" href="{{ url('admission') }}" style="color: #4169e1"><i class="app-menu__icon fa fa-check-circle"></i>Admission</a></li>
			<li><a class="app-menu__item" href="{{ url('student/logs') }}" style="color: #4169e1"><i class="app-menu__icon fa fa-sign-in"></i> Visit Logs</a></li>
			<li><a class="app-menu__item" href="{{ url('student/events') }}" style="color: #4169e1"><i class="app-menu__icon fa fa-calendar"></i>Guidance Events</a></li>
			<li><a class="app-menu__item" href="{{ url('Exit') }}" style="color: #4169e1"><i class="app-menu__icon fa fa-wpforms"></i> Exit Interview</a></li>
	    @endif
    @endif
</ul>