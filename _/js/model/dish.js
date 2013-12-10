/**
 * Created with JetBrains PhpStorm.
 * User: vova
 * Date: 11/26/13
 * Time: 1:04 AM
 * To change this template use File | Settings | File Templates.
 */

function DishesModel(id,cafeId,name ,price, pictureName, type) {
    'use strict';

    return {
        id:ko.observable(id),
        cafeId:ko.observable(cafeId),
        name:ko.observable(name),
        price:ko.observable(price),
        pictureName:ko.observable(pictureName),
        dishesType:ko.observable(type)
    }
}
