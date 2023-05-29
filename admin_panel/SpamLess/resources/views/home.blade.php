@extends('layouts.app')

@section('content')
<div class="row">

    <div class="col-lg-3 col-md-4 col-12">
        <div class="card card-tiny-line-stats">
            <div class="card-body pb-50">
                <div class="text-center">
                    <div class="media-body my-auto">
                        <h2>Total Users</h2>
                        <h2>{{ \App\Models\User::count() }}</h2>
                    </div>
                </div>
            </div>
        </div>
    </div>
    

    <div class="col-lg-3 col-md-4 col-12">
        <div class="card card-tiny-line-stats">
            <div class="card-body pb-50">
                <div class="text-center">
                    <div class="media-body my-auto">
                        <h2>Total Categories</h2>
                        <h2>{{ \App\Models\Category::count() }}</h2>
                    </div>
                </div>
            </div>
        </div>
    </div>
    

    <div class="col-lg-3 col-md-4 col-12">
        <div class="card card-tiny-line-stats">
            <div class="card-body pb-50">
                <div class="text-center">
                    <div class="media-body my-auto">
                        <h2>Total Products</h2>
                        <h2>{{ \App\Models\Prodouct::count() }}</h2>
                    </div>
                </div>
            </div>
        </div>
    </div>
    

    <div class="col-lg-3 col-md-4 col-12">
        <div class="card card-tiny-line-stats">
            <div class="card-body pb-50">
                <div class="text-center">
                    <div class="media-body my-auto">
                        <h2>Truthful / Deceptive reviews </h2>
                        @php
                            $reviews = \App\Models\Review::get();
                            $latest_reviews = \App\Models\Review::latest()->take(5)->get();
                            // dd($reviews);
                            $truthful = $reviews->where('status', 1)->count();
                            $deceptive = $reviews->where('status', 2)->count();
                        @endphp
                        <h2>{{ $truthful }} /  {{ $deceptive }}</h2>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
</div>
<div class="row">
    <div class="col-md-6">
        <div id="chart"></div>

    </div>
    <div class="col-md-6">
        <div class="card">
            <div class="card-body" style="min-height: 400px">
                <h4 style="margin-bottom: 20px">Recent Reviews</h4>
                @foreach ($latest_reviews as $review)
                    <h5 style=" font-weight: 900">{{ $review->createdBy->name }}</h5>
                    <p style="margin-left: 10px; 
                    padding-left: 5px;
                    text-overflow: ellipsis;
                    overflow: hidden;
                    white-space: nowrap;
                    max-width: 400px;">{{ $review->text }}</p>
                @endforeach
            </div>
        </div>
    </div>
</div>
@endsection

@push('scripts')
    

<script>
            var options = {
          series: [{{ $truthful }} ,  {{ $deceptive }}],
          chart: {
          width: 500,
          type: 'pie',
        },
        labels: ['Spam Reviews', 'Truthfull Reviews '],
        responsive: [{
          breakpoint: 480,
          options: {
            chart: {
              width: 200
            },
            legend: {
              position: 'bottom'
            }
          }
        }]
        };

        var chart = new ApexCharts(document.querySelector("#chart"), options);
        chart.render();
</script>
@endpush
