<form action="" method="post">
                        <div class="form-group">
                            <label for="cat_title">Edit Category</label>

<?php

if(isset($GET['edit'])) {

$cat_id = $GET['edit'];



        $query = "SELECT * FROM categories WHERE cat_id = $cat_id ";
        $select_categories_id = mysqli_query($connection, $query);


        while($row = mysqli_fetch_assoc($select_categories_id)){
        $cat_id = $row['cat_id'];
        $cat_title = $row['cat_title'];
        
        

        
        ?>
<input value="<?php if(isset($title)){echo $title;}  ?>" type="text" class="form-control" name="cat_title">

 <?php  } } ?>



 <?php // update query

if(isset($_POST['update_category'])) {

    $cat_title = $_POST['cat_title'];
    $query = "UPDATE categories SET cat_title = '{$cat_title}' WHERE cat_id = {$cat_id}";
    $update_query = mysqli_query($connection,$query);
    header("Location: categories.php");

    if(!$update_query) {

        die("QUERY FAILED" . mysqli_error($connection));
    }
}



?>



                            <input type="text" class="form-control" name="cat_title">
                        </div>
                        <div class="form-group">

                            <input type="submit" class="btn btn-primary" name="update_category" value="Update Category">
                        </div>

                        </div>
                            </form>