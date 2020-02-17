@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
            <div class="card-header">{{$questionnaire->title}}</div>

                <div class="card-body">
                <a href="/questionnaires/{{$questionnaire->id}}/questions/create" class="btn btn-primary">Create Questions</a>
                <a href="/surveys/{{$questionnaire->id}}-{{Str::slug($questionnaire->title)}}" class="btn btn-primary">Take Survey</a>
                </div>
            </div>
            @if (session('msg'))
                <div class="alert alert-danger w-100 mt-2">
                    {{session('msg')}}
                </div>
            @endif
            {{-- {{dd($questionnaire)}} --}}
             @foreach ($questionnaire->questions as $question)
                <div class="card mt-3">
                    <div class="card-header">{{$question->question}}</div>
                        <div class="card-body">
                            <ul class="list-group">
                                @foreach ($question->answers as $answer)
                                    <li class="list-group-item d-flex justify-content-between">
                                        <div>{{$answer->answer}}</div>
                                        @if ($question->responses->count())
                                            <div>{{intval(($answer->responses->count() * 100) / $question->responses->count())}}%</div>
                                        @endif
                                    </li>
                                @endforeach
                            </ul>
                        </div>
                        <div class="card-footer">
                                @csrf
                               <a href="/questionnaires/{{$questionnaire->id}}/questions/{{$question->id}}/edit" class="btn btn-outline-primary btn-small mb-2">Edit Question</a>
                            <form action="/questionnaires/{{$questionnaire->id}}/questions/{{$question->id}}" method="POST">
                                @method('DELETE')
                                @csrf
                                <button class="btn btn-small btn-outline-danger">Delete Question</button>
                            </form>
                        </div>
                </div>
            @endforeach
        </div>
    </div>
</div>
@endsection