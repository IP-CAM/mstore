
<div class="container pan-horizontal-banner">
    <div class="border-top"></div>
    <?php if ($banner['link']) { ?>
        <a href="<?php echo $banner['link']; ?>"><img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" class="img-responsive horizontal-banner" /></a>
    <?php } else { ?>
        <img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" class="img-responsive horizontal-banner" />
    <?php } ?>
</div>

