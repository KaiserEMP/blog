<?php
/**
 * Created by PhpStorm.
 * User: Kaiser
 * Date: 10.09.14
 * Time: 13:37
 */
class tags extends Controller{
    function index()
    {
        $this->tags = get_all("SELECT tag_name, COUNT(post_id) AS count FROM post_tags NATURAL JOIN tag GROUP BY tag_id"
        );
    }
    function view(){
        $this->posts = get_all("SELECT * FROM post_tags NATURAL JOIN post NATURAL JOIN tag WHERE tag_name='{$this->params[0]}'");
    }
}