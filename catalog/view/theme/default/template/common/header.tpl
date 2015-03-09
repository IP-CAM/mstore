<!DOCTYPE html>
<!--[if IE]><![endif]-->
<!--[if IE 8 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie8"><![endif]-->
<!--[if IE 9 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie9"><![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">
<!--<![endif]-->
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<title><?php echo $title; ?></title>
<base href="<?php echo $base; ?>" />
<?php if ($description) { ?>
<meta name="description" content="<?php echo $description; ?>" />
<?php } ?>
<?php if ($keywords) { ?>
<meta name="keywords" content= "<?php echo $keywords; ?>" />
<?php } ?>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<?php if ($icon) { ?>
<link href="<?php echo $icon; ?>" rel="icon" />
<?php } ?>
<?php foreach ($links as $link) { ?>
<link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
<?php } ?>

<link href="catalog/view/javascript/bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen" />
<link href="catalog/view/javascript/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
<!-- <link href="//fonts.googleapis.com/css?family=Open+Sans:400,400i,300,700" rel="stylesheet" type="text/css" /> -->
<link href="catalog/view/theme/default/stylesheet/stylesheet.css" rel="stylesheet">
<link href="catalog/view/theme/default/stylesheet/common.css" rel="stylesheet">
<?php foreach ($styles as $style) { ?>
<link href="<?php echo $style['href']; ?>" type="text/css" rel="<?php echo $style['rel']; ?>" media="<?php echo $style['media']; ?>" />
<?php } ?>

<script src="catalog/view/javascript/jquery/jquery-2.1.1.min.js" type="text/javascript"></script>
<script src="catalog/view/javascript/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<script src="catalog/view/javascript/common.js" type="text/javascript"></script>
<script src="catalog/view/javascript/main.js" type="text/javascript"></script>
<?php foreach ($scripts as $script) { ?>
<script src="<?php echo $script; ?>" type="text/javascript"></script>
<?php } ?>

<?php echo $google_analytics; ?>
</head>
<body class="<?php echo $class; ?>">
<div class="pan-top">
    <div class="pan-logo">
        <?php if ($logo) { ?>
            <a href="<?php echo $home; ?>"><img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" class="img-responsive" /></a>
        <?php } else { ?>
            <h1><a href="<?php echo $home; ?>"><?php echo $name; ?></a></h1>
        <?php } ?>
    </div>

    <?php if ($categories) : ?>        
        <div class="pan-menu">
            <div class="visible-xs pan-search">
                <div>
                    <i class="fa fa-bars btn-menu-xs"></i>
                    <i class="fa fa-search">
                        <div></div>
                    </i>
                    <input type="text" placeholder="Search">
                    <ul>
                        <li class="dropdown">
                            <a href="#" title="Category" class="dropdown-toggle" data-toggle="dropdown">
                                <span class="hidden-1150">All</span>
                                <span class="caret"></span>
                            </a>
                            <ul class="dropdown-menu dropdown-menu-right">
                                <li><a href="#">All</a></li>
                                <li><a href="#">Women</a></li>
                                <li><a href="#">Men</a></li>
                                <li><a href="#">Bag</a></li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </div>
            
            <ul class="menu-xs hidden-xs">
                <li class="menu-item"><a href="#">Home</a></li>
                <?php foreach ($categories as $key => $category) : ?>
                    <li class="menu-item" data-submenu="submenu-<?php echo $key; ?>">
                        <?php if ($category['children']) : ?>
                            <i class="fa fa-caret-down"></i>
                        <?php endif; ?>
                        <a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a>
                    </li>                    
                <?php endforeach; ?>
                <li class="menu-item"><a href="#">Contact</a></li>
            </ul>            
        </div>               
    <?php  endif; ?>

    <div class="pan-control">
        <div class="pan-user">
            <ul>
                <li class="dropdown">
                    <a href="http://localhost/mstore/index.php?route=account/account" title="My Account" class="dropdown-toggle" data-toggle="dropdown">
                        <i class="fa fa-user"></i>
                        <span class="hidden-xs">My Account</span>
                        <span class="caret"></span>
                    </a>
                    <ul class="dropdown-menu dropdown-menu-right">
                        <li><a href="#">Login</a></li>
                        <li><a href="#">Register</a></li>
                    </ul>
                </li>
            </ul>
        </div>
        <div class="pan-search">
            <button type="button" class="btn-shopping-cart"><i class="fa fa-shopping-cart"></i><span>99</span></button>

            <div type="button" class="visible-1024 pull-down hidden-xs">
                <i class="fa fa-search"></i>                
                <ul class="pull-down">
                    <li>
                        <div class="sub-search">
                            <i class="fa fa-search">
                                <div></div>
                            </i>
                            <input type="text" placeholder="Search">
                        </div>
                    </li>
                    <li>
                        <label><input type="radio" name="category"> All</label>
                    </li>
                    <li>
                        <label><input type="radio" name="category"> Women</label>
                    </li>
                    <li>
                        <label><input type="radio" name="category"> Men</label>
                    </li>
                    <li>
                        <label><input type="radio" name="category"> Bag</label>
                    </li>
                </ul>
            </div>
            
            <div class="hidden-1024 hidden-xs">
                <i class="fa fa-search">
                    <div></div>
                </i>
                <input type="text" placeholder="Search">
                <ul>
                    <li class="dropdown">
                        <a href="#" title="Category" class="dropdown-toggle" data-toggle="dropdown">
                            <span class="hidden-1150">All</span>
                            <span class="caret"></span>
                        </a>
                        <ul class="dropdown-menu dropdown-menu-right">
                            <li><a href="#">All</a></li>
                            <li><a href="#">Women</a></li>
                            <li><a href="#">Men</a></li>
                            <li><a href="#">Bag</a></li>
                        </ul>
                    </li>
                </ul>
            </div>
        </div>
    </div>

    <div class="pan-submenu hidden-xs">
        <?php $pattern = '/&lt;(\/*[a-z]+)&gt;/'; ?>
        <?php if ($categories) : ?>
            <?php foreach ($categories as $key => $category) : ?>
                <div id="submenu-<?php echo $key; ?>" class="submenu">
                    <div class="submenu-menu">
                        <h3 class="hidden-xs"><?php echo preg_replace($pattern, '', $category['description']); ?></h3>
                        <ul>
                            <?php foreach(array_chunk($category['children'], ceil(count($category['children']) / $category['column'])) as $children): ?>
                                <?php foreach ($children as $child) : ?>
                                    <li><a href="<?php echo $child['href']; ?>"><?php echo $child['name']; ?></a></li>
                                <?php endforeach; ?>                                
                            <?php endforeach; ?>
                        </ul>
                    </div>
                    <?php if (count($category['best_product']) > 0) : ?>
                        <div class="submenu-item-list">
                            <h3 class="hidden-xs">Sản Phẩm Bán Chạy</h3>
                            <div class="submenu-content">
                                <?php foreach ($category['best_product'] as $key => $bestProduct) : ?>
                                    <div class="submenu-item <?php echo ($key > 0 ? 'hidden-xs' : ''); ?>">
                                        <a href="<?php echo $bestProduct['href']; ?>">
                                            <img src="<?php echo $bestProduct['image']; ?>">
                                            <h4><?php echo $bestProduct['name']; ?></h4>
                                            <span><?php echo $bestProduct['price']; ?></span>
                                        </a>
                                    </div>
                                <?php endforeach; ?>
                            </div>
                        </div>
                    <?php endif; ?>
                </div>
            <?php endforeach; ?>
        <?php endif; ?>        
        <div id="submenu-2" class="submenu">2</div>
        <div id="submenu-3" class="submenu">3</div>
    </div>
</div>

