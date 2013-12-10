/**
 * Created with JetBrains PhpStorm.
 * User: vova
 * Date: 11/26/13
 * Time: 12:58 AM
 * To change this template use File | Settings | File Templates.
 */


function CafeModel(id,name,description ,address, locality, district, metro, house,placeXY, phone, position) {
   'use strict';

   function url(){
          return "#cafe/"+id;
   }

   return {
        id:ko.observable(id),
        name:ko.observable(name),
        address:ko.observable(name),
        locality:ko.observable(locality),
        district:ko.observable(district),
        metro:ko.observable(metro),
        house:ko.observable(house),
        placeXY:ko.observable(placeXY),
        phone:ko.observable(phone),
        description:ko.observable(description),
        position:ko.observable(position),
        url:url()
   }
}


