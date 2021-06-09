<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>

            <!-- ============================================================== -->
            <!-- Bread crumb and right sidebar toggle -->
            <!-- ============================================================== -->
            <div class="page-breadcrumb">
                <div class="row">
                    <div class="col-12 d-flex no-block align-items-center">
                        <h4 class="page-title">Settings</h4>
                        <div class="ms-auto text-end">
                            <nav aria-label="breadcrumb">
                                <ol class="breadcrumb">
                                    <li class="breadcrumb-item"><a href="#">Home</a></li>
                                    <li class="breadcrumb-item active" aria-current="page">Settings</li>
                                </ol>
                            </nav>
                        </div>
                    </div>
                </div>
            </div>
            <!-- ============================================================== -->
            <!-- End Bread crumb and right sidebar toggle -->
            <!-- ============================================================== -->
            
            <!-- ============================================================== -->
            <!-- Container fluid  -->
            <!-- ============================================================== -->
            <div class="container-fluid">
                <!-- ============================================================== -->
                <!-- Start Page Content -->
                <!-- ============================================================== -->
                <div class="row">
                    <div class="col-md-6">
                        <div class="card">
                            <form class="form-horizontal">
                                <div class="card-body">
                                    <h4 class="card-title">Update School Information</h4><br/>
                                    <div class="form-group row">
                                        <label for="schoolName"
                                            class="col-sm-3 text-end control-label col-form-label">School Name</label>
                                        <div class="col-sm-9">
                                            <input type="text" class="form-control" id="schoolName"
                                                placeholder="School Name Here">
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label for="currentSession" class="col-sm-3 text-end control-label col-form-label">Current Session</label>
                                        <div class="col-sm-9">
                                            <input type="text" class="form-control" id="currentSession"
                                                placeholder="ex:- 2020-2021">
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label for="schoolAcronym"
                                            class="col-sm-3 text-end control-label col-form-label">School Acronym</label>
                                        <div class="col-sm-9">
                                            <input type="text" class="form-control" id="schoolAcronym"
                                                placeholder="School Acronym Here">
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                    	<label for="phone1"
                                            class="col-sm-3 text-end control-label col-form-label">Phone 1 <br/><small class="text-muted">(999) 999-9999</small></label>
                                        <div class="col-sm-9">
                                            <input type="text" class="form-control phone-inputmask" id="phone1 phone-mask"
                                                placeholder="Enter Phone Number 1">
                                        </div>
                                	</div>
                                	<div class="form-group row">
                                    	<label for="phone2"
                                            class="col-sm-3 text-end control-label col-form-label">Phone 2 <br/><small class="text-muted">(999) 999-9999</small></label>
                                        <div class="col-sm-9">
                                            <input type="text" class="form-control phone-inputmask" id="phone2 phone-mask"
                                                placeholder="Enter Phone Number 2">
                                        </div>
                                	</div>
                                	<div class="form-group row">
                                    	<label for="email1"
                                            class="col-sm-3 text-end control-label col-form-label">School Email 1</label>
                                        <div class="col-sm-9">
                                            <input type="text" class="form-control" id="email1"
                                                placeholder="Enter School Email address">
                                        </div>
                                	</div>
                                	<div class="form-group row">
                                    	<label for="email2"
                                            class="col-sm-3 text-end control-label col-form-label">Alternate Email</label>
                                        <div class="col-sm-9">
                                            <input type="text" class="form-control" id="email2"
                                                placeholder="Enter Alternate Email address">
                                        </div>
                                	</div>
                                	<div class="form-group row">
		                                <label for="nxtTermBegin"
                                            class="col-sm-3 text-end control-label col-form-label">Next Term Starts</label>	
		                                <div class="input-group  col-sm-9" style="width:75%;height: calc(1.5em + 0.75rem + 2px) !IMPORTANT;">
		                                    <input type="text" class="form-control col-sm-9" id="nxtTermBegin datepicker-autoclose"
		                                        placeholder="mm/dd/yyyy">
		                                    <div class="input-group-append">
		                                        <span class="input-group-text h-100"><i class="fa fa-calendar"></i></span>
		                                    </div>
		                                </div>
	                                </div>
	                                <div class="form-group row">
		                                <label for="termEnd"
                                            class="col-sm-3 text-end control-label col-form-label">This Term Ends</label>	
		                                <div class="input-group  col-sm-9" style="width:75%;height: calc(1.5em + 0.75rem + 2px) !IMPORTANT;">
		                                    <input type="text" class="form-control col-sm-9" id="termEnd datepicker-autoclose"
		                                        placeholder="mm/dd/yyyy">
		                                    <div class="input-group-append">
		                                        <span class="input-group-text h-100"><i class="fa fa-calendar"></i></span>
		                                    </div>
		                                </div>
	                                </div>
                                </div>
                                <div class="border-top">
                                    <div class="card-body">
                                        <button type="button" class="btn btn-primary">Submit</button>
                                    </div>
                                </div>
                            </form>
                        </div>

                    </div>
                    <!----- DELETE IT(This comment only) : Right panel Starts here -------------->
                    <div class="col-md-6">
                        <div class="card">
                            <div class="card-body">
                                <h5 class="card-title mb-0">Next Term Fees</h5><br/>
                                <div class="form-group row">
                                	<label for="fees"
                                        class="col-sm-3 text-end control-label col-form-label">Nursery</label>
                                    <div class="col-sm-9">
                                        <input type="text" class="form-control" id="fees"
                                            placeholder="Enter fees here">
                                    </div>
                                </div>
                                <div class="form-group row">
                                	<label for="fees"
                                        class="col-sm-3 text-end control-label col-form-label">Lower KG</label>
                                    <div class="col-sm-9">
                                        <input type="text" class="form-control" id="fees"
                                            placeholder="Enter fees here">
                                    </div>
                                </div>
                                <div class="form-group row">
                                	<label for="fees"
                                        class="col-sm-3 text-end control-label col-form-label">Upper KG</label>
                                    <div class="col-sm-9">
                                        <input type="text" class="form-control" id="fees"
                                            placeholder="Enter fees here">
                                    </div>
                                </div>
                                <div class="form-group row">
                                	<label for="fees"
                                        class="col-sm-3 text-end control-label col-form-label">1st to Primary</label>
                                    <div class="col-sm-9">
                                        <input type="text" class="form-control" id="fees"
                                            placeholder="Enter fees here">
                                    </div>
                                </div>
                                <div class="form-group row">
                                	<label for="fees"
                                        class="col-sm-3 text-end control-label col-form-label">VI to VIII</label>
                                    <div class="col-sm-9">
                                        <input type="text" class="form-control" id="fees"
                                            placeholder="Enter fees here">
                                    </div>
                                </div>
                                <div class="form-group row">
                                	<label for="fees"
                                        class="col-sm-3 text-end control-label col-form-label">Secondary<br/>(IX & X)</label>
                                    <div class="col-sm-9">
                                        <input type="text" class="form-control" id="fees"
                                            placeholder="Enter fees here">
                                    </div>
                                </div>	
                                <div class="form-group row">
                                	<label for="fees"
                                        class="col-sm-3 text-end control-label col-form-label">Senior Secondary<br/>(XI & XII)</label>
                                    <div class="col-sm-9">
                                        <input type="text" class="form-control" id="fees"
                                            placeholder="Enter fees here">
                                    </div>
                                </div>
                            </div>
                        <div class="border-top">
                        <div class="card-body">
                            <button type="button" class="btn btn-primary">Submit</button>
                        </div>
                        </div>
                        </div>

                        
                    </div>
                </div>
                <!-- editor -->
<!--                 <div class="row">
                    <div class="col-12">
                        <div class="card">
                            <div class="card-body">
                                <h4 class="card-title">Quill Editor</h4>
                                Create the editor container
                                <div id="editor" style="height: 300px;">
                                    <p>Hello World!</p>
                                    <p>Some initial <strong>bold</strong> text</p>
                                    <p>
                                        <br>
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div> -->
                <!-- ============================================================== -->
                <!-- End PAge Content -->
                <!-- ============================================================== -->
               

    <script>
        //***********************************//
        // For select 2
        //***********************************//
        $(".select2").select2();

        /*colorpicker*/
        $('.demo').each(function () {
            //
            // Dear reader, it's actually very easy to initialize MiniColors. For example:
            //
            //  $(selector).minicolors();
            //
            // The way I've done it below is just for the demo, so don't get confused
            // by it. Also, data- attributes aren't supported at this time...they're
            // only used for this demo.
            //
            $(this).minicolors({
                control: $(this).attr('data-control') || 'hue',
                position: $(this).attr('data-position') || 'bottom left',

                change: function (value, opacity) {
                    if (!value) return;
                    if (opacity) value += ', ' + opacity;
                    if (typeof console === 'object') {
                        console.log(value);
                    }
                },
                theme: 'bootstrap'
            });

        });
        /*datwpicker*/
        jQuery('.mydatepicker').datepicker();
        jQuery('#datepicker-autoclose').datepicker({
            autoclose: true,
            todayHighlight: true
        });
        var quill = new Quill('#editor', {
            theme: 'snow'
        });

    </script>
            
            
    