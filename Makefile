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

# These are your articles.
XMLS = article001.xml \
       article002.xml \
       article3.xml \
       article4.xml
	
# These are all the HTML files that I'll build.
# Make sure all your articles in $(XMLS) appear here!
HTMLS = atom.xml \
	archive.html \
	article001.html \
	article002.html \
	article3.html \
	article4.html \
	index.html \
	tagindex.html

# These are the images used by the artiles in $(XMLS).
# When you add a new XML file, make sure you add its images.
IMAGES = article001a.jpg article001b.jpg article001c.jpg \
	 article002a.jpg article002b.jpg article002c.jpg \
	 article3a.jpg article3b.jpg article3c.jpg \
	 article4a.jpg article4b.jpg article4c.jpg

# We build thumbnails from $(IMAGES)...
THUMBS = article001a.thumb.jpg article001b.thumb.jpg article001c.thumb.jpg \
	 article002a.thumb.jpg article002b.thumb.jpg article002c.thumb.jpg \
	 article3a.thumb.jpg article3b.thumb.jpg article3c.thumb.jpg \
	 article4a.thumb.jpg article4b.thumb.jpg article4c.thumb.jpg

all: $(HTMLS)

install: all
	mkdir -p $(PREFIX)
	install -m 0444 $(THUMBS) $(HTMLS) $(IMAGES) $(STATIC) $(PREFIX)
	install -m 0444 index.css archive.css article.css main.css $(PREFIX)
	install -m 0444 atom.xml $(PREFIX)

clean:
	rm -f $(HTMLS) $(THUMBS)

$(HTMLS): article.xml $(THUMBS)

.xml.html:
	sblg -t article.xml -f $< -o $@ $(XMLS)

archive.html: archive.xml $(XMLS)
	sblg -t archive.xml -o $@ $(XMLS)

index.html: index.xml $(XMLS)
	sblg -t index.xml -o $@ $(XMLS)

tagindex.html: tagindex.xml $(XMLS)
	sblg -t tagindex.xml -o $@ $(XMLS)

atom.xml: $(XMLS)
	sblg -a -o $@ $(XMLS)

.jpg.thumb.jpg:
	convert $< -thumbnail 75x75 $@
