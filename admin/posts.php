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

            <?php 
                    
                    if(isset($_GET['source'])) {


                    $source = $_GET['source'];

                    } else {

                        $source = '';
                    }
                    
                    switch($source) {


                        case'add_post';
                        require_once "includes/add_post.php";
                        break;

                        case'edit_post';
                        require_once "includes/edit_post.php";
                        break;

                        default:
                        require_once "includes/view_all_posts.php";
                        break;
                    }

                    

            ?>
                    </div>
                </div>
                <!-- /.row -->

            </div>
            <!-- /.container-fluid -->

        </div>

        <!-- /#page-wrapper -->

        <?php require_once "includes/footer.php" ?>