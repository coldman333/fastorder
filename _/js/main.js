

(function($){
    $(document).ready(function() {


        var gYL, pos1,pos2, hasLocation = false, hasData = false;
        var geo_options = {
            enableHighAccuracy: true,
            maximumAge        : 30000,
            timeout           : 1000
        };

        function geo_success(position) {


            pos1 = position.coords.latitude
            pos2 = position.coords.longitude;
            $("#locInfo").show().addClass("alert alert-success").html("Your location  " +pos1+" , " +pos2 );

            hasLocation = true;
        }

        function geo_error() {
            $("#locInfo").show().addClass("alert alert-danger").html("Sorry, no position available.");
            //alert("Sorry, no position available.");
        }

       function getYourLocation(){
           var deferred = Q.defer();
           navigator.geolocation.getCurrentPosition(geo_success, geo_error, geo_options);
           return deferred.promise;
       }


     function loadData(){
        var request = $.getJSON("/api/place/cafes/lat/"+pos1+"/long/"+pos2);
        var chained = request.then(function( data ) {
            var arr = [];
            for(var i =0; i<data.length; i++){
                var temp = new CafeModel(
                    data[i].id,
                    data[i].name,
                    data[i].description,
                    data[i].address,
                    data[i].locality,
                    data[i].district,
                    data[i].metro,
                    data[i].house,
                    data[i].placeXY,
                    data[i].phone,
                    data[i].position) ;
                arr.push(temp)
            }
            return arr ;
        });

        chained.done(function( data ) {
            var cafeViewModel = new CafeViewModel(data);
            var el = document.getElementById('cafeCont');
            ko.applyBindings(cafeViewModel,el);
             $("section").hide();
             $("#loader").hide();
             $("#cafeCont").show();

              hasData = true;
        });

}
//
//      function loadDishData(cafeId){
//
//          var request = $.getJSON("/api/place/dishes/id/"+cafeId);
//          var chained = request.then(function( data ) {
//              var arr = [];
//              for(var i =0; i<data.length; i++){
//                  var temp = new DishesModel(
//                      data[i].id,
//                      data[i].cafeId,
//                      data[i].name,
//                      data[i].price,
//                      data[i].pictureName,
//                      data[i].typeId
//                  ) ;
//                  arr.push(temp)
//              }
//              return arr ;
//          });
//
//          chained.done(function( data ) {
//              var dishesViewModel = new DishesViewModel(data);
//              var el = document.getElementById('dishCont');
//              ko.applyBindings(dishesViewModel, el);
//
//              $("section").hide();
//              $("#loader").hide();
//              $("#dishCont").show();
//          });
//
//          chained.fail(function( data ) {
//                $("section").hide();
//                $("#loader").hide();
//                $("#cafeCont").show();
//                 location.hash = "";
//                alert(" В этом кафе кушать нечего \n выберете  другое");
//
//          });
//      }

    Sammy(function() {

       this.get('#cafe/:cafeId', function() {

       });

        this.get('', function() {
           if(!hasLocation) {
               getYourLocation();
            }
           if(!hasData){
                Q.delay(1300).then(function(){
                    loadData();
                });
            } else {

             $("section").hide();
             $("#loader").hide();
             $("#cafeCont").show();

            }

        });
    }).run();

  });
})(jQuery);