﻿<%@ Page Title="" Language="C#" MasterPageFile="~/ENLMaster.master" AutoEventWireup="true" CodeFile="vehicle-gallery.aspx.cs" Inherits="vehicle_gallery" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="page-intro">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <ol class="breadcrumb" style="padding-left: 15%; padding-top:0; padding-bottom:0;">
                    <li>
                    <h3 class="page-title">VEHICLE GALLERY </h3>
                   </li>
                    
                </ol>
            </div>
        </div>
    </div>
</div>

    <section class="main-container" style="background-color: #000;">
   
      <script type="text/javascript" src="plugins/jquery.min.js"></script>
    <!-- use jssor.slider.mini.js (40KB) instead for release -->
    <!-- jssor.slider.mini.js = (jssor.js + jssor.slider.js) -->
    <script type="text/javascript" src="js/jssor.js"></script>
    <script type="text/javascript" src="js/jssor.slider.js"></script>
    <script>
        jQuery(document).ready(function ($) {
            var _SlideshowTransitions = [
            //Zoom- in
            { $Duration: 1200, $Zoom: 1, $Easing: { $Zoom: $JssorEasing$.$EaseInCubic, $Opacity: $JssorEasing$.$EaseOutQuad }, $Opacity: 2 },
            //Zoom+ out
            { $Duration: 1000, $Zoom: 11, $SlideOut: true, $Easing: { $Zoom: $JssorEasing$.$EaseInExpo, $Opacity: $JssorEasing$.$EaseLinear }, $Opacity: 2 },
            //Rotate Zoom- in
            { $Duration: 1200, $Zoom: 1, $Rotate: 1, $During: { $Zoom: [0.2, 0.8], $Rotate: [0.2, 0.8] }, $Easing: { $Zoom: $JssorEasing$.$EaseSwing, $Opacity: $JssorEasing$.$EaseLinear, $Rotate: $JssorEasing$.$EaseSwing }, $Opacity: 2, $Round: { $Rotate: 0.5 } },
            //Rotate Zoom+ out
            { $Duration: 1000, $Zoom: 11, $Rotate: 1, $SlideOut: true, $Easing: { $Zoom: $JssorEasing$.$EaseInExpo, $Opacity: $JssorEasing$.$EaseLinear, $Rotate: $JssorEasing$.$EaseInExpo }, $Opacity: 2, $Round: { $Rotate: 0.8 } },

            //Zoom HDouble- in
            { $Duration: 1200, x: 0.5, $Cols: 2, $Zoom: 1, $Assembly: 2049, $ChessMode: { $Column: 15 }, $Easing: { $Left: $JssorEasing$.$EaseInCubic, $Zoom: $JssorEasing$.$EaseInCubic, $Opacity: $JssorEasing$.$EaseLinear }, $Opacity: 2 },
            //Zoom HDouble+ out
            { $Duration: 1200, x: 4, $Cols: 2, $Zoom: 11, $SlideOut: true, $Assembly: 2049, $ChessMode: { $Column: 15 }, $Easing: { $Left: $JssorEasing$.$EaseInExpo, $Zoom: $JssorEasing$.$EaseInExpo, $Opacity: $JssorEasing$.$EaseLinear }, $Opacity: 2 },

            //Rotate Zoom- in L
            { $Duration: 1200, x: 0.6, $Zoom: 1, $Rotate: 1, $During: { $Left: [0.2, 0.8], $Zoom: [0.2, 0.8], $Rotate: [0.2, 0.8] }, $Easing: { $Left: $JssorEasing$.$EaseSwing, $Zoom: $JssorEasing$.$EaseSwing, $Opacity: $JssorEasing$.$EaseLinear, $Rotate: $JssorEasing$.$EaseSwing }, $Opacity: 2, $Round: { $Rotate: 0.5 } },
            //Rotate Zoom+ out R
            { $Duration: 1000, x: -4, $Zoom: 11, $Rotate: 1, $SlideOut: true, $Easing: { $Left: $JssorEasing$.$EaseInExpo, $Zoom: $JssorEasing$.$EaseInExpo, $Opacity: $JssorEasing$.$EaseLinear, $Rotate: $JssorEasing$.$EaseInExpo }, $Opacity: 2, $Round: { $Rotate: 0.8 } },
            //Rotate Zoom- in R
            { $Duration: 1200, x: -0.6, $Zoom: 1, $Rotate: 1, $During: { $Left: [0.2, 0.8], $Zoom: [0.2, 0.8], $Rotate: [0.2, 0.8] }, $Easing: { $Left: $JssorEasing$.$EaseSwing, $Zoom: $JssorEasing$.$EaseSwing, $Opacity: $JssorEasing$.$EaseLinear, $Rotate: $JssorEasing$.$EaseSwing }, $Opacity: 2, $Round: { $Rotate: 0.5 } },
            //Rotate Zoom+ out L
            { $Duration: 1000, x: 4, $Zoom: 11, $Rotate: 1, $SlideOut: true, $Easing: { $Left: $JssorEasing$.$EaseInExpo, $Zoom: $JssorEasing$.$EaseInExpo, $Opacity: $JssorEasing$.$EaseLinear, $Rotate: $JssorEasing$.$EaseInExpo }, $Opacity: 2, $Round: { $Rotate: 0.8 } },

            //Rotate HDouble- in
            { $Duration: 1200, x: 0.5, y: 0.3, $Cols: 2, $Zoom: 1, $Rotate: 1, $Assembly: 2049, $ChessMode: { $Column: 15 }, $Easing: { $Left: $JssorEasing$.$EaseInCubic, $Top: $JssorEasing$.$EaseInCubic, $Zoom: $JssorEasing$.$EaseInCubic, $Opacity: $JssorEasing$.$EaseOutQuad, $Rotate: $JssorEasing$.$EaseInCubic }, $Opacity: 2, $Round: { $Rotate: 0.7 } },
            //Rotate HDouble- out
            { $Duration: 1000, x: 0.5, y: 0.3, $Cols: 2, $Zoom: 1, $Rotate: 1, $SlideOut: true, $Assembly: 2049, $ChessMode: { $Column: 15 }, $Easing: { $Left: $JssorEasing$.$EaseInExpo, $Top: $JssorEasing$.$EaseInExpo, $Zoom: $JssorEasing$.$EaseInExpo, $Opacity: $JssorEasing$.$EaseLinear, $Rotate: $JssorEasing$.$EaseInExpo }, $Opacity: 2, $Round: { $Rotate: 0.7 } },
            //Rotate VFork in
            { $Duration: 1200, x: -4, y: 2, $Rows: 2, $Zoom: 11, $Rotate: 1, $Assembly: 2049, $ChessMode: { $Row: 28 }, $Easing: { $Left: $JssorEasing$.$EaseInCubic, $Top: $JssorEasing$.$EaseInCubic, $Zoom: $JssorEasing$.$EaseInCubic, $Opacity: $JssorEasing$.$EaseOutQuad, $Rotate: $JssorEasing$.$EaseInCubic }, $Opacity: 2, $Round: { $Rotate: 0.7 } },
            //Rotate HFork in
            { $Duration: 1200, x: 1, y: 2, $Cols: 2, $Zoom: 11, $Rotate: 1, $Assembly: 2049, $ChessMode: { $Column: 19 }, $Easing: { $Left: $JssorEasing$.$EaseInCubic, $Top: $JssorEasing$.$EaseInCubic, $Zoom: $JssorEasing$.$EaseInCubic, $Opacity: $JssorEasing$.$EaseOutQuad, $Rotate: $JssorEasing$.$EaseInCubic }, $Opacity: 2, $Round: { $Rotate: 0.8 } }
            ];

            var _CaptionTransitions = [];

            //define named transitions for caption that plays specified transition
            _CaptionTransitions["L"] = { $Duration: 800, x: 0.6, $Easing: { $Left: $JssorEasing$.$EaseInOutSine }, $Opacity: 2 };
            _CaptionTransitions["R"] = { $Duration: 800, x: -0.6, $Easing: { $Left: $JssorEasing$.$EaseInOutSine }, $Opacity: 2 };
            _CaptionTransitions["T"] = { $Duration: 800, y: 0.6, $Easing: { $Top: $JssorEasing$.$EaseInOutSine }, $Opacity: 2 };
            _CaptionTransitions["B"] = { $Duration: 800, y: -0.6, $Easing: { $Top: $JssorEasing$.$EaseInOutSine }, $Opacity: 2 };
            _CaptionTransitions["TL"] = { $Duration: 800, x: 0.6, y: 0.6, $Easing: { $Left: $JssorEasing$.$EaseInOutSine, $Top: $JssorEasing$.$EaseInOutSine }, $Opacity: 2 };
            _CaptionTransitions["TR"] = { $Duration: 800, x: -0.6, y: 0.6, $Easing: { $Left: $JssorEasing$.$EaseInOutSine, $Top: $JssorEasing$.$EaseInOutSine }, $Opacity: 2 };
            _CaptionTransitions["BL"] = { $Duration: 800, x: 0.6, y: -0.6, $Easing: { $Left: $JssorEasing$.$EaseInOutSine, $Top: $JssorEasing$.$EaseInOutSine }, $Opacity: 2 };
            _CaptionTransitions["BR"] = { $Duration: 800, x: -0.6, y: -0.6, $Easing: { $Left: $JssorEasing$.$EaseInOutSine, $Top: $JssorEasing$.$EaseInOutSine }, $Opacity: 2 };

            _CaptionTransitions["WAVE|L"] = { $Duration: 1500, x: 0.6, y: 0.3, $Easing: { $Left: $JssorEasing$.$EaseLinear, $Top: $JssorEasing$.$EaseInWave }, $Opacity: 2, $Round: { $Top: 2.5 } };
            _CaptionTransitions["MCLIP|B"] = { $Duration: 600, $Clip: 8, $Move: true, $Easing: $JssorEasing$.$EaseOutExpo };

            var options = {
                $AutoPlay: true,                                    //[Optional] Whether to auto play, to enable slideshow, this option must be set to true, default value is false
                $AutoPlayInterval: 1500,                            //[Optional] Interval (in milliseconds) to go for next slide since the previous stopped if the slider is auto playing, default value is 3000
                $PauseOnHover: 1,                                //[Optional] Whether to pause when mouse over if a slider is auto playing, 0 no pause, 1 pause for desktop, 2 pause for touch device, 3 pause for desktop and touch device, 4 freeze for desktop, 8 freeze for touch device, 12 freeze for desktop and touch device, default value is 1

                $DragOrientation: 3,                                //[Optional] Orientation to drag slide, 0 no drag, 1 horizental, 2 vertical, 3 either, default value is 1 (Note that the $DragOrientation should be the same as $PlayOrientation when $DisplayPieces is greater than 1, or parking position is not 0)
                $ArrowKeyNavigation: true,   			            //[Optional] Allows keyboard (arrow key) navigation or not, default value is false
                $SlideDuration: 600,                                //Specifies default duration (swipe) for slide in milliseconds
                $StartIndex: 0,

                $SlideshowOptions: {                                //[Optional] Options to specify and enable slideshow or not
                    $Class: $JssorSlideshowRunner$,                 //[Required] Class to create instance of slideshow
                    $Transitions: _SlideshowTransitions,            //[Required] An array of slideshow transitions to play slideshow
                    $TransitionsOrder: 1,                           //[Optional] The way to choose transition to play slide, 1 Sequence, 0 Random
                    $ShowLink: true                                    //[Optional] Whether to bring slide link on top of the slider when slideshow is running, default value is false
                },

                $ArrowNavigatorOptions: {                       //[Optional] Options to specify and enable arrow navigator or not
                    $Class: $JssorArrowNavigator$,              //[Requried] Class to create arrow navigator instance
                    $ChanceToShow: 1,                               //[Required] 0 Never, 1 Mouse Over, 2 Always
                    $AutoCenter: 2,                                 //[Optional] Auto center navigator in parent container, 0 None, 1 Horizontal, 2 Vertical, 3 Both, default value is 0
                    $Steps: 1                                       //[Optional] Steps to go for each navigation request, default value is 1
                },

                $ThumbnailNavigatorOptions: {                       //[Optional] Options to specify and enable thumbnail navigator or not
                    $Class: $JssorThumbnailNavigator$,              //[Required] Class to create thumbnail navigator instance
                    $ChanceToShow: 2,                               //[Required] 0 Never, 1 Mouse Over, 2 Always

                    $ActionMode: 1,                                 //[Optional] 0 None, 1 act by click, 2 act by mouse hover, 3 both, default value is 1
                    $Lanes: 2,                                      //[Optional] Specify lanes to arrange thumbnails, default value is 1
                    $SpacingX: 14,                                   //[Optional] Horizontal space between each thumbnail in pixel, default value is 0
                    $SpacingY: 12,                                   //[Optional] Vertical space between each thumbnail in pixel, default value is 0
                    $DisplayPieces: 6,                             //[Optional] Number of pieces to display, default value is 1
                    $ParkingPosition: 156,                          //[Optional] The offset position to park thumbnail
                    $Orientation: 2                                //[Optional] Orientation to arrange thumbnails, 1 horizental, 2 vertical, default value is 1
                },

                $CaptionSliderOptions: {
                    $Class: $JssorCaptionSlider$,
                    $CaptionTransitions: _CaptionTransitions,
                    $PlayInMode: 1,
                    $PlayOutMode: 3
                }


            };

            var jssor_slider1 = new $JssorSlider$("slider1_container", options);
            //responsive code begin
            //you can remove responsive code if you don't want the slider scales while window resizes
            function ScaleSlider() {
                var parentWidth = jssor_slider1.$Elmt.parentNode.clientWidth;
                if (parentWidth)
                    jssor_slider1.$ScaleWidth(Math.max(Math.min(parentWidth, 960), 300));
                else
                    window.setTimeout(ScaleSlider, 30);
            }
            ScaleSlider();

            $(window).bind("load", ScaleSlider);
            $(window).bind("resize", ScaleSlider);
            $(window).bind("orientationchange", ScaleSlider);
            //responsive code end
        });
    </script>
    <!-- Jssor Slider Begin -->
    <!-- You can move inline styles to css file or css block. -->
    <div id="slider1_container" style="position: relative; top: 0px; left: 0px; width: 960px;
        height: 480px; background: #191919; overflow: hidden; margin: 0 auto;">

        <!-- Loading Screen -->

       
        <div u="loading" style="position: absolute; top: 0px; left: 0px;">
            <div style="filter: alpha(opacity=70); opacity:0.7; position: absolute; display: block;
                background-color: #000000; top: 0px; left: 0px;width: 100%;height:100%;">
            </div>
            <div style="position: absolute; display: block; background: url(images/loading.gif) no-repeat center center;
                top: 0px; left: 0px;width: 100%;height:100%;">
            </div>
        </div>
        <!-- End of one Image -->



        <!-- ================================================================================== -->




        <!-- Slides Container -->
         <!-- ===============  AUTOMATE HERE ============================ -->
        <div u="slides" style="cursor: move; position: absolute; left: 240px; top: 0px; width: 720px; height: 480px; overflow: hidden;">
           
        <!-- ONE IMAGE , Caption and Thumbnail -->
             <div>
                 <!-- Main Image -->
                 <img u="image" src="images/Gallery/prado-1.jpg" title="Toyota Prado">

                 <!-- Caption Section -->
              <div u="caption" t="MCLIP|B" style="position: absolute; top: 250px; left: 0px;
                    width: 600px; height: 50px;">
                    <div style="position: absolute; top: 0px; left: 0px; width: 600px; height: 50px;
                        background-color: Black; opacity: 0.3; filter: alpha(opacity=30);">
                    </div>
                    <div style="position: absolute; top: 0px; left: 0px; width: 600px; height: 50px;
                        color: White; font-size: 16px; font-weight: bold; line-height: 50px; text-align: center;">
                        <!-- Caption Text here -->
                        Toyota Prado
                    </div>
                </div>
                           <!-- Thumbnail Image --> 
                        <img u="thumb" src="images/Gallery/thumb/prado-2.jpg" alt="Toyota Prado" />
             </div>
            <!-- End of ONE IMAGE -->

                  <div>
                    <img u="image" src="images/Gallery/avensis-1.jpg" title="Toyota Avensis">
                       <div u="caption" t="MCLIP|B" t2="T" style="position: absolute; top: 250px; left: 0px;
                    width: 600px; height: 50px;">
                    <div style="position: absolute; top: 0px; left: 0px; width: 600px; height: 50px;
                        background-color: Black; opacity: 0.3; filter: alpha(opacity=30);">
                    </div>
                    <div style="position: absolute; top: 0px; left: 0px; width: 600px; height: 50px;
                        color: White; font-size: 16px; font-weight: bold; line-height: 50px; text-align: center;">
                        Toyota Avensis
                    </div>
                </div>
                        <img u="thumb" src="images/Gallery/thumb/avensis-2.jpg" alt="Toyota Avensis" />
                </div>
                     
                   <div>
                    <img u="image" src="images/Gallery/camry-1.jpg" title="Toyota Camry">
                       <div u="caption" t="MCLIP|B" t2="T" style="position: absolute; top: 250px; left: 0px;
                    width: 600px; height: 50px;">
                    <div style="position: absolute; top: 0px; left: 0px; width: 600px; height: 50px;
                        background-color: Black; opacity: 0.3; filter: alpha(opacity=30);">
                    </div>
                    <div style="position: absolute; top: 0px; left: 0px; width: 600px; height: 50px;
                        color: White; font-size: 16px; font-weight: bold; line-height: 50px; text-align: center;">
                        Toyota Camry
                    </div>
                </div>
                        <img u="thumb" src="images/Gallery/thumb/camry-2.jpg" alt="Toyota Camry" />
                </div>

                   <div>
                    <img u="image" src="images/Gallery/camry2-1.jpg" title="Toyota Camry">
                       <div u="caption" t="MCLIP|B" t2="T" style="position: absolute; top: 250px; left: 0px;
                    width: 600px; height: 50px;">
                    <div style="position: absolute; top: 0px; left: 0px; width: 600px; height: 50px;
                        background-color: Black; opacity: 0.3; filter: alpha(opacity=30);">
                    </div>
                    <div style="position: absolute; top: 0px; left: 0px; width: 600px; height: 50px;
                        color: White; font-size: 16px; font-weight: bold; line-height: 50px; text-align: center;">
                        Toyota Camry
                    </div>
                </div>
                        <img u="thumb" src="images/Gallery/thumb/camry2-2.jpg" alt="Toyota Camry" />
                </div>
                
               <div>
                    <img u="image" src="images/Gallery/camry3-1.jpg" title="Toyota Camry">
                       <div u="caption" t="MCLIP|B" t2="T" style="position: absolute; top: 250px; left: 0px;
                    width: 600px; height: 50px;">
                    <div style="position: absolute; top: 0px; left: 0px; width: 600px; height: 50px;
                        background-color: Black; opacity: 0.3; filter: alpha(opacity=30);">
                    </div>
                    <div style="position: absolute; top: 0px; left: 0px; width: 600px; height: 50px;
                        color: White; font-size: 16px; font-weight: bold; line-height: 50px; text-align: center;">
                        Toyota Camry
                    </div>
                </div>
                        <img u="thumb" src="images/Gallery/thumb/camry3-2.jpg" alt="Toyota Camry" />
                </div>

                   <div>
                    <img u="image" src="images/Gallery/camry4-1.jpg" title="Toyota Camry">
                       <div u="caption" t="MCLIP|B" t2="T" style="position: absolute; top: 250px; left: 0px;
                    width: 600px; height: 50px;">
                    <div style="position: absolute; top: 0px; left: 0px; width: 600px; height: 50px;
                        background-color: Black; opacity: 0.3; filter: alpha(opacity=30);">
                    </div>
                    <div style="position: absolute; top: 0px; left: 0px; width: 600px; height: 50px;
                        color: White; font-size: 16px; font-weight: bold; line-height: 50px; text-align: center;">
                        Toyota Camry
                    </div>
                </div>
                        <img u="thumb" src="images/Gallery/thumb/camry4-2.jpg" alt="Toyota Camry" />
                </div>

               <div>
                    <img u="image" src="images/Gallery/camry5-1.jpg" title="Toyota Camry">
                       <div u="caption" t="MCLIP|B" t2="T" style="position: absolute; top: 250px; left: 0px;
                    width: 600px; height: 50px;">
                    <div style="position: absolute; top: 0px; left: 0px; width: 600px; height: 50px;
                        background-color: Black; opacity: 0.3; filter: alpha(opacity=30);">
                    </div>
                    <div style="position: absolute; top: 0px; left: 0px; width: 600px; height: 50px;
                        color: White; font-size: 16px; font-weight: bold; line-height: 50px; text-align: center;">
                        Toyota Camry
                    </div>
                </div>
                        <img u="thumb" src="images/Gallery/thumb/camry5-2.jpg" alt="Toyota Camry" />
                </div>

               <div>
                    <img u="image" src="images/Gallery/corolla-1.jpg" title="Toyota Corolla">
                       <div u="caption" t="MCLIP|B" t2="T" style="position: absolute; top: 250px; left: 0px;
                    width: 600px; height: 50px;">
                    <div style="position: absolute; top: 0px; left: 0px; width: 600px; height: 50px;
                        background-color: Black; opacity: 0.3; filter: alpha(opacity=30);">
                    </div>
                    <div style="position: absolute; top: 0px; left: 0px; width: 600px; height: 50px;
                        color: White; font-size: 16px; font-weight: bold; line-height: 50px; text-align: center;">
                        Toyota Corolla
                    </div>
                </div>
                        <img u="thumb" src="images/Gallery/thumb/corolla-2.jpg" alt="Toyota Corolla" />
                </div>

               <div>
                    <img u="image" src="images/Gallery/corolla2-1.jpg" title="Toyota Corolla">
                       <div u="caption" t="MCLIP|B" t2="T" style="position: absolute; top: 250px; left: 0px;
                    width: 600px; height: 50px;">
                    <div style="position: absolute; top: 0px; left: 0px; width: 600px; height: 50px;
                        background-color: Black; opacity: 0.3; filter: alpha(opacity=30);">
                    </div>
                    <div style="position: absolute; top: 0px; left: 0px; width: 600px; height: 50px;
                        color: White; font-size: 16px; font-weight: bold; line-height: 50px; text-align: center;">
                        Toyota Corolla
                    </div>
                </div>
                        <img u="thumb" src="images/Gallery/thumb/corolla2-2.jpg" alt="Toyota Corolla" />
                </div>
                             
                   <div>
                    <img u="image" src="images/Gallery/corolla3-1.jpg" title="Toyota Corolla">
                       <div u="caption" t="MCLIP|B" t2="T" style="position: absolute; top: 250px; left: 0px;
                    width: 600px; height: 50px;">
                    <div style="position: absolute; top: 0px; left: 0px; width: 600px; height: 50px;
                        background-color: Black; opacity: 0.3; filter: alpha(opacity=30);">
                    </div>
                    <div style="position: absolute; top: 0px; left: 0px; width: 600px; height: 50px;
                        color: White; font-size: 16px; font-weight: bold; line-height: 50px; text-align: center;">
                        Toyota Corolla
                    </div>
                </div>
                        <img u="thumb" src="images/Gallery/thumb/corolla3-2.jpg" alt="Toyota Corolla" />
                </div>  

               <div>
                    <img u="image" src="images/Gallery/fortuner-1.jpg" title="Toyota FOrtuner">
                       <div u="caption" t="MCLIP|B" t2="T" style="position: absolute; top: 250px; left: 0px;
                    width: 600px; height: 50px;">
                    <div style="position: absolute; top: 0px; left: 0px; width: 600px; height: 50px;
                        background-color: Black; opacity: 0.3; filter: alpha(opacity=30);">
                    </div>
                    <div style="position: absolute; top: 0px; left: 0px; width: 600px; height: 50px;
                        color: White; font-size: 16px; font-weight: bold; line-height: 50px; text-align: center;">
                        Toyota Fortuner
                    </div>
                </div>
                        <img u="thumb" src="images/Gallery/thumb/fortuner-2.jpg" alt="Toyota Fortuner" />
                </div>
               <div>
                    <img u="image" src="images/Gallery/hiace-1.jpg" title="Toyota Hiace">
                       <div u="caption" t="MCLIP|B" t2="T" style="position: absolute; top: 250px; left: 0px;
                    width: 600px; height: 50px;">
                    <div style="position: absolute; top: 0px; left: 0px; width: 600px; height: 50px;
                        background-color: Black; opacity: 0.3; filter: alpha(opacity=30);">
                    </div>
                    <div style="position: absolute; top: 0px; left: 0px; width: 600px; height: 50px;
                        color: White; font-size: 16px; font-weight: bold; line-height: 50px; text-align: center;">
                        Toyota Hiace
                    </div>
                </div>
                        <img u="thumb" src="images/Gallery/thumb/hiace-2.jpg" alt="Toyota Hiace" />
                </div>

               <div>
                    <img u="image" src="images/Gallery/hiace2-1.jpg" title="Toyota Hiace">
                       <div u="caption" t="MCLIP|B" t2="T" style="position: absolute; top: 250px; left: 0px;
                    width: 600px; height: 50px;">
                    <div style="position: absolute; top: 0px; left: 0px; width: 600px; height: 50px;
                        background-color: Black; opacity: 0.3; filter: alpha(opacity=30);">
                    </div>
                    <div style="position: absolute; top: 0px; left: 0px; width: 600px; height: 50px;
                        color: White; font-size: 16px; font-weight: bold; line-height: 50px; text-align: center;">
                        Toyota Hiace
                    </div>
                </div>
                        <img u="thumb" src="images/Gallery/thumb/hiace2-2.jpg" alt="Toyota Hiace" />
                </div>

               <div>
                    <img u="image" src="images/Gallery/hilux-1.jpg" title="Toyota Hilux">
                       <div u="caption" t="MCLIP|B" t2="T" style="position: absolute; top: 250px; left: 0px;
                    width: 600px; height: 50px;">
                    <div style="position: absolute; top: 0px; left: 0px; width: 600px; height: 50px;
                        background-color: Black; opacity: 0.3; filter: alpha(opacity=30);">
                    </div>
                    <div style="position: absolute; top: 0px; left: 0px; width: 600px; height: 50px;
                        color: White; font-size: 16px; font-weight: bold; line-height: 50px; text-align: center;">
                        Toyota Hilux
                    </div>
                </div>
                        <img u="thumb" src="images/Gallery/thumb/hilux-2.jpg" alt="Toyota Hilux" />
                </div>

               <div>
                    <img u="image" src="images/Gallery/lcprado-1.jpg" title="Toyota LandCruiser Prado">
                       <div u="caption" t="MCLIP|B" t2="T" style="position: absolute; top: 250px; left: 0px;
                    width: 600px; height: 50px;">
                    <div style="position: absolute; top: 0px; left: 0px; width: 600px; height: 50px;
                        background-color: Black; opacity: 0.3; filter: alpha(opacity=30);">
                    </div>
                    <div style="position: absolute; top: 0px; left: 0px; width: 600px; height: 50px;
                        color: White; font-size: 16px; font-weight: bold; line-height: 50px; text-align: center;">
                        Toyota LandCruiser Prado
                    </div>
                </div>
                        <img u="thumb" src="images/Gallery/thumb/lcprado-2.jpg" alt="Toyota LandCruiser Prado" />
                </div>

               <div>
                    <img u="image" src="images/Gallery/lcprado2-1.jpg" title=" Toyota LandCruiser Prado">
                       <div u="caption" t="MCLIP|B" t2="T" style="position: absolute; top: 250px; left: 0px;
                    width: 600px; height: 50px;">
                    <div style="position: absolute; top: 0px; left: 0px; width: 600px; height: 50px;
                        background-color: Black; opacity: 0.3; filter: alpha(opacity=30);">
                    </div>
                    <div style="position: absolute; top: 0px; left: 0px; width: 600px; height: 50px;
                        color: White; font-size: 16px; font-weight: bold; line-height: 50px; text-align: center;">
                         Toyota LandCruiser Prado
                    </div>
                </div>
                        <img u="thumb" src="images/Gallery/thumb/lcprado2-2.jpg" alt=" Toyota LandCruiser Prado" />
                </div>

            <div>
                    <img u="image" src="images/Gallery/lcprado3-1.jpg" title=" Toyota LandCruiser Prado">
                       <div u="caption" t="MCLIP|B" t2="T" style="position: absolute; top: 250px; left: 0px;
                    width: 600px; height: 50px;">
                    <div style="position: absolute; top: 0px; left: 0px; width: 600px; height: 50px;
                        background-color: Black; opacity: 0.3; filter: alpha(opacity=30);">
                    </div>
                    <div style="position: absolute; top: 0px; left: 0px; width: 600px; height: 50px;
                        color: White; font-size: 16px; font-weight: bold; line-height: 50px; text-align: center;">
                         Toyota LandCruiser Prado
                    </div>
                </div>
                        <img u="thumb" src="images/Gallery/thumb/lcprado3-2.jpg" alt=" Toyota LandCruiser Prado" />
                </div>

                <div>
                    <img u="image" src="images/Gallery/lcprado4-1.jpg" title=" Toyota LandCruiser Prado">
                       <div u="caption" t="MCLIP|B" t2="T" style="position: absolute; top: 250px; left: 0px;
                    width: 600px; height: 50px;">
                    <div style="position: absolute; top: 0px; left: 0px; width: 600px; height: 50px;
                        background-color: Black; opacity: 0.3; filter: alpha(opacity=30);">
                    </div>
                    <div style="position: absolute; top: 0px; left: 0px; width: 600px; height: 50px;
                        color: White; font-size: 16px; font-weight: bold; line-height: 50px; text-align: center;">
                         Toyota LandCruiser Prado
                    </div>
                </div>
                        <img u="thumb" src="images/Gallery/thumb/lcprado4-2.jpg" alt=" Toyota LandCruiser Prado" />
               </div>

            
                <div>
                    <img u="image" src="images/Gallery/prado-1.jpg" title=" Toyota Prado">
                       <div u="caption" t="MCLIP|B" t2="T" style="position: absolute; top: 250px; left: 0px;
                    width: 600px; height: 50px;">
                    <div style="position: absolute; top: 0px; left: 0px; width: 600px; height: 50px;
                        background-color: Black; opacity: 0.3; filter: alpha(opacity=30);">
                    </div>
                    <div style="position: absolute; top: 0px; left: 0px; width: 600px; height: 50px;
                        color: White; font-size: 16px; font-weight: bold; line-height: 50px; text-align: center;">
                         Toyota Prado
                    </div>
                </div>
                        <img u="thumb" src="images/Gallery/thumb/prado-2.jpg" alt=" Toyota Prado" />
               </div>

            <div>
                    <img u="image" src="images/Gallery/prado2-1.jpg" title=" Toyota Prado">
                       <div u="caption" t="MCLIP|B" t2="T" style="position: absolute; top: 250px; left: 0px;
                    width: 600px; height: 50px;">
                    <div style="position: absolute; top: 0px; left: 0px; width: 600px; height: 50px;
                        background-color: Black; opacity: 0.3; filter: alpha(opacity=30);">
                    </div>
                    <div style="position: absolute; top: 0px; left: 0px; width: 600px; height: 50px;
                        color: White; font-size: 16px; font-weight: bold; line-height: 50px; text-align: center;">
                         Toyota Prado
                    </div>
                </div>
                        <img u="thumb" src="images/Gallery/thumb/prado2-2.jpg" alt=" Toyota Prado" />
               </div>

            <div>
                    <img u="image" src="images/Gallery/rav4-1.jpg" title=" Toyota Rav4">
                       <div u="caption" t="MCLIP|B" t2="T" style="position: absolute; top: 250px; left: 0px;
                    width: 600px; height: 50px;">
                    <div style="position: absolute; top: 0px; left: 0px; width: 600px; height: 50px;
                        background-color: Black; opacity: 0.3; filter: alpha(opacity=30);">
                    </div>
                    <div style="position: absolute; top: 0px; left: 0px; width: 600px; height: 50px;
                        color: White; font-size: 16px; font-weight: bold; line-height: 50px; text-align: center;">
                         Toyota RAV4
                    </div>
                </div>
                        <img u="thumb" src="images/Gallery/thumb/rav4-2.jpg" alt=" Toyota Rav4" />
               </div>

            
            <div>
                    <img u="image" src="images/Gallery/rav42-1.jpg" title=" Toyota Rav4">
                       <div u="caption" t="MCLIP|B" t2="T" style="position: absolute; top: 250px; left: 0px;
                    width: 600px; height: 50px;">
                    <div style="position: absolute; top: 0px; left: 0px; width: 600px; height: 50px;
                        background-color: Black; opacity: 0.3; filter: alpha(opacity=30);">
                    </div>
                    <div style="position: absolute; top: 0px; left: 0px; width: 600px; height: 50px;
                        color: White; font-size: 16px; font-weight: bold; line-height: 50px; text-align: center;">
                         Toyota RAV4
                    </div>
                </div>
                        <img u="thumb" src="images/Gallery/thumb/rav42-2.jpg" alt=" Toyota Rav4" />
               </div>

            
            <div>
                    <img u="image" src="images/Gallery/rav43-1.jpg" title=" Toyota Rav4">
                       <div u="caption" t="MCLIP|B" t2="T" style="position: absolute; top: 250px; left: 0px;
                    width: 600px; height: 50px;">
                    <div style="position: absolute; top: 0px; left: 0px; width: 600px; height: 50px;
                        background-color: Black; opacity: 0.3; filter: alpha(opacity=30);">
                    </div>
                    <div style="position: absolute; top: 0px; left: 0px; width: 600px; height: 50px;
                        color: White; font-size: 16px; font-weight: bold; line-height: 50px; text-align: center;">
                         Toyota RAV4
                    </div>
                </div>
                        <img u="thumb" src="images/Gallery/thumb/rav43-2.jpg" alt=" Toyota Rav4" />
               </div>

            
            <div>
                    <img u="image" src="images/Gallery/yaris-1.jpg" title=" Toyota Yaris">
                       <div u="caption" t="MCLIP|B" t2="T" style="position: absolute; top: 250px; left: 0px;
                    width: 600px; height: 50px;">
                    <div style="position: absolute; top: 0px; left: 0px; width: 600px; height: 50px;
                        background-color: Black; opacity: 0.3; filter: alpha(opacity=30);">
                    </div>
                    <div style="position: absolute; top: 0px; left: 0px; width: 600px; height: 50px;
                        color: White; font-size: 16px; font-weight: bold; line-height: 50px; text-align: center;">
                         Toyota Yaris
                    </div>
                </div>
                        <img u="thumb" src="images/Gallery/thumb/yaris-2.jpg" alt=" Toyota Yaris" />
               </div>

            
            <div>
                    <img u="image" src="images/Gallery/yaris2-1.jpg" title=" Toyota Yaris">
                       <div u="caption" t="MCLIP|B" t2="T" style="position: absolute; top: 250px; left: 0px;
                    width: 600px; height: 50px;">
                    <div style="position: absolute; top: 0px; left: 0px; width: 600px; height: 50px;
                        background-color: Black; opacity: 0.3; filter: alpha(opacity=30);">
                    </div>
                    <div style="position: absolute; top: 0px; left: 0px; width: 600px; height: 50px;
                        color: White; font-size: 16px; font-weight: bold; line-height: 50px; text-align: center;">
                         Toyota Yaris
                    </div>
                </div>
                        <img u="thumb" src="images/Gallery/thumb/yaris2-2.jpg" alt=" Toyota Yaris" />
               </div>
        </div>
        
        <!-- Arrow Navigator Skin Begin -->
        <style>
            /* jssor slider arrow navigator skin 05 css */
            /*
            .jssora05l              (normal)
            .jssora05r              (normal)
            .jssora05l:hover        (normal mouseover)
            .jssora05r:hover        (normal mouseover)
            .jssora05ldn            (mousedown)
            .jssora05rdn            (mousedown)
            */
            .jssora05l, .jssora05r, .jssora05ldn, .jssora05rdn
            {
            	position: absolute;
            	cursor: pointer;
            	display: block;
                background: url(images/a17.png) no-repeat;
                overflow:hidden;
            }
            .jssora05l { background-position: -10px -40px; }
            .jssora05r { background-position: -70px -40px; }
            .jssora05l:hover { background-position: -130px -40px; }
            .jssora05r:hover { background-position: -190px -40px; }
            .jssora05ldn { background-position: -250px -40px; }
            .jssora05rdn { background-position: -310px -40px; }
        </style>
        <!-- Arrow Left -->
        <span u="arrowleft" class="jssora05l" style="width: 40px; height: 40px; top: 158px; left: 248px;">
        </span>
        <!-- Arrow Right -->
        <span u="arrowright" class="jssora05r" style="width: 40px; height: 40px; top: 158px; right: 8px">
        </span>
        <!-- Arrow Navigator Skin End -->
        
        <!-- Thumbnail Navigator Skin 02 Begin -->
        <div u="thumbnavigator" class="jssort02" style="position: absolute; width: 240px; height: 480px; left:0px; bottom: 0px;">
        
            <!-- Thumbnail Item Skin Begin -->
            <style>
                /* jssor slider thumbnail navigator skin 02 css */
                /*
                .jssort02 .p            (normal)
                .jssort02 .p:hover      (normal mouseover)
                .jssort02 .pav          (active)
                .jssort02 .pav:hover    (active mouseover)
                .jssort02 .pdn          (mousedown)
                */
                .jssort02 .w
                {
                    position: absolute;
                    top: 0px;
                    left: 0px;
                    width: 100%;
                    height: 100%;
                }
                .jssort02 .c
                {
                    position: absolute;
                    top: 0px;
                    left: 0px;
                    width: 95px;
                    height: 62px;
                    border: #000 2px solid;
                }
                .jssort02 .p:hover .c, .jssort02 .pav:hover .c, .jssort02 .pav .c 
                {
                	background: url(images/t01.png) center center;
                	border-width: 0px;
                    top: 2px;
                    left: 2px;
                    width: 95px;
                    height: 62px;
                }
                .jssort02 .p:hover .c, .jssort02 .pav:hover .c
                {
                    top: 0px;
                    left: 0px;
                    width: 97px;
                    height: 64px;
                    border: #fff 1px solid;
                }
            </style>
            <div u="slides" style="cursor: move;">
                <div u="prototype" class="p" style="position: absolute; width: 99px; height: 66px; top: 0; left: 0;">
                    <div class=w><div u="thumbnailtemplate" style=" width: 100%; height: 100%; border: none;position:absolute; top: 0; left: 0;"></div></div>
                    <div class=c>
                    </div>
                </div>
            </div>
            <!-- Thumbnail Item Skin End -->
        </div>
        <!-- Thumbnail Navigator Skin End -->
        <a style="display: none" href="http://www.jssor.com">jQuery Slider</a>
    </div>

                </section>
</asp:Content>
