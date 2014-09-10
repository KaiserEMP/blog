<div class="span8">
    <?= $post['post_subject'] ?>
    <?= $post['post_text'] ?>
    <div>
        <span class="badge badge-success">Posted 2012-08-02 20:47:04</span>

        <div class="pull-right">

            <? foreach ($tags as $tag): ?>
                <a href="tags/view/<?= $tag['tag_name'] ?>">
                <span class="label label-info">
                    <?= $tag['tag_name'] ?></span>
                </a>
            <? endforeach ?>

            <span class="label">alice</span>
            <span class="label">story</span>
            <span class="label">blog</span>
            <span
                class="label">personal</span></div>
    </div>

</div>
