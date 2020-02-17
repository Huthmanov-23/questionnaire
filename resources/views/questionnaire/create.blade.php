@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">Questionnaire Dashboard</div>

                <div class="card-body">
                   <form action="/questionnaires" method="POST">
                       @csrf
                        <div class="form-group">
                            <label for="title">Title</label>
                            <input name="title" type="text" class="form-control" id="title" aria-describedby="titleHelp" placeholder="Enter Title">
                            <small id="titleHelp" class="form-text text-muted">Give your Questionnaire a title that attracts attention.</small>
                            <p style="color:red"> @error ('title') {{$message}} @enderror</p>
                        </div>
                        <div class="form-group">
                            <label for="purpose">Purpose</label>
                            <input name="purpose" type="text" class="form-control" id="purpose" aria-describedby="purposeHelp" placeholder="Enter Purpose">
                            <small id="purposeHelp" class="form-text text-muted">Giving a purpose will increase responses.</small>
                            <p style="color:red"> @error ('purpose') {{$message}} @enderror</p>
                        </div>
                         <button type="submit" class="btn btn-primary mt-2">Create Questionnaire</button>
                   </form>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection