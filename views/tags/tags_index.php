<h1>Tags</h1>
<?foreach ($tags as $tag):?>
    <ul class="list-group">
        <li class="list-group-item">
            <a href="tags/view/<?= $tag['tag_name'] ?>"><?= $tag['tag_name'] ?></a><span class="badge"><?= $tag['count'] ?></span>
        </li>
    </ul>
<?endforeach?>
