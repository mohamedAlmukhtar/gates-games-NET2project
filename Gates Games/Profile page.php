<?php

    include 'init.php';
    include $tpl . 'header.php';
    include $tpl . 'nav.php';

 ?>

    <!-- Page Content -->
    <section class="py-5">
        <div class="container profile">

            <div class="row">
                <!--
                <div class="profile-header card-header col-lg-12 " style="background-color:white;">
                    <h5>User Profile Page</h5>
                </div>
                -->
                <div class="image-container col-lg-3">

                    <div class="col-xs-4">
                        <img src="images/img_avatar2.png" alt="">
                    </div>

                </div>
                <div class="profile-info-container col-lg-9">
                    <!--User Info -->
                    <div class="profile-info col-lg-12">

                        <table >

                            <tr>
                                <td width="30%"><strong>username: </strong></td>
                                <td>Myname</td>
                            </tr>

                            <tr>
                                <td width="30%"><strong>Email: </strong></td>
                                <td>Myname554@gmail.com</td>
                            </tr>

                            <tr>
                                <td width="30%"><strong>Bio:</strong></td>
                                <td>
                                    Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
                                    tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud
                                    exercitation ullamco laboris
                                </td>
                            </tr>
                            <tr>
                                <td width="30%">
                                    <strong>Signed up:</strong>
                                </td>
                                <td>
                                    17/03/2018
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <strong>Downloads:</strong>
                                </td>
                                <td>&nbsp;&nbsp;9</td>
                            </tr>
                            <tr>
                                <td>
                                    <strong>Reviews:</strong>
                                </td>
                                <td>34</td>
                            </tr>
                    </table>
                    </div>
                </div>
            </div>


        </div>
    </section>


<?php

    include $tpl . 'footer.php'

?>
