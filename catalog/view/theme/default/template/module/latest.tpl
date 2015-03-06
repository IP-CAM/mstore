<div class="container pan-latest">
    <div class="border-top"></div>
    <div class="latest-title">
        <h3><?php echo $heading_title; ?></h3>
    </div>
    <div class="latest-control">
        <span data-type="all" class="active">Tất cả</span>
        <span data-type="shoes">Giầy</span>
        <span data-type="bag">Túi xách</span>
    </div>
    <div id="carousel-latest-product-all" class="owl-carousel">
        <?php foreach ($products as $product) { ?>
            <div class="item">
                <div class="product-thumb transition">
                    <div class="image"><a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-responsive" /></a></div>
                    <div class="caption">
                        <h4><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></h4>
                        <p><?php echo $product['description']; ?></p>
                        <?php if ($product['rating']) { ?>
                            <div class="rating">
                                <?php for ($i = 1; $i <= 5; $i++) { ?>
                                    <?php if ($product['rating'] < $i) { ?>
                                        <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>
                                    <?php } else { ?>
                                        <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
                                    <?php } ?>
                                <?php } ?>
                            </div>
                        <?php } ?>
                        <?php if ($product['price']) { ?>
                            <p class="price">
                                <?php if ($product['special']) { ?>
                                    <span class="price-old"><?php echo $product['price']; ?></span>
                                <?php } ?>
                            </p>
                        <?php } ?>
                    </div>
                    <div class="button-group">
                        <button type="button" disabled="disabled">
                            <?php if (!$product['special']) : ?>
                                <?php echo $product['price']; ?>
                            <?php else : ?>
                                <?php echo $product['special']; ?>
                            <?php endif; ?>
                        </button>
                        <button type="button" onclick="cart.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-shopping-cart"></i> <span class="hidden-xs hidden-sm hidden-md"><?php echo $button_cart; ?></span></button>
                    </div>
                </div>
            </div>
        <?php } ?>
    </div>

    <div id="carousel-latest-product-shoes" class="owl-carousel hide">
        <?php foreach ($products as $product) { ?>
            <?php if ($product['type'] == 'shoes') { ?>
                <div class="item">
                    <div class="product-thumb transition">
                        <div class="image"><a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-responsive" /></a></div>
                        <div class="caption">
                            <h4><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></h4>
                            <p><?php echo $product['description']; ?></p>
                            <?php if ($product['rating']) { ?>
                                <div class="rating">
                                    <?php for ($i = 1; $i <= 5; $i++) { ?>
                                        <?php if ($product['rating'] < $i) { ?>
                                            <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>
                                        <?php } else { ?>
                                            <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
                                        <?php } ?>
                                    <?php } ?>
                                </div>
                            <?php } ?>
                            <?php if ($product['price']) { ?>
                                <p class="price">
                                    <?php if ($product['special']) { ?>
                                        <span class="price-old"><?php echo $product['price']; ?></span>
                                    <?php } ?>
                                </p>
                            <?php } ?>
                        </div>
                        <div class="button-group">
                            <button type="button" disabled="disabled">
                                <?php if (!$product['special']) : ?>
                                    <?php echo $product['price']; ?>
                                <?php else : ?>
                                    <?php echo $product['special']; ?>
                                <?php endif; ?>
                            </button>
                            <button type="button" onclick="cart.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-shopping-cart"></i> <span class="hidden-xs hidden-sm hidden-md"><?php echo $button_cart; ?></span></button>
                        </div>
                    </div>
                </div>
            <?php } ?>
        <?php } ?>
    </div>

    <div id="carousel-latest-product-bag" class="owl-carousel hide">
        <?php foreach ($products as $product) { ?>
            <?php if ($product['type'] == 'bag') { ?>
                <div class="item">
                    <div class="product-thumb transition">
                        <div class="image"><a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-responsive" /></a></div>
                        <div class="caption">
                            <h4><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></h4>
                            <p><?php echo $product['description']; ?></p>
                            <?php if ($product['rating']) { ?>
                                <div class="rating">
                                    <?php for ($i = 1; $i <= 5; $i++) { ?>
                                        <?php if ($product['rating'] < $i) { ?>
                                            <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>
                                        <?php } else { ?>
                                            <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
                                        <?php } ?>
                                    <?php } ?>
                                </div>
                            <?php } ?>
                            <?php if ($product['price']) { ?>
                                <p class="price">
                                    <?php if ($product['special']) { ?>
                                        <span class="price-old"><?php echo $product['price']; ?></span>
                                    <?php } ?>
                                </p>
                            <?php } ?>
                        </div>
                        <div class="button-group">
                            <button type="button" disabled="disabled">
                                <?php if (!$product['special']) : ?>
                                    <?php echo $product['price']; ?>
                                <?php else : ?>
                                    <?php echo $product['special']; ?>
                                <?php endif; ?>
                            </button>
                            <button type="button" onclick="cart.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-shopping-cart"></i> <span class="hidden-xs hidden-sm hidden-md"><?php echo $button_cart; ?></span></button>
                        </div>
                    </div>
                </div>
            <?php } ?>
        <?php } ?>
    </div>
</div>

<script type="text/javascript"><!--
    $('#carousel-latest-product-all').owlCarousel({
        items: 4,
        autoPlay: 5000,
        navigation: true,
        navigationText: ['<i class="fa fa-chevron-left fa-5x"></i>', '<i class="fa fa-chevron-right fa-5x"></i>'],
        pagination: true
    });
    $('#carousel-latest-product-shoes').owlCarousel({
        items: 4,
        autoPlay: 5000,
        navigation: true,
        navigationText: ['<i class="fa fa-chevron-left fa-5x"></i>', '<i class="fa fa-chevron-right fa-5x"></i>'],
        pagination: true
    });
    $('#carousel-latest-product-bag').owlCarousel({
        items: 4,
        autoPlay: 5000,
        navigation: true,
        navigationText: ['<i class="fa fa-chevron-left fa-5x"></i>', '<i class="fa fa-chevron-right fa-5x"></i>'],
        pagination: true
    });
--></script>