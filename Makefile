# Makefile for DokuWiki Template Uni Regensburg
#
# @author Hartmut Gluecker <hartgluecker@gmx.net>
# @contributor Alexander Bazo <alexanderbazo@googlemail.com>

DIST_VERSION=`cat VERSION`
DIST_PREFIX=uni-regensburg
DIST_NAME=$(DIST_PREFIX)-$(DIST_VERSION)

DOCS=README \
	 COPYING \
	 VERSION

CSS=ur_design.css \
	ur_layout.css \
	ur_media.css \
	ur_print.css \
	ur_rtl.css\
	design.css \
	layout.css \
	media.css \
	print.css \
	rtl.css

STYLE_INI=style.ini

PHP=detail.php \
	main.php \
	mediamanager.php \
	tpl_functions.php

HTML=footer.html \
	 left_sidebar.html

SCRIPT=script.js

IMAGES=images/bullet.gif \
	   images/button-apache.png \
	   images/button-as.gif \
	   images/button-bash.png \
	   images/button-cc.gif \
	   images/button-chimeric-de.png \
	   images/button-css.png \
	   images/button-debian.png \
	   images/button-donate.gif \
	   images/button-dw.png \
	   images/button-email.png \
	   images/button-firefox.png \
	   images/button-gimp.png \
	   images/button-gpg.gif \
	   images/button-icq.gif \
	   images/button-php.gif \
	   images/button-rss.png \
	   images/buttonshadow.png \
	   images/button-vim.png \
	   images/button-xhtml.png \
	   images/closed.gif \
	   images/favicon.ico \
	   images/inputshadow.png \
	   images/interwiki.png \
	   images/link_icon.gif \
	   images/mail_icon.gif \
	   images/open.gif \
	   images/tocdot2.gif \
	   images/tool-admin.png \
	   images/tool-backlink.png \
	   images/tool-edit.png \
	   images/tool-index.png \
	   images/tool-login.png \
	   images/tool-logout.png \
	   images/tool-profile.png \
	   images/tool-recent.png \
	   images/tool-revisions.png \
	   images/tool-source.png \
	   images/tool-subscribe.png \
	   images/tool-top.png \
	   images/urlextern.png \
	   images/windows.gif \
	   images/multimedia.png \
	   images/logo.gif \
	   images/logo_ur.png \
	   images/search_bg.png \
	   images/tool-revert.png

LANG=lang/de/settings.php \
     lang/cs/settings.php \
     lang/en/settings.php \
     lang/eo/settings.php \
     lang/es/settings.php \
     lang/fr/settings.php \
     lang/it/settings.php \
     lang/pl/settings.php \
     lang/pt/settings.php \
     lang/ru/settings.php

CONF=conf/default.php \
	 conf/metadata.php

DIST_FILES= $(DOCS) $(CSS) $(HTML) $(SCRIPT) $(PHP) $(STYLE_INI) $(IMAGES) $(LANG) $(CONF)

dist:
	tar czf $(DIST_NAME).tgz $(DIST_FILES)

clean: 
	rm $(DIST_PREFIX)*.tgz

