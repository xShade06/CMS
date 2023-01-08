<?php require_once "includes/header.php" ?>

    <div id="wrapper">


        <!-- Navigation -->
 
        <?php require_once "includes/navigation.php" ?>




        <div id="page-wrapper">

            <div class="container-fluid">

                <!-- Page Heading -->
                <div class="row">
                    <div class="col-lg-12">



                        <h1 class="page-header">
                            Welcome to admin
                            <small>Lenox</small>
                        </h1>
                        
                        <div class="col-xs-6">

<?php insert_categories(); ?>

                        <form action="" method="post">
                        <div class="form-group">
                            <label for="cat_title">Add Category</label>
                            <input type="text" class="form-control" name="cat_title">
                        </div>
                        <div class="form-group">

                            <input type="submit" class="btn btn-primary" name="submit" value="Add Category">
                        </div>

                        </div>
                            </form>



                            <!-- edit category -->

                            <?php 
                            
                            if(isset($_GET['edit'])) {

                                $cat_id = $_GET['edit'];

                                require_once "includes/edit_category.php";

                            } 
                            
                            ?>

    
                            
                            <!-- Add category form -->

                        <div class="col-xs-6">
                        
                        <table class="table table-bordered table-hover">
                            <thead>
                                <tr>
                                    <th>ID</th>
                                    <th>Category Title</th>
                                </tr>
                            </thead>
                            <tbody>

<?php  // Find all categories

findAllCategories()

?>

<?php //Delete category

deleteCategories()

?>

                            </tbody>
                        </table>


                        </div>

                    </div>
                </div>
                <!-- /.row -->

            </div>
            <!-- /.container-fluid -->

        </div>
        <!-- /#page-wrapper -->

        <?php require_once "includes/footer.php" ?>