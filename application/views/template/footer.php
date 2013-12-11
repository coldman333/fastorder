        <script src="_/js/libs/jquery-1.10.1.min.js"></script>
        <script src="_/js/libs/bootstrap.min.js"></script>
        <script src="_/js/libs/knockout.min.js"></script>
        <script src="_/js/libs/sammy.min.js"></script>
        <script src="_/js/libs/q.js"></script>

        <? foreach ($custom_js_list AS $js_item) : ?>
            <script src="/_/js/<?=$js_item?>"></script>
        <? endforeach; ?>

    </body>
</html>