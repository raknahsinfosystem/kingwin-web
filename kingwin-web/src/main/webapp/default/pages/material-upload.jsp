<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Material Upload</title>
<!-- tell the browser to be responsive -->
<meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
<link rel="stylesheet" href="../../plugins/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="../../plugins/font-awesome/css/font-awesome.css">
<!-- <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css"> -->
<link rel="stylesheet" href="../../plugins/adminLTE/css/AdminLTE.css">
<link rel="stylesheet" href="../../plugins/adminLTE/css/skins/_all-skins.css">
<link rel="stylesheet" href="../../plugins/select2/select2.css">
<style type="text/css">
.pwd-setting{
	/* width: 56%; 
    left: 23%;*/
}
.content{
	float : none;
	background-color: #00a65a;
}
/* .btn-primary-green{

} */
</style>
</head>
<body class="hold-transition skin-blue sidebar-mini">
	<div class="wrapper">
		<section class="content col-sm-8 col-md-6 col-lg-6 col-xs-12">

      <!-- SELECT2 EXAMPLE -->
      <div class="box box-default pwd-setting">
        <div class="box-header with-border">
          <h3 class="box-title">Password Settings</h3>

          <div class="box-tools pull-right">
            <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i></button>
            <button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-remove"></i></button>
          </div>
        </div>
        <!-- /.box-header -->
        <div class="box-body">
          <div class="row">
          <div class="col-md-2 col-lg-2"></div>
            <div class="col-md-12 col-sm-12 col-lg-12 col-xs-12">
            <div>
              <div class="form-group">
                <label>SYLLABUS</label>
                <select class="form-control select2" style="width: 100%;">
                  <option value="" selected="selected">select syllabus</option>
                  <option>CMC/NEET</option>
                  <option>NEET</option>
                </select>
              </div>
              <div class="form-group">
                <label>BRANCH</label>
                <select class="form-control select2" style="width: 100%;">
                  <option value="" selected="selected">select branch</option>
                  <option>Ranipet</option>
                  <option>Gudiyatham</option>
                  <option>Vellore</option>
                  <option>TVL</option>
                  <option>Tirupathur</option>
                </select>
              </div>
              <div class="form-group">
                 <label for="material_id">MATERIAL ID</label>
                 <input type="text" class="form-control" id="material_id" placeholder="material id">
               </div>
               <div class="form-group">
                 <label for="material_name">MATERIAL NAME</label>
                 <input type="text" class="form-control" id="material_name" placeholder="material name">
               </div>
               <div class="form-group">
                 <label for="material_date">Date</label>
                 <input type="date" class="form-control" id="material_date" placeholder="Select Date">
               </div>
               <div class="form-group">
                 <label for="material_fileUpload">Upload File</label>
                 <button class="btn btn-primary">
                 	<input type="file" class="form-control" id="material_fileUpload" placeholder="Select File">
                 	Upload File
                 </button>
               </div>
               <div class="form-group pull-right col-lg-8 col-md-8 col-xs-9 col-sm-8">
               	 <button class="btn btn-primary"><i class="fa fa-fw fa-thumbs-o-up"></i>Submit</button>
               </div>
               
              <!-- /.form-group -->
              <!-- /.form-group -->
              </div>
            </div>
            <!-- /.col -->
            <!-- <div class="col-md-6">
              <div class="form-group">
                <label>Multiple</label>
                <select class="form-control select2" multiple="multiple" data-placeholder="Select a State" style="width: 100%;">
                  <option>Alabama</option>
                  <option>Alaska</option>
                  <option>California</option>
                  <option>Delaware</option>
                  <option>Tennessee</option>
                  <option>Texas</option>
                  <option>Washington</option>
                </select>
              </div>
              /.form-group
              <div class="form-group">
                <label>Disabled Result</label>
                <select class="form-control select2" style="width: 100%;">
                  <option selected="selected">Alabama</option>
                  <option>Alaska</option>
                  <option disabled="disabled">California (disabled)</option>
                  <option>Delaware</option>
                  <option>Tennessee</option>
                  <option>Texas</option>
                  <option>Washington</option>
                </select>
              </div>
              /.form-group
            </div> -->
            <!-- /.col -->
          </div>
          <!-- /.row -->
        </div>
        <!-- /.box-body -->
        <!-- <div class="box-footer">
          Visit <a href="https://select2.github.io/">Select2 documentation</a> for more examples and information about
          the plugin.
        </div> -->
      </div>
      </section>
	</div>

<script src="../../plugins/jquery/jquery.min.js"></script>
<script src="../../plugins/jquery-ui/jquery-ui.js"></script>
<script src="../../plugins/bootstrap/js/bootstrap.js"></script>
<script src="../../plugins/select2/select2.full.js"></script>
<script src="../../plugins/adminLTE/js/app.js"></script>
<script>
$(document).ready(function(){
	$("select").select2();	
});
</script>
</body>
</html>