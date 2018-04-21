<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>



 
<div class="section no-pad-bot" id="index-banner">
    <div class="container">

        <div class="row">
            <form class="col s12 m6" action="signup" method="post" style="margin: 0 auto; float: none; margin-top: 100px;">

                <input autocomplete="off" type="hidden" name="authenticity_token" value="<?php echo helper::getAuthenticityToken(); ?>">

                <div class="card">
                    <div class="card-content black-text">
                        <span class="card-title"><?php echo $LANG['page-signup']; ?></span>
                        <p class="red-text" style="margin-top: 10px; margin-bottom: 10px; <?php if (!$error) echo "display: none"; ?>">
                           
                        </p>

                      
                            <div class="row">
                                <div class="input-field col s12">
                                    <ul class="collection">
                                        <li class="collection-item avatar">

                                          

                                            <!--                                                <img src="images/yuna.jpg" alt="" class="circle">-->
                                            <span class="title"><a target="_blank" href="https://www.facebook.com/app_scoped_user_id/<?php echo $_SESSION['oauth_id']; ?>"><?php echo $_SESSION['oauth_name']; ?></a></span>
                                            <p><?php echo $LANG['label-authorization-with-facebook']; ?>
                                                <br>
                                                <a href="/facebook"><?php echo $LANG['action-back-to-default-signup']; ?></a>
                                            </p>
                                        </li>
                                    </ul>
                                </div>
                            </div>

                            <?php

                        } else {

                            if (FACEBOOK_AUTHORIZATION) {

                                ?>

                                <div class="row">
                                    <div class="input-field col s12">
                                        <a class="fb-icon-btn fb-btn-large btn-facebook" href="/facebook/signup">
                                        <span class="icon-container">
                                            <i class="icon icon-facebook"></i>
                                        </span>
                                            <?php echo $LANG['action-signup-with'] . " " . $LANG['label-facebook']; ?>
                                        </a>
                                    </div>
                                </div>

                                <?php
                            }
                        }

                        ?>

                        <div class="row">
                            <div class="input-field col s12">
                                <input id="username" type="text" class="validate valid" name="username" value="<?php echo $user_username; ?>">
                                <label for="username" class="active"><?php echo $LANG['label-username']; ?></label>
                            </div>
                        </div>
                        <div class="row">
                            <div class="input-field col s12">
                                <input id="fullname" type="text" class="validate valid" name="fullname" value="<?php echo $user_fullname; ?>">
                                <label for="fullname" class="active"><?php echo $LANG['label-fullname']; ?></label>
                            </div>
                        </div>
                        <div class="row">
                            <div class="input-field col s12">
                                <input id="password" type="password" class="validate valid" name="password" value="">
                                <label for="password" class="active"><?php echo $LANG['label-password']; ?></label>
                            </div>
                        </div>

                        <div class="row">
                            <div class="input-field col s12">
                                <input id="email" type="text" class="validate valid" name="email" value="<?php echo $user_email; ?>">
                                <label for="email" class="active"><?php echo $LANG['label-email']; ?></label>
                            </div>
                        </div>

                        <div class="row" style="margin-bottom: 0px">
                            <div class="col s12">
                                <label><?php echo $LANG['label-signup-confirm']; ?></label>
                                <a style="font-size: 0.8rem;" href="/terms"><?php echo $LANG['page-terms']; ?></a>
                            </div>
                        </div>
                    </div>
                    <div class="card-action">
                        <button class="waves-effect waves-light btn <?php echo SITE_THEME; ?>"><?php echo $LANG['action-signup']; ?></button>
                    </div>
                </div>
            </form>
        </div>

    </div>
</div>

<script type="text/javascript" src="js/materialize.min.js"></script>
<script src="js/init.js"></script>

</body>
</html>

