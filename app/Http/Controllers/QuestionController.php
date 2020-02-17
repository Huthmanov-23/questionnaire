<?php

namespace App\Http\Controllers;
use App\Questionnaire;
use App\Questions;
use Illuminate\Http\Request;

class QuestionController extends Controller
{
   public function create(Questionnaire $questionnaire){
       return view('question.create', compact('questionnaire'));
   }

   public function store(Questionnaire $questionnaire){
    $data = request()->validate([
        'question.question'=>'required',
        'answers.*.answer'=>'required'
    ]);
    $question = $questionnaire->questions()->create($data['question']);
    $question->answers()->createMany($data['answers']);

    return redirect('/questionnaires/'.$questionnaire->id);

   }
   public function destroy(Questionnaire $questionnaire, Questions $questions){
        $questions->answers()->delete();
        $questions->delete();

        return redirect($questionnaire->path())->with('msg','Question Deleted');
   }
   public function edit(Questionnaire $questionnaire, Questions $questions){
        return view('question.edit',compact('questionnaire','questions'));
   }
   public function update(Questionnaire $questionnaire,Questions $questions){
        $data = request()->validate([
        'question.question'=>'required',
        'answers.answer'=>'required'
    ]);
        $questions->update($data['question']);
        $questions->answers()->update($data['answers']);
        return redirect($questionnaire->path())->with('msg','Question Updated');
   }
}
