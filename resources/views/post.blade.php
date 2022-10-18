<h1>List post</h1>
<table>
    <tr>
        <td>ID</td>
        <td>title</td>
        <td>description</td>
        <td>body</td>
        <td>cate_id</td>
        <td>author_id</td>
    </tr>
    @foreach ($posts as $post)
    <tr>
        <td>{{ $post->id }}</td>
        <td>{{ $post->title }}</td>
        <td>{{ $post->description }}</td>
        <td>{{ $post->body }}</td>
        <td>{{ $post->cate_id }}</td>
        <td>{{ $post->author_id }}</td>
    </tr>
    @endforeach
</table>
<style>
    table, th, td {
        border: 1px solid black;
        border-collapse: collapse;
    }
</style>
