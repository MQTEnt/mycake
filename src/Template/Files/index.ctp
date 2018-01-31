<h1>Uploaded Files</h1>
<div class="content">
    <p><a href="#"><?= $this->Html->link('Upload file', ['action' => 'upload']) ?></a></p>
    <!-- Table -->
    <table class="table">
        <tr>
            <th width="5%">#</th>
            <th width="20%">File</th>
            <th width="12%">Upload Date</th>
        </tr>
        <?php if($filesRowNum > 0):$count = 0; foreach($files as $file): $count++;?>
        <tr>
            <td><?php echo $count; ?></td>
            <td><?php echo $file->path.$file->name ?></td>
            <!-- <td><embed src="<?= $file->path.$file->name ?>" width="220px" height="150px"></td> -->
            <td><?php echo $file->created; ?></td>
        </tr>
        <?php endforeach; else:?>
        <tr><td colspan="3">No file(s) found......</td>
        <?php endif; ?>
    </table>
</div>