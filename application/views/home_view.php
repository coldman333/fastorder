
  
        <div id="loader" class="loader"></div>
        <main>
            <section id="cafeCont" class="container" style="display: none">


                <div class="dhx_view dhx_layout_clean"  style="vertical-align: top; float: left; border-width: 0px; margin-left: 0px; width: 275px;">

                          <div class="dhx_view dhx_dataview default"  style="border-width: 0px; margin-top: 0px; width: 275px; ">
                              <div class="dhx_scroll_cont" style="-webkit-transform: translate3d(0px, 0px, 0); -webkit-transition: 0ms; transition: 0ms;">

                                </div>
                            </div>                    
                </div>

                <div class="dhx_view dhx_pagelist content"  style="border-width: 0px; float: left; margin-left: 0px; width: 750px; ">            
                                    <div class="dhx_scroll_cont"  data-bind="foreach: cafes" style="-webkit-transform: translate3d(0px, 0px, 0); -webkit-transition: 0ms; transition: 0ms;">

                                            <div class="dhx_list_item dhx_list_content_item" style="width:749px; padding:0px; margin:0px; overflow:hidden;"  data-bind=" click:  $root.goToCafe, attr: { href: url }" >
                                                  
                                                    <div class="landscape_img" style="background:url(/_/img/cofee.jpg) no-repeat scroll 50% 20% transparent;">
                                                      
                                                    </div>
                                                    <div class="landscape_body">
                                                        <h3 class="landscape_body_header" data-bind="text: name"></h3>
                                                        <p class="landscape_body_description"  style="height:100px; overflow:hidden;" data-bind="html: description"></p>
                                                        <span class="glyphicon glyphicon-tree-conifer"></span> <b data-bind="text :house"></b><br/>
                                                        <span class="glyphicon glyphicon-road"></span> <b data-bind="text : metro"></b>
                                                    </div>
                                                     <div class="landscape_buy">
                                                        <div class="buy_outside">
                                                         <div class="buy_inside"> <b data-bind="text:position " style="font-size: 20px; "></b> км</div>
                                                           
                                                        </div>
                                                    </div>

                                            </div>


                                     </div>
                  </div>
            </section>
<!-- ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////// -->
            <section  id="dishCont" class="container" style="display: none">
                 <div class="dhx_view dhx_layout_clean"  style="vertical-align: top; float: left; border-width: 0px; margin-left: 0px; width: 275px;">

                          <div class="dhx_view dhx_dataview default"  style="border-width: 0px; margin-top: 0px; width: 275px; ">
                              <div class="dhx_scroll_cont" touch_scroll="y" style="-webkit-transform: translate3d(0px, 0px, 0); -webkit-transition: 0ms; transition: 0ms;">
                                   <div dhx_f_id="1" class="dhx_dataview_item dhx_dataview_default_item" style="width:255px; height:120px; padding:px; margin:5px; float:left; overflow:hidden;">
                                        <div class="menu_img" style="background:url(/_/img/pasta.jpg) no-repeat scroll 50% 50% transparent;">&nbsp;</div>
                                        <div class="menu_content"><h3 class="menu_content_header" style="">Pasta</h3><p class="menu_content_description">Lorem ipsum dolor sit amet, consectetum adipicing elit.</p></div>
                                    </div>
                                    <div dhx_f_id="2" class="dhx_dataview_item dhx_dataview_default_item" style="width:255px; height:120px; padding:px; margin:5px; float:left; overflow:hidden;">
                                        <div class="menu_img" style="background:url(/_/img/pizza.jpg) no-repeat scroll 50% 50% transparent;">&nbsp;</div>
                                        <div class="menu_content"><h3 class="menu_content_header" style="">Pizza</h3><p class="menu_content_description">Lorem ipsum dolor sit amet, consectetum adipicing elit.</p></div>
                                    </div>
                                    <div dhx_f_id="3" class="dhx_dataview_item dhx_dataview_default_item" style="width:255px; height:120px; padding:px; margin:5px; float:left; overflow:hidden;">
                                        <div class="menu_img" style="background:url(/_/img/drinks.jpg) no-repeat scroll 50% 50% transparent;">&nbsp;</div>
                                        <div class="menu_content"><h3 class="menu_content_header" style="">Drinks</h3><p class="menu_content_description">Lorem ipsum dolor sit amet, consectetum adipicing elit.</p></div>
                                    </div>
                                    <div dhx_f_id="4" class="dhx_dataview_item dhx_dataview_default_item" style="width:255px; height:120px; padding:px; margin:5px; float:left; overflow:hidden;">
                                        <div class="menu_img" style="background:url(/_/img/cofee.jpg) no-repeat scroll 50% 50% transparent;">&nbsp;</div>
                                        <div class="menu_content"><h3 class="menu_content_header" style="">Cofee</h3><p class="menu_content_description">Lorem ipsum dolor sit amet, consectetum adipicing elit.</p></div>
                                    </div>
                                </div>
                            </div>
                            <div class="dhx_view order_row" view_id="order" style="border-width: 0px; margin-top: 0px; width: 275px; height: 120px;">
                                <h3 class="order_container_header">Total: <span id="order" style="color:#ffc937;">0$</span></h3>
                                <a href="javascript:void(0)" class="order_container_button" onclick="saveOrder();">Order</a>
                            </div>
                </div>

                <div class="dhx_view dhx_pagelist content" view_id="submenu" style="border-width: 0px; float: left; margin-left: 0px; width: 750px; ">
                   
                    <div class="dhx_scroll_cont"  data-bind="foreach: dishes" style="-webkit-transform: translate3d(0px, 0px, 0); -webkit-transition: 0ms; transition: 0ms;">

                            <div dhx_l_id="14" class="dhx_list_item dhx_list_content_item" style="width:749px; height:150px; padding:0px; margin:0px; overflow:hidden;">
                                    <div class="landscape_img" style="background:url(/_/img/dish1.png) no-repeat scroll 50% 20% transparent;">
                                       <h3 class="landscape_price" ><b data-bind="text:price "></b></h3>
                                    </div>
                                    <div class="landscape_body">
                                        <h3 class="landscape_body_header" data-bind="text: name"></h3>
                                        <p class="landscape_body_description">Lorem ipsum dolor sit amet, consectetum adipicing elit. Sed eleifend, augue sed bibendum elementum, totor nulla ullamcorper nibh, ut feugiat neque tellus sed massa.</p>
                                    </div>
                                    <div class="landscape_buy">
                                        <div class="buy_outside">
                                            <div class="buy_inside">+</div>
                                        </div>
                                    </div>
                            </div>


                     </div>
               </div>
             </div>

             
            </section>

        </main>

