<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class EventRequest extends FormRequest
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
            'event_title' => 'required|max:255',
            'event_description' =>  'max:1000',
            'start_date' =>  'required',
            'end_date' =>  'required',
            'address_first' =>  'required',
            'city' =>  'required',
            'state' =>  'required',
            'zip' =>  'required|',
        ];
    }
}
