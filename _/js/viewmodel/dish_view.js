function DishesViewModel(dishes){
    var self = this;
    self.dishes = ko.observableArray(dishes);
    self.total = ko.observable(0);
    self.totalList = ko.observableArray([]);
    self.selectedItem = ko.observable();

    self.dishesFiltered =  self.dishes();

    self.addItem = function(el){
        var tempCount = el.count() || 0,
            tempTotal  =  parseInt(self.total()) ;
            el.count( tempCount+1);
            self.total(  parseInt(tempTotal) + parseInt(el.price()) );

            if( el.count() > 0 ) {
                el.select(true);
            }
      return true;
    };

    self.removeItem  = function(el){
       var temp = el.count(),
        tempTotal  =  parseInt(self.total()) ;
        if(temp >=1){
            el.count( temp-1);
            self.total(  parseInt(tempTotal) - parseInt(el.price()) );
        }
        if( el.count() == 0 ) {
            el.select(false);
        }
        return true;

    };


    self.dishesFiltered = ko.observableArray(dishes);

    // todo  ref  this  code
    this.filter0 = function () {
        this.dishesFiltered(ko.utils.arrayFilter(this.dishes(), function (item) {
            return item.typeId() == 0;
        }));
    };
    this.filter1 = function () {
        this.dishesFiltered(ko.utils.arrayFilter(this.dishes(), function (item) {
            return item.typeId() == 1;
        }));
    };
    this.filter2 = function () {
        this.dishesFiltered(ko.utils.arrayFilter(this.dishes(), function (item) {
            return item.typeId() == 2;
        }));
    };
    this.filter3 = function () {
        this.dishesFiltered(ko.utils.arrayFilter(this.dishes(), function (item) {
            return item.typeId() == 3;
        }));
    };



}