<?php

namespace App\Http\Controllers;

use App\Http\Requests\CreateProdouctRequest;
use App\Http\Requests\UpdateProdouctRequest;
use App\Http\Controllers\AppBaseController;
use App\Models\Prodouct;
use App\Models\Category;

use Illuminate\Http\Request;
use Flash;
use Response;

class ProdouctController extends AppBaseController
{
    /**
     * Display a listing of the Prodouct.
     *
     * @param Request $request
     *
     * @return Response
     */
    public function index(Request $request)
    {
        /** @var Prodouct $prodoucts */
        $prodoucts = Prodouct::paginate(10);

        return view('prodoucts.index')
            ->with('prodoucts', $prodoucts);
    }

    /**
     * Show the form for creating a new Prodouct.
     *
     * @return Response
     */
    public function create()
    {
        /** @var Category $categories */
        $categories = Category::get();
        return view('prodoucts.create')
        ->with('categories', $categories);

    }

    /**
     * Store a newly created Prodouct in storage.
     *
     * @param CreateProdouctRequest $request
     *
     * @return Response
     */
    public function store(CreateProdouctRequest $request)
    {
        $input = $request->all();

        /** @var Prodouct $prodouct */
        $prodouct = Prodouct::create($input);

        Flash::success('Prodouct saved successfully.');

        return redirect(route('prodoucts.index'));
    }

    /**
     * Display the specified Prodouct.
     *
     * @param int $id
     *
     * @return Response
     */
    public function show($id)
    {
        /** @var Prodouct $prodouct */
        $prodouct = Prodouct::find($id);

        if (empty($prodouct)) {
            Flash::error('Prodouct not found');

            return redirect(route('prodoucts.index'));
        }

        return view('prodoucts.show')->with('prodouct', $prodouct);
    }

    /**
     * Show the form for editing the specified Prodouct.
     *
     * @param int $id
     *
     * @return Response
     */
    public function edit($id)
    {
        /** @var Prodouct $prodouct */
        $prodouct = Prodouct::find($id);
        /** @var Category $categories */
        $categories = Category::get();

        if (empty($prodouct)) {
            Flash::error('Prodouct not found');

            return redirect(route('prodoucts.index'));
        }

        return view('prodoucts.edit')->with('prodouct', $prodouct)
        ->with('categories', $categories);
    }

    /**
     * Update the specified Prodouct in storage.
     *
     * @param int $id
     * @param UpdateProdouctRequest $request
     *
     * @return Response
     */
    public function update($id, UpdateProdouctRequest $request)
    {
        /** @var Prodouct $prodouct */
        $prodouct = Prodouct::find($id);

        if (empty($prodouct)) {
            Flash::error('Prodouct not found');

            return redirect(route('prodoucts.index'));
        }

        $prodouct->fill($request->all());
        $prodouct->save();

        Flash::success('Prodouct updated successfully.');

        return redirect(route('prodoucts.index'));
    }

    /**
     * Remove the specified Prodouct from storage.
     *
     * @param int $id
     *
     * @throws \Exception
     *
     * @return Response
     */
    public function destroy($id)
    {
        /** @var Prodouct $prodouct */
        $prodouct = Prodouct::find($id);

        if (empty($prodouct)) {
            Flash::error('Prodouct not found');

            return redirect(route('prodoucts.index'));
        }

        $prodouct->delete();

        Flash::success('Prodouct deleted successfully.');

        return redirect(route('prodoucts.index'));
    }
}
