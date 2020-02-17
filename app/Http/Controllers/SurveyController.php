<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Questionnaire;


class SurveyController extends Controller
{
    public function show(Questionnaire $questionnaire){
         $questionnaire->load('questions.answers');
        return view('survey.show', compact('questionnaire'));
    }
    public function store(Questionnaire $questionnaire){
        $data = request()->validate([
            'responses.*.answers_id'=>'required',
            'responses.*.questions_id'=>'required',
            'survey.email'=>'required|email',
            'survey.name'=>'required'
        ]);
        $survey =$questionnaire->surveys()->create($data['survey']);
        $survey->responses()->createMany($data['responses']);
        return redirect('/questionnaires/'.$questionnaire->id)->with('msg','Thanks for taking the survey');
    }
}
