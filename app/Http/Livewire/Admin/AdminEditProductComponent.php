<?php

namespace App\Http\Livewire\Admin;

use Livewire\Component;
use App\Models\Product;
use Illuminate\Support\Str;
use Carbon\Carbon;
use App\Models\Category;
use Livewire\WithFileUploads;


class AdminEditProductComponent extends Component
{
    use WithFileUploads;
    public $name;
    public $slug;
    public $sort_discription;
    public $discription;
    public $regular_price;
    public $sale_price;
    public $SKU;
    public $stock_status;
    public $featured;
    public $quantity;
    public $image;
    public $category_id;
    public $newimage;
    public $product_id;

    public function mount($product_slug)
    {
        $product = Product::where('slug',$product_slug)->first();
         $this->name = $product->name;
         $this->slug = $product->slug;
         $this->sort_discription = $product->sort_discription;
         $this->discription = $product->discription;
         $this->regular_price = $product->regular_price;
         $this->sale_price = $product->sale_price;
         $this->SKU = $product->SKU;
         $this->stock_status = $product->stock_status;
         $this->featured = $product->featured;
         $this->quantity = $product->quantity;
         $this->image = $product->image;
         $this->category_id = $product->category_id;
         $this->product_id = $product->id;
    }
    public function generateSlug()
    {
        $this->slug = Str::slug($this->name,'-');
    }
    public function updateProduct()
    {
        $product = Product::find($this->product_id);
        $product->name = $this->name;
        $product->slug = $this->slug;
        $product->sort_discription = $this->sort_discription;
        $product->discription = $this->discription;
        $product->regular_price = $this->regular_price;
        $product->sale_price = $this->sale_price;
        $product->SKU = $this->SKU;
        $product->stock_status = $this->stock_status;
        $product->featured = $this->featured;
        $product->quantity = $this->quantity;

        if($this->newimage)
        {
            $imageName = Carbon::now()->timestamp. '.' . $this->newimage->extension();
            $this->newimage->storeAs('products',$imageName);
            $product->image = $imageName;
        }
       
        $product->category_id = $this->category_id;
        $product->save();
        session()->flash('message','Product has been updated successfully!');
    }
    public function render()
    {
        $categories = Category::all();
        return view('livewire.admin.admin-edit-product-component',['categories'=>$categories])->layout('layouts.base');
    }
}
