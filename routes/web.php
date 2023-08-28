<?php

use App\Http\Controllers\ProfileController;
use App\Http\Livewire\Admin\AdminAddCategoryComponent;
use App\Http\Livewire\Admin\AdminAddHomeSliderComponent;
use App\Http\Livewire\Admin\AdminAddProductComponent;
use App\Http\Livewire\Admin\AdminCategoriesComponent;
use App\Http\Livewire\Admin\AdminDashboardComponent;
use App\Http\Livewire\Admin\AdminEditCategoryComponent;
use App\Http\Livewire\Admin\AdminEditHomeSliderComponent;
use App\Http\Livewire\Admin\AdminEditProductComponent;
use App\Http\Livewire\Admin\AdminHomeSliderComponent;
use App\Http\Livewire\Admin\AdminProductComponent;
use App\Http\Livewire\CartComponent;
use App\Http\Livewire\CategoryComponent;
use App\Http\Livewire\CheckoutComponent;
use App\Http\Livewire\DetailsComponent;
use App\Http\Livewire\HomeComponnent;
use App\Http\Livewire\SearchComponent;
use App\Http\Livewire\ShopComponent;
use App\Http\Livewire\User\UserDashboardComponent;
use App\Http\Livewire\WishlistComponent;
use Illuminate\Support\Facades\Route;




// Route::get('/', function () {
//     return view('welcome');
// });


//Home
Route::get('/',HomeComponnent::class)->name('home.index');

//Shop
Route::get('/shop',ShopComponent::class)->name('shop');

//Cart
Route::get('/cart',CartComponent::class)->name('shop.cart');

//Wishlist
Route::get('/wishlist',WishlistComponent::class)->name('shop.wishlist');

//Checkout
Route::get('/checkout',CheckoutComponent::class)->name('shop.checkout');

//Product
Route::get('/product/{slug}',DetailsComponent::class)->name('product.details');

//Category
Route::get('/product-category/{slug}',CategoryComponent::class)->name('product.category');

//Search
Route::get('/search',SearchComponent::class)->name('product.search');

//User
Route::middleware('auth')->group(function () {
    Route::get('/user/dashboard', UserDashboardComponent::class)->name('user.dashboard');
});

//Admin
Route::middleware('auth','authadmin')->group(function () {
    //Admin Dashboard
    Route::get('/admin/dashboard', AdminDashboardComponent::class)->name('admin.dashboard');

    //Admin Categories
    Route::get('/admin/categories',AdminCategoriesComponent::class)->name('admin.categories');
    Route::get('/admin/category/add',AdminAddCategoryComponent::class)->name('admin.category.add');
    Route::get('/admin/category/edit/{category_id}',AdminEditCategoryComponent::class)->name('admin.category.edit');

    //Admin Product
    Route::get('/admin/products',AdminProductComponent::class)->name('admin.products');
    Route::get('/admin/product/add',AdminAddProductComponent::class)->name('admin.product.add');
    Route::get('/admin/product/edit/{product_id}',AdminEditProductComponent::class)->name('admin.product.edit');

    //Admin Home
    Route::get('admin/slider',AdminHomeSliderComponent::class)->name('admin.home.slide');
    Route::get('admin/slider/add',AdminAddHomeSliderComponent::class)->name('admin.home.slide.add');
    Route::get('admin/slider/edit/{slide_id}',AdminEditHomeSliderComponent::class)->name('admin.home.slide.edit');

});

// Route::get('/dashboard', function () {
//     return view('dashboard');
// })->middleware(['auth', 'verified'])->name('dashboard');

// Route::middleware('auth')->group(function () {
//     Route::get('/profile', [ProfileController::class, 'edit'])->name('profile.edit');
//     Route::patch('/profile', [ProfileController::class, 'update'])->name('profile.update');
//     Route::delete('/profile', [ProfileController::class, 'destroy'])->name('profile.destroy');
// });

require __DIR__.'/auth.php';
