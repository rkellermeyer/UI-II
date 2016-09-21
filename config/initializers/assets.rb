# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path
# Rails.application.config.assets.paths << Emoji.images_path

# Precompile additional assets.
# application.js, application.css.scss, and all non-JS/CSS in app/assets folder are already added.
Rails.application.config.assets.precompile += %w(counterup.min.js
                                                custom.js
                                                flexibility.js
                                                headroom.min.js
                                                jquery.contact-form.js
                                                jquery.countdown.min.js
                                                jquery.event.move.js
                                                jquery.flexslider-min.js
                                                jquery.gmaps.min.js
                                                jquery.interactive_bg.js
                                                jquery.isotope.min.js
                                                jquery.jpanelmenu.js
                                                jquery.magnific-popup.min.js
                                                jquery.photogrid.js
                                                jquery.pricefilter.js
                                                jquery.royalslider.min.js
                                                jquery.stacktable.js
                                                jquery.sticky-kit.min.js
                                                jquery.themepunch.revolution.min.js
                                                jquery.themepunch.tools.min.js
                                                jquery.tooltips.min.js
                                                jquery.twentytwenty.js
                                                modernizr.custom.js
                                                owl.carousel.min.js
                                                puregrid.js
                                                switcher.js
                                                view.js
                                                waypoints.min.js
                                                extensions/revolution.extension.actions.min.js
                                                extensions/revolution.extension.carousel.min.js
                                                extensions/revolution.extension.kenburn.min.js
                                                extensions/revolution.extension.layeranimation.min.js
                                                extensions/revolution.extension.migration.min.js
                                                extensions/revolution.extension.navigation.min.js
                                                extensions/revolution.extension.parallax.min.js
                                                extensions/revolution.extension.slideanims.min.js
                                                extensions/revolution.extension.video.min copy.js
                                                extensions/revolution.extension.video.min.js
                                                bootstrap.css
                                                icons.css.scss
                                                revolutionslider.css
                                                style.css.scss
                                                colors/blue.css
                                                idyuh-take-1.mp4)

