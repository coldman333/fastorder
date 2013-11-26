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
                            <a class="list-group-item"  data-bind="text:name, attr: { href: url()}, click: $parent.goToCafe "> </a>
                    </div>

                </div>

                <div class="col-xs-8">

                    <div >

                            <h1 data-bind="text: carrentCafe.name"></h1>
                            <div data-bind="text : carrentCafe.description"></div>
                            <b data-bind="text : carrentCafe.house"></b>
                            <br/>
                            <b data-bind="text : carrentCafe.metro"></b>

                    </div>

                </div>
            </section>
        </main>
        <footer class="container">
            <section class="row">
                This is footer
            </section>
        </footer>
