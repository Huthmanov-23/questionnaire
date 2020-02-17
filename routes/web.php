<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/
// use Illuminate\Support\Facades\Auth;


Route::get('/', function () {
    return view('welcome');
});

Auth::routes();
// Auth::logout();

Route::get('/home', 'HomeController@index')->name('home');
Route::get('/questionnaires/create', 'QuestionnaireController@create');
Route::post('/questionnaires', 'QuestionnaireController@store');
Route::get('/questionnaires/{questionnaire}', 'QuestionnaireController@show');
Route::delete('/questionnaires/{questionnaire}', 'QuestionnaireController@destroy');

Route::get('/questionnaires/{questionnaire}/questions/create', 'QuestionController@create');
Route::post('/questionnaires/{questionnaire}/questions', 'QuestionController@store');
Route::get('/questionnaires/{questionnaire}/questions/{questions}/edit', 'QuestionController@edit');
Route::patch('/questionnaires/{questionnaire}/questions/{questions}', 'QuestionController@update');
Route::delete('/questionnaires/{questionnaire}/questions/{questions}', 'QuestionController@destroy');

Route::get('/surveys/{questionnaire}-{slug}', 'SurveyController@show');
Route::post('/surveys/{questionnaire}-{slug}', 'SurveyController@store');