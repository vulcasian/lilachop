.SUFFIXES: .html .xml .jpg .thumb.jpg

# These are images and stuff (javascript, CSS, etc.) that aren't built,
# but we need to install them.
STATIC = bg.png \
	 download-colour.png \
	 email-colour.png \
	 files-colour.png \
	 instagram-colour.png \
	 main.js \
	 rss-colour.png

# This is the most current HTML file in $(HTMLS).
# We're going to copy this into index.html.
LAST = article3.html

# These are your articles.
XMLS = article1.xml \
       article2.xml \
       article3.xml

# These are all the HTML files that I'll build.
# Make sure all your articles in $(XMLS) appear here!
HTMLS = atom.xml \
	archive.html \
	article1.html \
	article2.html \
	article3.html \
	tagindex.html

# These are the images used by the artiles in $(XMLS).
# When you add a new XML file, make sure you add its images.
IMAGES = article1a.jpg article1b.jpg article1c.jpg \
	 article2a.jpg article2b.jpg article2c.jpg \
	 article3a.jpg article3b.jpg article3c.jpg

# We build thumbnails from $(IMAGES)...
THUMBS = article1a.thumb.jpg article1b.thumb.jpg article1c.thumb.jpg \
	 article2a.thumb.jpg article2b.thumb.jpg article2c.thumb.jpg \
	 article3a.thumb.jpg article3b.thumb.jpg article3c.thumb.jpg

all: $(HTMLS)

install: all
	mkdir -p $(PREFIX)
	install -m 0444 $(THUMBS) $(HTMLS) $(IMAGES) $(STATIC) $(PREFIX)
	install -m 0444 archive.css article.css main.css $(PREFIX)
	install -m 0444 $(LAST) $(PREFIX)/index.html
	install -m 0444 atom.xml $(PREFIX)

clean:
	rm -f $(HTMLS) $(THUMBS)

$(HTMLS): index.xml $(THUMBS)

.xml.html:
	/usr/local/bin/sblg -t index.xml -f $< -o $@ $(XMLS)

archive.html: archive.xml $(XMLS)
	/usr/local/bin/sblg -t archive.xml -o $@ $(XMLS)

tagindex.html: tagindex.xml $(XMLS)
	/usr/local/bin/sblg -t tagindex.xml -o $@ $(XMLS)

atom.xml: $(XMLS)
	/usr/local/bin/sblg -a -o $@ $(XMLS)

.jpg.thumb.jpg:
	/usr/local/bin/convert $< -thumbnail 75x75 $@
