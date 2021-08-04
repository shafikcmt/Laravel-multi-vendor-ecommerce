<div>
    <div class="container" style="padding:30px 0;">
        <div class="row">
            <div class="col-md-12">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        Manage Home Categories
                    </div>
                    <div class="panel-body">
                        <form action="" class="form-horizontal">
                            <div class="form-group">
                                <label for="" class="col-md-4 control-label">Choose Categories</label>
                                <div class="col-md-4">
                                    <select name="categories[]" multiple="multiple" id="" class="sel_categories form-control">
                                       @foreach($categories as $category)
                                       <option value="{{$category->id}}">{{$category->name}}</option>
                                       @endforeach 
                                    </select>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="" class="col-md-4 control-label">No Of Products</label>
                                <div class="col-md-4">
                                  <input type="text" class="form-control input-md">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="" class="col-md-4 control-label"></label>
                                <div class="col-md-4">
                                  <button type="submit" class="btn btn-primary">Save</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
@push('scripts')
<script>
    $(document).ready(function(){
        $('.sel_categories').select2();
    });
</script>
@endpush
