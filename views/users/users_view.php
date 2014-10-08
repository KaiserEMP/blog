<h1>User '<?=$user['username']?></h1>
<table class="table table-bordered">
    <tr>
        <th>Username</th>
        <td><input type="text" value="<?= $user['username'] ?>" />/td>
    </tr>
    <tr>
        <th>Username</th>
        <td></td>
    </tr>
    <tr>
        <th>Username</th>
        <td></td>
    </tr>
    <tr>
        <th>Username</th>
        <td></td>
    </tr>
</table>
<form action="users/edit<?= $user['user_id']?>">
<button class="button btn-info">
    Edit <?= $user ['username'] ?>

    </button>
</form>