/**
 * Created with JetBrains PhpStorm.
 * User: vova
 * Date: 11/26/13
 * Time: 12:58 AM
 * To change this template use File | Settings | File Templates.
 */


function CafeModel(id,name,description ,address, locality, district, metro, house,placeXY, phone) {
   'use strict';
//    var
//        id = ko.observable(),
//        name = ko.observable(),
//        address = ko.observable(),
//        locality = ko.observable(),
//        district = ko.observable(),
//        metro = ko.observable(),
//        house = ko.observable(),
//        placeXY = ko.observable(),
//        phone = ko.observable(),
//        description = ko.observable();
 function url(){
      return "#/cafe/"+id;
  };


    return {
        id:id,
        name:name,
        address:name,
        locality:locality,
        district:district,
        metro:metro,
        house:house,
        placeXY:placeXY,
        phone:phone,
        description:description,
        url:url
    }
}

