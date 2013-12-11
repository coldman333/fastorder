
function CafeViewModel(cafeData){
    var self = this;
    self.cafes = ko.observableArray(cafeData);
    self.carrentCafe = ko.observable();

    self.cafes.sort(function(left, right) {
        return left.position() == right.position() ? 0 : (left.position() < right.position() ? -1 : 1)
    });

    self.goToCafe = function(cafe){
        location.hash = 'cafe/' + cafe.id();
    }


}