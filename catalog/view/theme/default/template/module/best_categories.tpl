<div class="container">
    <div id="pan-hot-category" class="row">
        <div class="col-md-3 category-1">
            <div class="category-thumb">
                <?php if (!empty($category_bag)) : ?>
                    <a href="">
                        <img src="<?php echo $category_bag['image']; ?>" title="<?php echo $category_bag['name']; ?>" alt="<?php echo $category_bag['name']; ?>">
                    </a>
                <?php endif; ?>
            </div>
        </div>
        <div class="col-md-6">
            <div class="row category-2">
                <div class="category-thumb">
                    <?php if (!empty($category_men)) : ?>
                        <a href="<?php echo $category_men['href']; ?>">
                            <img src="<?php echo $category_men['image']; ?>" title="<?php echo $category_men['name']; ?>" alt="<?php echo $category_men['name']; ?>">
                        </a>
                    <?php endif; ?>
                </div>
            </div>
            <div class="row category-3">
                <div class="category-thumb">
                    <?php if (!empty($category_women)) : ?>
                        <a href="<?php echo $category_women['href']; ?>">
                            <img src="<?php echo $category_women['image']; ?>" title="<?php echo $category_women['name']; ?>" alt="<?php echo $category_women['name']; ?>">
                        </a>
                    <?php endif; ?>
                </div>
            </div>
        </div>
        <div class="col-md-3 category-4">
            <div class="category-thumb">
                <?php if (!empty($category_other)) : ?>
                    <a href="<?php echo $category_other['href']; ?>">
                        <img src="<?php echo $category_other['image']; ?>" title="<?php echo $category_other['name']; ?>" alt="<?php echo $category_other['name']; ?>">
                    </a>
                <?php endif; ?>
            </div>
        </div>
    </div>
</div>

