<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Answers extends Model
{
   protected $guarded = [];

    public function question(){
       return $this->belongsTo(Questions::class);
   }

   public function responses(){
      return $this->hasMany(SurveyResponse::class);
   }
   public function survey(){
      return $this->hasMany(Survey::class);
   }
}
