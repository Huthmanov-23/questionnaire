@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
        <h1>{{$questionnaire->title}}</h1>
        <form action="/surveys/{{$questionnaire->id}}-{{Str::slug($questionnaire->title)}}" method="POST">
            @csrf
            @foreach ($questionnaire->questions as $key => $question)
                <div class="card mt-3">
                <div class="card-header"><strong>{{$key + 1}}</strong> {{$question->question}}</div>
                        <div class="card-body">
                            @error('responses.'.$key.'.answers_id')
                               <small class="text-danger"> {{$message}}</small>
                            @enderror
                            <ul class="list-group">
                                @foreach ($question->answers as $answer)
                                    <label for="answer{{$answer->id}}">
                                    <li class="list-group-item">
                                        <input type="radio" name="responses[{{$key}}][answers_id]" 
                                        {{old('responses.'.$key.'.answer_id') ==$answer->id?'checked':''}}
                                        id="answer{{$answer->id}}" class="mr-2" value="{{$answer->id}}"> {{$answer->answer}}
                                        <input type="hidden" name="responses[{{$key}}][questions_id]" value="{{$question->id}}">
                                    </li>
                                    </label>
                                @endforeach
                            </ul>
                        </div>
                </div>
            @endforeach
            <div class="card mt-3">
                <div class="card-header">Your Information</div>
                <div class="card-body">
                    <label for="name">Name</label>
                    <input type="text" name="survey[name]" id="name" value="{{old('survey.name')}}" class="form-control mb-3" placeholder="Enter Name">
                    <label for="email">Email</label>
                    <input type="email" name="survey[email]" id="email" value="{{old('survey.email')}}"  class="form-control" placeholder="Enter Name">
                </div>
            </div>
            <button class="btn btn-primary w-100 mt-3" type="submit">Submit Survey</button>
        </form>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection