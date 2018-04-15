@extends('layouts.app')

@section('content')
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-8">
                <div class="card">
                    <div class="card-header">Dashboard</div>

                    <div class="card-body">

                        <h1>{{$order->title}}</h1>

                        @foreach ( $orderSM->getPossibleTransitions() as $trans )
                            <form action="/orders/{{$order->id}}/apply_transition" method="post">
                                {{csrf_field()}}
                                <div class="form-group">
                                    <input class="form-con" type="hidden" name="transition" value="{{$trans}}">
                                    <button class="btn btn-primary" >{{ $trans }}</button>
                                </div>
                            </form>

                        @endforeach
                        <div>
                            Current State : {{implode(",", $orderSM->getState())}}
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection