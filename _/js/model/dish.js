/**
 * Created with JetBrains PhpStorm.
 * User: vova
 * Date: 11/26/13
 * Time: 1:04 AM
 * To change this template use File | Settings | File Templates.
 */

function DishesModel(id,cafeId,name ,price, pictureName, type) {
    'use strict';

    var
        id = ko.observable(),
        cafeId = ko.observable(),
        name = ko.observable(),
        price = ko.observable(price),
        pictureName = ko.observable(pictureName),
        type = ko.observable(type),
        count = ko.observable(null);

    return {
        id:id,
        cafeId:cafeId,
        name:name,
        price:price,
        pictureName:pictureName,
        type:type,
        count:count
    }
}
