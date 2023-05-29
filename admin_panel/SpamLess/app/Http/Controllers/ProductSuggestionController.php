<?php

namespace App\Http\Controllers;

use App\Http\Requests\CreateProductSuggestionRequest;
use App\Http\Requests\UpdateProductSuggestionRequest;
use App\Http\Controllers\AppBaseController;
use App\Models\ProductSuggestion;
use Illuminate\Http\Request;
use Flash;
use Response;

class ProductSuggestionController extends AppBaseController
{
    /**
     * Display a listing of the ProductSuggestion.
     *
     * @param Request $request
     *
     * @return Response
     */
    public function index(Request $request)
    {
        /** @var ProductSuggestion $productSuggestions */
        $productSuggestions = ProductSuggestion::paginate(10);

        return view('product_suggestions.index')
            ->with('productSuggestions', $productSuggestions);
    }

    /**
     * Show the form for creating a new ProductSuggestion.
     *
     * @return Response
     */
    public function create()
    {
        return view('product_suggestions.create');
    }

    /**
     * Store a newly created ProductSuggestion in storage.
     *
     * @param CreateProductSuggestionRequest $request
     *
     * @return Response
     */
    public function store(CreateProductSuggestionRequest $request)
    {
        $input = $request->all();

        /** @var ProductSuggestion $productSuggestion */
        $productSuggestion = ProductSuggestion::create($input);

        Flash::success('Product Suggestion saved successfully.');

        return redirect(route('productSuggestions.index'));
    }

    /**
     * Display the specified ProductSuggestion.
     *
     * @param int $id
     *
     * @return Response
     */
    public function show($id)
    {
        /** @var ProductSuggestion $productSuggestion */
        $productSuggestion = ProductSuggestion::find($id);

        if (empty($productSuggestion)) {
            Flash::error('Product Suggestion not found');

            return redirect(route('productSuggestions.index'));
        }

        return view('product_suggestions.show')->with('productSuggestion', $productSuggestion);
    }

    /**
     * Show the form for editing the specified ProductSuggestion.
     *
     * @param int $id
     *
     * @return Response
     */
    public function edit($id)
    {
        /** @var ProductSuggestion $productSuggestion */
        $productSuggestion = ProductSuggestion::find($id);

        if (empty($productSuggestion)) {
            Flash::error('Product Suggestion not found');

            return redirect(route('productSuggestions.index'));
        }

        return view('product_suggestions.edit')->with('productSuggestion', $productSuggestion);
    }

    /**
     * Update the specified ProductSuggestion in storage.
     *
     * @param int $id
     * @param UpdateProductSuggestionRequest $request
     *
     * @return Response
     */
    public function update($id, UpdateProductSuggestionRequest $request)
    {
        /** @var ProductSuggestion $productSuggestion */
        $productSuggestion = ProductSuggestion::find($id);

        if (empty($productSuggestion)) {
            Flash::error('Product Suggestion not found');

            return redirect(route('productSuggestions.index'));
        }

        $productSuggestion->fill($request->all());
        $productSuggestion->save();

        Flash::success('Product Suggestion updated successfully.');

        return redirect(route('productSuggestions.index'));
    }

    /**
     * Remove the specified ProductSuggestion from storage.
     *
     * @param int $id
     *
     * @throws \Exception
     *
     * @return Response
     */
    public function destroy($id)
    {
        /** @var ProductSuggestion $productSuggestion */
        $productSuggestion = ProductSuggestion::find($id);

        if (empty($productSuggestion)) {
            Flash::error('Product Suggestion not found');

            return redirect(route('productSuggestions.index'));
        }

        $productSuggestion->delete();

        Flash::success('Product Suggestion deleted successfully.');

        return redirect(route('productSuggestions.index'));
    }
}
