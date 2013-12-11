

function DishesModel(id,cafeId,name ,price, pictureName, typeId) {
    'use strict';
    var
        id = ko.observable(id),
        cafeId = ko.observable(cafeId),
        name = ko.observable(name),
        price = ko.observable(price),
        pictureName = ko.observable(pictureName),
        typeId = ko.observable(typeId),
        count = ko.observable(null),
        select =  ko.observable(false);

        function isSelected(){
          return (select())? "dhx_list_content_item_selected":"dhx_list_content_item";
        }

    return {
        id:id,
        cafeId:cafeId,
        name:name,
        price:price,
        pictureName:pictureName,
        typeId:typeId,
        count:count,
        select:select,
        isSelected:isSelected

    }
}
