function DishesViewModel(dishes){
    var self = this;
    self.dishes = ko.observableArray(dishes);

}