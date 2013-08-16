				        </div>
                        <!-- //CONTENT -->
                    </div>
                </div>
            </div>
            <!-- //MAIN CONTAINER -->
            <!-- FOOTER -->
            <div  class="row-fluid">
                <div  class="span12" id="footer">
                    <div class="box-bl span12">
                        <div class="box-br span12">
                            <div class="sublogo">
                                <div id="poweredby">
                                    <a id="t3-logo">Powered By T3 Framework</a>
                                </div>
                            </div>
                            <div class="copyright">
                                <ul id="mainlevel-nav">
                                    <li class="firstitem"><a href="#" class="mainlevel-nav">Trang chủ</a></li>
                                    <li><a href="#" class="mainlevel-nav">Giới thiệu</a></li>
                                    <li><a href="#" class="mainlevel-nav">Điều khoản</a> </li>
                                    <li><a href="#" class="mainlevel-nav">Liên hệ</a> </li>
                                 </ul>
                                    <?php echo $footer['Infor']['content'];?>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- //FOOTER -->
        </div>
        
    
        <script>
                        var geocoder;
                        var map;
                        var query = toado;
                    //  var infowindow = new google.maps.InfoWindow();
                        function initialize() {
                          geocoder = new google.maps.Geocoder();
                          var mapOptions = {
                            zoom: 16,
                            mapTypeId: google.maps.MapTypeId.ROADMAP
                          }
                          map = new google.maps.Map(document.getElementById('map-canvas'), mapOptions);
                          codeAddress();
                        }

                        function codeAddress() {
                          var address = query;

                           var infowindow = new google.maps.InfoWindow({
                              content: noidung
                          });
                          geocoder.geocode( { 'address': address}, function(results, status) {
                            if (status == google.maps.GeocoderStatus.OK) {
                              map.setCenter(results[0].geometry.location);
                              var marker = new google.maps.Marker({
                                  map: map,
                                  position: results[0].geometry.location
                              });
                               infowindow.open(map,marker);
                               google.maps.event.addListener(marker, 'click', function() {
                               infowindow.open(map,marker);
                              });
                            } else {
                              alert('Geocode was not successful for the following reason: ' + status);
                            }
                          });
                        }

                        google.maps.event.addDomListener(window, 'load', initialize);
                    </script>
    </body>
</html>
