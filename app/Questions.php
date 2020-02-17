<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Questions extends Model
{
   protected $guarded = [];
   
   
   public function questionnare(){
       return $this->belongsTo(Questionnaire::class);
   }

   public function answers(){
       return $this->hasMany(Answers::class);
   }
    public function responses(){
      return $this->hasMany(SurveyResponse::class);
   }
}
