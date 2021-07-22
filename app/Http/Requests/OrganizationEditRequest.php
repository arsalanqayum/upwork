<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class OrganizationEditRequest extends FormRequest
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
            'name' => 'required|max:255',
            'streetAddress' => 'required|max:255',
            'streetAddress2' => 'required|max:255',
            'City' => 'required|max:50',
            'State' => 'required|max:20',
            'Zip' => 'required|max:10',
        ];
    }
}
