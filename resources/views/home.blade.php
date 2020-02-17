@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">Dashboard</div>

                <div class="card-body">
                    @if (session('status'))
                        <div class="alert alert-success" role="alert">
                            {{ session('status') }}
                        </div>
                    @endif
                    <a href="/questionnaires/create" class="btn btn-dark">Create New Questionnaire</a>
                </div>
            </div>
            @if (session('message'))
                        <div class="alert alert-danger" role="alert">
                            {{ session('message') }}
                        </div>
            @endif
               <div class="card mt-4">
                <div class="card-header">My Questionnaires</div>
                <div class="card-body">
                    <ul class="list-group">
                        @foreach ($questionnaires as $questionnaire)
                            <li class="list-group-item">
                                <a href="{{$questionnaire->path()}}">{{$questionnaire->title}}</a>
                                <div class="mt-2">
                                    <small class="font-weight-bold">Share Url</small>
                                    <p>
                                        <a href="{{$questionnaire->publicPath()}}"> {{$questionnaire->publicPath()}}</a>
                                    </p>
                                </div>
                                 <form action="/questionnaires/{{$questionnaire->id}}" method="POST">
                                @method('DELETE')
                                @csrf
                                <button class="btn btn-small btn-outline-danger">Delete Questionnaire</button>
                            </form>
                            </li>
                        @endforeach
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
