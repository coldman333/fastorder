        <script src="//ajax.googleapis.com/ajax/libs/jquery/1.10.1/jquery.min.js"></script>
        <script>window.jQuery || document.write('<script src="_/js/libs/jquery-1.10.1.min.js"><\/script>')</script>
        <script src="_/js/libs/bootstrap.min.js"></script>
        <script src="_/js/libs/knockout.min.js"></script>
        <script src="_/js/libs/sammy.min.js"></script>
        <script src="_/js/libs/q.js"></script>

        <? foreach ($custom_js_list AS $js_item) : ?>
            <script src="/_/js/<?=$js_item?>"></script>
        <? endforeach; ?>
        <script>
            var _gaq=[['_setAccount','UA-XXXXX-X'],['_trackPageview']];
            (function(d,t){var g=d.createElement(t),s=d.getElementsByTagName(t)[0];
                g.src='//www.google-analytics.com/ga.js';
                s.parentNode.insertBefore(g,s)}(document,'script'));
        </script>
    </body>
</html>