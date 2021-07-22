<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class TicketRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
            'fromOne'=>'required|numeric',
            'toOne'=>'required|numeric',
            'fromTwo'=>'required|numeric',
            'toTwo'=>'required|numeric',

        ];
    }
    public function messages()
    {
        return[
            'fromOne.required' => 'This field is required.',
            'fromOne.numeric' => 'The field must be a number.',

            'toOne.required' => 'This field is required.',
            'toOne.numeric' => 'The field must be a number.',
            'fromTwo.required' => 'This field is required.',
            'fromTwo.numeric' => 'The field must be a number.',
            'toTwo.required' => 'This field is required.',
            'toTwo.numeric' => 'The field must be a number.'
        ];
    }
}
