function DishesViewModel(dishes){
    var self = this;
    self.dishes = ko.observableArray([]);
    self.total = ko.observable(0);
    self.totalList = ko.observableArray([]);
    self.selectedItem = ko.observable();
    self.dishesFiltered =  ko.observableArray([]);
    self.orderList =  ko.observableArray([]);
    self.orderListDEL = false;

    /* operations */
    self.removeItemOrderList = function (id) {
        self.orderList.remove(function(order) {
            if(order.id() == id && self.orderListDEL == true) {
                self.orderListDEL = false;
                return true;
            }else {
                return false;
            }
        });
    };


    self.addToOrderItem = function(el){
        var tempCount = el.count() || 0,
            tempTotal  =  parseInt(self.total()) ;
            el.count( tempCount+1);
            self.total( parseInt(tempTotal) + parseInt(el.price()) );
            if( el.count() > 0 ) {
                el.select(true);
            }
            self.orderList.push(el);
        return true;
    };

    self.removeFromOrderItem  = function(el){
        var temp = el.count(),
        tempTotal  =  parseInt(self.total()) ;

        if(temp >=1){
            el.count( temp-1);
            self.total(  parseInt(tempTotal) - parseInt(el.price()) );
        }

        if( el.count() == 0 ) {
            el.select(false);
        }

        for(var i =0; i< self.orderList().length; i++ ){
            if( el.id() == self.orderList()[i].id() ){
                self.orderListDEL = true;
                self.removeItemOrderList(el.id());
                return true;
            }

        }




        return true;
    };

   //self.dishesFiltered([]);

    // todo  ref  this  code
    self.filter0 = function () {
        $("#type0").siblings().removeClass("groupe_active");
        $("#type0").addClass("groupe_active");
        self.dishesFiltered( ko.utils.arrayFilter(self.dishes(), function (item) {
            return  item.typeId() == 0
        }));
    };
    self.filter1 = function () {
        $("#type1").siblings().removeClass("groupe_active");
        $("#type1").addClass("groupe_active");
        self.dishesFiltered(ko.utils.arrayFilter(self.dishes(), function (item) {
            return item.typeId() == 1;
        }));
    };
    self.filter2 = function () {
        $("#type2").siblings().removeClass("groupe_active");
        $("#type2").addClass("groupe_active");
        self.dishesFiltered(ko.utils.arrayFilter(self.dishes(), function (item) {
            return item.typeId() == 2;
        }));
    };
    self.filter3 = function () {
        $("#type3").siblings().removeClass("groupe_active");
        $("#type3").addClass("groupe_active");
        self.dishesFiltered(ko.utils.arrayFilter(self.dishes(), function (item) {
            return item.typeId() == 3;
        }));
    };


    self.submitOrder =  function (){

        $("#postInfo").show();
        $("#postInfo").find("b").html('<div class="alert alert-success">  You Order Add #127 </div>');
        self.orderList([]);
        self.total(0);
        for(var i =0; i< self.dishes().length; i++ ){
            self.dishes()[i].count(0);
            self.dishes()[i].select(false);
        }

//      $.post("/api/order/order/", function(data){
//            $("#postInfo").show();
//            $("#postInfo").find("b").html(" ADD !");
//            self.orderList([]);
//      });
    };

    Sammy(function() {
        this.get('#cafe/:cafeId', function() {

           $("section").hide();
           $("#loader").show();
            $.get("/api/place/dishes/", { id: this.params.cafeId }, function(data){
                 self.dishes([]);
                 self.dishesFiltered([]);
                for(var i =0; i<data.length; i++){
                    var temp = new DishesModel(
                        data[i].id,
                        data[i].cafeId,
                        data[i].name,
                        data[i].price,
                        data[i].pictureName,
                        data[i].typeId) ;
                    self.dishes.push(temp);
                    self.dishesFiltered.push(temp);
                }
            });
            $("#loader").hide();
            $("#dishCont").show();

        });
    });


    $('#myModal').on('hidden.bs.modal', function (e) {
  
        $("#postInfo").hide();
})

}

var el = document.getElementById('dishCont');
ko.applyBindings( new DishesViewModel(), el);