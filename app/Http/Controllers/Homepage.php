<?php

namespace App\Http\Controllers;

use Inertia\Inertia;
use Inertia\Response;
use Illuminate\Support\Facades\App;

class Homepage extends Controller
{

    public function index(): Response
    {
        return Inertia::render('Homepage', [
            'laravelVersion' => App::version(),
            'phpVersion' => phpversion(),
        ]);
    }

}
