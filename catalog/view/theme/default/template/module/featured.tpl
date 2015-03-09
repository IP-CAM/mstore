<div class="container pan-feature">
    <div class="border-top"></div>
    <div class="feature-title">
        <h3><?php echo $heading_title; ?></h3>
    </div>
    <div class="feature-control">
        <span data-type="all" class="active">Tất cả</span>
        <span data-type="shoes">Giầy</span>
        <span data-type="bag">Túi xách</span>
    </div>
    <div class="row" id="feature-product-all">
        <?php foreach ($products as $product) { ?>
            <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12 feature-item" data-type="<?php echo $product['type']; ?>">
                <div class="product-thumb transition">
                    <div class="image"><a href="<?php echo $product['href']; ?>"><img
                                src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>"
                                title="<?php echo $product['name']; ?>" class="img-responsive"/></a></div>
                    <div class="caption">
                        <h4><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></h4>
                    </div>
                    <div class="button-group">
                        <button type="button" disabled="disabled">
                            <?php if (!$product['special']) : ?>
                                <?php echo $product['price']; ?>
                            <?php else : ?>
                                <?php echo $product['special']; ?>
                            <?php endif; ?>
                        </button>
                        <button type="button" onclick="cart.add('<?php echo $product['product_id']; ?>');" class="btn-cart"></button>
                    </div>
                </div>
            </div>
        <?php } ?>
    </div>
</div>
