<? foreach ($posts as $post): ?>
    <div class="span8">
        <h1><a href="<?= BASE_URL ?>posts/view/<?= $post['post_id'] ?>"><?= $post['post_subject'] ?></a></h1>

        <p><?= $post['post_text'] ?></p>

        <div>
            <span class="badge badge-success"><?= $post['post_created'] ?></span>

            <div class="pull-right"><span class="label">alice</span> <span class="label">story</span> <span
                    class="label">blog</span> <span class="label">personal</span></div>
        </div>
        <? foreach ($tags[$post['post_id']] as $tag): ?>
            <a href="tags/view/<?=$tag?>">
                <span class="label" style="background-color: #5bc0de"><?= $tag ?></span>
            </a> <? endforeach ?>

    </div>
<? endforeach ?>

<hr/>
<form method="post">
    <input name="data[post_text]" type="text"placeholder="pealkiri"/><br/><br/>
    <textarea name="data[post_text]" id="" cols="30" rows="10" placeholder="Sisu"></textarea><br/>
    <button class="btn  btn-default">Sisesta</button>
</form>