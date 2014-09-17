<?php

class login extends controller
{
    public $requires_auth = true;

    function index()
    {
        header("location:" . BASE_URL);
    }
}