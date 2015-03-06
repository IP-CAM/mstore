$(function() {
	App.run();
});

var App = {
	init: function() {
		this.panTop = $('.pan-top');
		this.menu = $('.pan-menu');
		this.submenu = $('.pan-submenu');
	},

	eventHandle: function() {
		var self = this;

		self.menu.on('click', '.menu-item', function(e) {
			var _currMenu = $(this),
				_menu = self.menu.find('.menu-item'),
				_panSubmenu = self.submenu,
				_submenu = _panSubmenu.find('.submenu'),
				_currSubmenu = _panSubmenu.find('#' + _currMenu.data('submenu'));

			self.menu.find('#curr-sub-menu').remove();
			if (_currMenu.find('i').length <= 0) {
				_menu.removeClass('open');
				_panSubmenu.hide();
				return;
			}
			e.preventDefault();
			if (_currMenu.hasClass('open')) {
				_menu.removeClass('open');			
				_panSubmenu.hide();				
			} else {
				_menu.removeClass('open');
				_currMenu.addClass('open');
				_panSubmenu.show();

				_submenu.hide();
				_currSubmenu.show();

				var currSubmenu = _panSubmenu.clone();
				currSubmenu.removeClass('hidden-xs').addClass('visible-xs');
				currSubmenu.attr('id', 'curr-sub-menu');
				currSubmenu.show();
				_currMenu.after(currSubmenu);
			}			
		});

		// handle scroll
		$(document).scroll(function() {
			if($(this).scrollTop() > 80) {
				self.panTop.addClass('pan-top-highlight');
			} else {
				self.panTop.removeClass('pan-top-highlight');
			}
		});

        // handle click on latest type
        $('.latest-control').on('click', 'span', function() {
            var span = $(this),
                control = $('.latest-control'),
                type = span.data('type');

            if (span.hasClass('active')) {
                return;
            }

            control.find('span').removeClass('active');
            span.addClass('active');

            // hide other type
            if (type == 'all') {
                $('#carousel-latest-product-all').removeClass('hide');
                $('#carousel-latest-product-shoes').addClass('hide');
                $('#carousel-latest-product-bag').addClass('hide');
            } else if (type == 'shoes') {
                $('#carousel-latest-product-shoes').removeClass('hide');
                $('#carousel-latest-product-all').addClass('hide');
                $('#carousel-latest-product-bag').addClass('hide');
            } else {
                $('#carousel-latest-product-bag').removeClass('hide');
                $('#carousel-latest-product-all').addClass('hide');
                $('#carousel-latest-product-shoes').addClass('hide');
            }
        });

        // handle click on feature type
        $('.feature-control').on('click', 'span', function() {
            var span = $(this),
                control = $('.feature-control'),
                type = span.data('type');

            if (span.hasClass('active')) {
                return;
            }

            control.find('span').removeClass('active');
            span.addClass('active');

            // hide other type
            $('#feature-product-all').find('.feature-item').each(function() {
                var currProduct = $(this),
                    currProductType = currProduct.data('type');

                if (type == 'all' || type == currProductType) {
                    currProduct.removeClass('hide');
                } else {
                    currProduct.addClass('hide');
                }
            });
        });
	},

	run: function() {
		this.init();
		this.eventHandle();
	}
};