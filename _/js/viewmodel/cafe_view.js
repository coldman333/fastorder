
function CafeViewModel(cafeData){
    var self = this;
    self.cafes = ko.observableArray(cafeData);
    self.carrentCafe = ko.observable();
}