<?php

namespace App\Http\Controllers;

use App\Http\Requests\CreateReviewRequest;
use App\Http\Requests\UpdateReviewRequest;
use App\Http\Controllers\AppBaseController;
use App\Models\Review;
use Illuminate\Http\Request;
use App\Models\Prodouct;

use Flash;
use Response;

class ReviewController extends AppBaseController
{
    /**
     * Display a listing of the Review.
     *
     * @param Request $request
     *
     * @return Response
     */
    public function index(Request $request)
    {
        /** @var Review $reviews */
        $reviews = Review::paginate(10);
        $title = 'Reviews';

        return view('reviews.index')
            ->with('reviews', $reviews)
            ->with('title', $title);
    }

    public function spam(Request $request)
    {
        /** @var Review $reviews */
        $title = 'Spam Reviews';
        $reviews = Review::where('status', 2)->paginate(10);
        return view('reviews.index')
            ->with('reviews', $reviews)
            ->with('title', $title);
    }

    /**
     * Show the form for creating a new Review.
     *
     * @return Response
     */
    public function create()
    {
        /** @var Prodouct $prodoucts */
        $prodoucts = Prodouct::pluck('name', 'id');

        return view('reviews.create')->with('prodoucts', $prodoucts);
    }

    /**
     * Store a newly created Review in storage.
     *
     * @param CreateReviewRequest $request
     *
     * @return Response
     */
    public function store(CreateReviewRequest $request)
    {
        $input1 = $request->all();

        $input['product_id'] = (Integer) $input1['product'];
        $input['text'] = $input1['review'];
        $input['rating'] = (Integer) $input1['rating'];
        $input['status'] = (Integer) $input1['status'];

        //  dd($input, $input1);
        
        /** @var Review $review */
        
        $review = Review::create($input);



        Flash::success('Review saved successfully.');

        return redirect(route('reviews.index'));
    }

    /**
     * Display the specified Review.
     *
     * @param int $id
     *
     * @return Response
     */
    public function show($id)
    {
        /** @var Review $review */
        $review = Review::find($id);

        if (empty($review)) {
            Flash::error('Review not found');

            return redirect(route('reviews.index'));
        }

        return view('reviews.show')->with('review', $review);
    }

    /**
     * Show the form for editing the specified Review.
     *
     * @param int $id
     *
     * @return Response
     */
    public function edit($id)
    {
        /** @var Review $review */
        $review = Review::find($id);

        if (empty($review)) {
            Flash::error('Review not found');

            return redirect(route('reviews.index'));
        }

        return view('reviews.edit')->with('review', $review);
    }

    /**
     * Update the specified Review in storage.
     *
     * @param int $id
     * @param UpdateReviewRequest $request
     *
     * @return Response
     */
    public function update($id, UpdateReviewRequest $request)
    {
        /** @var Review $review */
        $review = Review::find($id);

        if (empty($review)) {
            Flash::error('Review not found');

            return redirect(route('reviews.index'));
        }

        $review->fill($request->all());
        $review->save();

        Flash::success('Review updated successfully.');

        return redirect(route('reviews.index'));
    }

    /**
     * Remove the specified Review from storage.
     *
     * @param int $id
     *
     * @throws \Exception
     *
     * @return Response
     */
    public function destroy($id)
    {
        /** @var Review $review */
        $review = Review::find($id);

        if (empty($review)) {
            Flash::error('Review not found');

            return redirect(route('reviews.index'));
        }

        $review->delete();

        Flash::success('Review deleted successfully.');

        return redirect(route('reviews.index'));
    }
}
