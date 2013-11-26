
function CafeViewModel(cafeData){
        var self = this;
        self.cafes = ko.observableArray(cafeData);

        self.carrentCafe =  self.cafes()[0];

        self.goToCafe = function (cafe)  {
           location.hash = cafe.id;
           // debugger;
           self.carrentCafe = cafe;
        }
}