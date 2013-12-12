
  
        <div id="loader" class="loader"></div>
        <main>
            <section id="cafeCont" class="container" style="display: none">

                <div id="locInfo" style="display: none"></div>



                <div class="dhx_view dhx_pagelist content"  style="border-width: 0px; float: left; margin-left: 0;  ">
                                    <div class="dhx_scroll_cont"  data-bind="foreach: cafes" >

                                            <div class="dhx_list_item dhx_list_content_item" style="width:749px; padding:0px; margin:0px; overflow:hidden;"  data-bind=" click:  $root.goToCafe, attr: { href: url }" >


                                                <div class="landscape_buy">
                                                    <div class="buy_outside">
                                                        <div class="buy_inside"> <b data-bind="text:position " style="font-size: 20px; "></b> км</div>

                                                    </div>
                                                </div>

                                                    <div class="landscape_img" style="background:url(/_/img/cofee.jpg) no-repeat scroll 50% 20% transparent;">
                                                      
                                                    </div>
                                                    <div class="landscape_body">
                                                        <h3 class="landscape_body_header" data-bind="text: name"></h3>
                                                        <p class="landscape_body_description">Lorem ipsum dolor sit amet,
                                                            consectetum adipicing elit. Sed eleifend, augue
                                                            sed bibendum elementum, totor nulla ullamcorper nibh,
                                                            ut feugiat neque tellus sed massa.</p>
                                                        <span class="glyphicon glyphicon-tree-conifer"></span> <b data-bind="text :house"></b><br/>
                                                        <span class="glyphicon glyphicon-road"></span> <b data-bind="text : metro"></b>
                                                    </div>


                                            </div>


                                     </div>
                  </div>
            </section>
<!-- ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////// -->
            <section  id="dishCont" class="container dishCont" style="display: none">
                 <div class="  col-md-4"  >

                          <div class="  " >
                              <div class="dhx_scroll_cont" data-bind="">
                                   <div id ="type0" class="tapeTabs dhx_dataview_item dhx_dataview_default_item " data-bind="click: filter0">
                                        <div class="menu_img" style="background:url(/_/img/pasta.jpg) no-repeat scroll 50% 50% transparent;">&nbsp;</div>
                                        <div class="menu_content">
                                            <h3 class="menu_content_header" style="">Pasta</h3>
                                            <p class="menu_content_description">Lorem ipsum dolor sit amet, consectetum adipicing elit.</p></div>
                                    </div>
                                    <div id ="type1" class="tapeTabs dhx_dataview_item dhx_dataview_default_item" data-bind="click: filter1">
                                        <div class="menu_img" style="background:url(/_/img/pizza.jpg) no-repeat scroll 50% 50% transparent;">&nbsp;</div>
                                        <div class="menu_content"><h3 class="menu_content_header" style="">Pizza</h3><p class="menu_content_description">Lorem ipsum dolor sit amet, consectetum adipicing elit.</p></div>
                                    </div>
                                    <div id ="type2"  class="tapeTabs dhx_dataview_item dhx_dataview_default_item"  data-bind="click: filter2">
                                        <div class="menu_img" style="background:url(/_/img/drinks.jpg) no-repeat scroll 50% 50% transparent;">&nbsp;</div>
                                        <div class="menu_content"><h3 class="menu_content_header" style="">Drinks</h3><p class="menu_content_description">Lorem ipsum dolor sit amet, consectetum adipicing elit.</p></div>
                                    </div>
                                    <div id ="type3"   class="tapeTabs dhx_dataview_item dhx_dataview_default_item"   data-bind="click: filter3">
                                        <div class="menu_img" style="background:url(/_/img/cofee.jpg) no-repeat scroll 50% 50% transparent;">&nbsp;</div>
                                        <div class="menu_content"><h3 class="menu_content_header" style="">Cofee</h3><p class="menu_content_description">Lorem ipsum dolor sit amet, consectetum adipicing elit.</p></div>
                                    </div>
                                </div>
                            </div>

                </div>

                <div class="  col-md-8" >
                   
                    <div class="dhx_scroll_cont row"  data-bind=" foreach: dishesFiltered " >

                            <div   data-bind="css: isSelected(), attr { id: typeId }" style="overflow: hidden">
                                    <div class="landscape_buy" style="float: right">
                                        <div class="buy_outside" data-bind="click: $parent.addToOrderItem">
                                            <!-- ko ifnot: count  -->
                                            <div class="buy_inside" >+</div>
                                            <!-- /ko -->
                                            <!-- ko if: count -->
                                            <div class="buy_inside"  data-bind="text:count" ></div>
                                            <!-- /ko -->
                                        </div>
                                        <!-- ko if: count -->
                                        <div class="buy_dec_outside" data-bind="click: $parent.removeFromOrderItem ">
                                            <div class="buy_dec_inside">&nbsp;</div>
                                        </div>
                                        <!-- /ko -->
                                    </div>


                                    <div class="landscape_img" style="background:url(/_/img/dish1.png) no-repeat scroll 50% 20% transparent;">
                                       <h3 class="landscape_price" ><b data-bind="text:price "></b></h3>
                                    </div>


                                    <div class="landscape_body">
                                        <h3 class="landscape_body_header" data-bind="text: name"></h3>
                                        <p class="landscape_body_description">Lorem ipsum dolor sit amet, 
                                        consectetum adipicing elit. Sed eleifend, augue 
                                        sed bibendum elementum, totor nulla ullamcorper nibh,
                                         ut feugiat neque tellus sed massa.</p>
                                    </div>

                            </div>


                     </div>
               </div>


<!-- Modal -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title" id="myModalLabel">Ваш заказ</h4>
            </div>
            <div class="modal-body">
                   <ul class="nav nav-pills nav-stacked" data-bind="foreach: orderList">
                        <li>
                            <span class="badge pull-right"  data-bind="text:price"></span>
                            <span data-bind="text:name"></span>
                            (<span data-bind="text:count"></span>)
                        </li>
                    </ul>
                  <div id="postInfo" style="display: none">
                      <b></b>
                      <button type="button" class="btn btn-default" data-dismiss="modal">ok</button>
                  </div>
            </div>
            <div class="modal-footer">
                 <span id="order" style="color:#333; float: left">
                     Total <b data-bind="text:total"></b> грн
                </span>
                <button type="button" class="btn btn-default" data-dismiss="modal">Закрыть</button>
                <button type="button" class="btn btn-primary" data-bind="click:submitOrder">Заказать</button>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div><!-- /.modal -->


     <!-- ko if: total -->
<footer class="footerFixed">
    <div>
        <h3 class="order_container_header">Total:
        <span id="order" style="color:#ffc937;">
             <b data-bind="text:total"></b> грн
        </span>
            <button class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal">Ваш заказ</button>
        </h3>
    </div>
</footer>
<!-- /ko-->
            </section>

        </main>

