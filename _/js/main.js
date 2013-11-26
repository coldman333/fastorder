

(function($){
    $(document).ready(function() {

        var request = $.getJSON("/api/place/cafes"),
            chained = request.then(function( data ) {
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
                        data[i].placeXY) ;
                    arr.push(temp)
                }
                return arr ;
            });

        chained.done(function( data ) {
            var cafeViewModel = new CafeViewModel(data);
            ko.applyBindings(cafeViewModel);

        });

    });

})(jQuery);