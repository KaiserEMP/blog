<?php

class posts extends Controller{

    function index(){
        $this->posts = get_all("SELECT * FROM post");

        $_tags = get_all("SELECT * FROM post_tags NATURAL JOIN tag");
        foreach ($_tags as $tag) {
    $this->tags[$tag['post_id']][] = $tag['tag_name'];
}

    }

    function index_ajax(){
        echo "\$_POST:<br>";
        var_dump($_POST);
    }

    function index_post(){
        echo "\$_POST:<br>";
        var_dump($_POST);
    }
    function view(){
        $post_id = $this->params[0];
        $this->post = get_first("SELECT * FROM post NATURAL JOIN user WHERE post_id=('$post_id'");
        $this->tags = get_all("SELECT * FROM post_tags NATURAL JOIN tag WHERE post_id='$post_id'");
    }
    <?foreach ($tags as $tag):?><a href="tags/view/<?=$tag[‘tag_name’]?>"><span class="label label-info"><?=$tag['tag_name']?></span></a> <endforeach?>
}