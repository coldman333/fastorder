        <header class="container">
            <section class="row">
                <h1>
                    "Fastorder" <small>automatic ordering tool</small>
                </h1>
            </section>
        </header>
        <main class="container">
            <section class="row">
                <div class="col-xs-4">

                    <div  class="list-group" data-bind="foreach: cafes">
                            <a class="list-group-item"  data-bind="text:name, attr: { href: url }, click: $parent.carrentCafe "> </a>
                    </div>

                </div>

                <div class="col-xs-8">

                    <div  data-bind="with : carrentCafe">

                        <h1 data-bind="text:name"></h1>
                        <div data-bind="html : description"></div>
                        <span class="glyphicon glyphicon-tree-conifer"></span> <b data-bind="text :house"></b>
                        <br/>
                        <span class="glyphicon glyphicon-road"></span> <b data-bind="text : metro"></b>

                    </div>

                </div>
            </section>
        </main>
        <footer class="container">
            <section class="row">
                This is footer
            </section>
        </footer>
