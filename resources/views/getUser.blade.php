<h1>User name is {{$name}}</h1>
{{-- <h1>User name array is {{$userName[1]}}</h1> --}}

@if($name == "Amin")
<h1>This is Amin</h1>
@elseif($name == 'Hazrat Ali')
<h2>User name is Ali</h2>
@else
<h3>User name not found!</h3>
@endif

<div>
    @foreach ($userName as $name)
        <h1>{{$name}}</h1>
    @endforeach
</div>

<div>
    @for($i=0; $i<=10; $i++)
    <h2>{{$i}}</h2>
    @endfor
</div>