function DishesViewModel(dishes){
    var self = this;
    self.dishes = ko.observableArray(dishes);
    self.total = ko.observable(0);
    self.totalList = ko.observableArray([]);

    self.addItem = function(el){
        var tempCount = el.count() || 0,
            tempTotal  =  parseInt(self.total()) ;
            el.count( tempCount+1);
            self.total(  parseInt(tempTotal) + parseInt(el.price()) );

      return true;
    };

    self.removeItem  = function(el){
       var temp = el.count(),
        tempTotal  =  parseInt(self.total()) ;
        if(temp >=1){
            el.count( temp-1);
            self.total(  parseInt(tempTotal) - parseInt(el.price()) );
        }
        return true;
    };

}