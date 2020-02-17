@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">Edit Questions</div>

                <div class="card-body">
                <form action="/questionnaires/{{$questionnaire->id}}/questions/{{$questions->id}}" method="POST">
                    @method('PATCH')
                       @csrf
                        <div class="form-group">
                            <label for="question">Question</label>
                        <input name="question[question]" value="{{$questions->question}}" type="text" class="form-control" id="question" aria-describedby="questionHelp">
                            <small id="questionHelp" class="form-text text-muted">Ask simple and to the point questions for the best results.</small>
                            @error ('question.question')
                              <small class="text-danger"> {{$message}} </small> 
                            @enderror
                        </div>
                        <div class="form-group">
                            <fieldset>
                                <legend>Choices</legend>
                                <small id="choicesHelp" class="form-text text-muted">Give Choices that gives the most insight to your questions.</small>
                               @foreach ($questions->answers as $key=>$answer)
                                    <div class="form-group">
                                        <label for="answer1">Choice {{$key + 1}}</label>
                                        <input name="answers[][answer]" type="text" class="form-control" id="answer1"  value="{{$answer->answer}}" aria-describedby="choicesHelp" placeholder="Enter Choice 1">
                                        @error ('answers.*.answer')
                                        <small class="text-danger"> {{$message}} </small> 
                                        @enderror
                                    </div>
                               @endforeach
                            </fieldset>
                        </div>
                         <button type="submit" class="btn btn-primary mt-2">Update Question</button>
                   </form>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection