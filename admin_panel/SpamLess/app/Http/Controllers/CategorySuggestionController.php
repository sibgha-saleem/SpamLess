<?php

namespace App\Http\Controllers;

use App\Http\Requests\CreateCategorySuggestionRequest;
use App\Http\Requests\UpdateCategorySuggestionRequest;
use App\Http\Controllers\AppBaseController;
use App\Models\CategorySuggestion;
use Illuminate\Http\Request;
use Flash;
use Response;

class CategorySuggestionController extends AppBaseController
{
    /**
     * Display a listing of the CategorySuggestion.
     *
     * @param Request $request
     *
     * @return Response
     */
    public function index(Request $request)
    {
        /** @var CategorySuggestion $categorySuggestions */
        $categorySuggestions = CategorySuggestion::paginate(10);

        return view('category_suggestions.index')
            ->with('categorySuggestions', $categorySuggestions);
    }

    /**
     * Show the form for creating a new CategorySuggestion.
     *
     * @return Response
     */
    public function create()
    {
        return view('category_suggestions.create');
    }

    /**
     * Store a newly created CategorySuggestion in storage.
     *
     * @param CreateCategorySuggestionRequest $request
     *
     * @return Response
     */
    public function store(CreateCategorySuggestionRequest $request)
    {
        $input = $request->all();

        /** @var CategorySuggestion $categorySuggestion */
        $categorySuggestion = CategorySuggestion::create($input);

        Flash::success('Category Suggestion saved successfully.');

        return redirect(route('categorySuggestions.index'));
    }

    /**
     * Display the specified CategorySuggestion.
     *
     * @param int $id
     *
     * @return Response
     */
    public function show($id)
    {
        /** @var CategorySuggestion $categorySuggestion */
        $categorySuggestion = CategorySuggestion::find($id);

        if (empty($categorySuggestion)) {
            Flash::error('Category Suggestion not found');

            return redirect(route('categorySuggestions.index'));
        }

        return view('category_suggestions.show')->with('categorySuggestion', $categorySuggestion);
    }

    /**
     * Show the form for editing the specified CategorySuggestion.
     *
     * @param int $id
     *
     * @return Response
     */
    public function edit($id)
    {
        /** @var CategorySuggestion $categorySuggestion */
        $categorySuggestion = CategorySuggestion::find($id);

        if (empty($categorySuggestion)) {
            Flash::error('Category Suggestion not found');

            return redirect(route('categorySuggestions.index'));
        }

        return view('category_suggestions.edit')->with('categorySuggestion', $categorySuggestion);
    }

    /**
     * Update the specified CategorySuggestion in storage.
     *
     * @param int $id
     * @param UpdateCategorySuggestionRequest $request
     *
     * @return Response
     */
    public function update($id, UpdateCategorySuggestionRequest $request)
    {
        /** @var CategorySuggestion $categorySuggestion */
        $categorySuggestion = CategorySuggestion::find($id);

        if (empty($categorySuggestion)) {
            Flash::error('Category Suggestion not found');

            return redirect(route('categorySuggestions.index'));
        }

        $categorySuggestion->fill($request->all());
        $categorySuggestion->save();

        Flash::success('Category Suggestion updated successfully.');

        return redirect(route('categorySuggestions.index'));
    }

    /**
     * Remove the specified CategorySuggestion from storage.
     *
     * @param int $id
     *
     * @throws \Exception
     *
     * @return Response
     */
    public function destroy($id)
    {
        /** @var CategorySuggestion $categorySuggestion */
        $categorySuggestion = CategorySuggestion::find($id);

        if (empty($categorySuggestion)) {
            Flash::error('Category Suggestion not found');

            return redirect(route('categorySuggestions.index'));
        }

        $categorySuggestion->delete();

        Flash::success('Category Suggestion deleted successfully.');

        return redirect(route('categorySuggestions.index'));
    }
}
