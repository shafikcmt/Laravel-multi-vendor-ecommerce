<div>
   <div class="container" style="padding:30px 0;">
       <div class="row">
           <div class="col-md-12">
               <div class="panel panel-default">
                   <div class="panel-heading">
                        <div class="row">
                            <div class="col-md-6">
                                All Sliders
                            </div>
                            <div class="col-md-6">
                                <a href="{{route('admin.addhomeslider')}}" class="btn btn-success pull-right">Add new Slide</a>
                            </div>
                        </div>    
                   </div>
                   <div class="panel-body">
                        <table class="table table-striped">
                            <thead>
                                <tr>
                                    <th>Id</th>
                                    <th>Image</th>
                                    <th>Title</th>
                                    <th>Subtitle</th>
                                    <th>Price</th>
                                    <th>Link</th>
                                    <th>Status</th>
                                    <th>Date</th>
                                    <th>Action</th>
                                </tr>
                            </thead>
                        </table>
                        <tbody>
                            @foreach($sliders as $slider)
                            <tr>
                                <td>{{$slider->id}}</td>
                                <td><img  src="{{asset('assets/images/sliders')}}/{{$slider->image}}" alt="" width="120"></td>
                                <td>{{$slider->title}}</td>
                                <td>{{$slider->subtitle}}</td>
                                <td>{{$slider->price}}</td>
                                <td>{{$slider->link}}</td>
                                <td>{{$slider->status == 1 ? 'Active':'Inactive'}}</td>
                                <td>{{$slider->created_at}}</td>
                            </tr>
                            @endforeach
                        </tbody>
                   </div>
               </div>
           </div>
       </div>
   </div>
</div>
