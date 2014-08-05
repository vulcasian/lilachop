.SUFFIXES: .html .xml .jpg .thumb.jpg

# These are images and stuff (javascript, CSS, etc.) that aren't built,
# but we need to install them.
STATIC = article.js \
	 bg.png \
	 download-colour.png \
	 email-colour.png \
	 files-colour.png \
	 highprotein.png \
	 instagram-colour.png \
	 rss-colour.png \
	 time.png \
	 timedark.png

# These are your articles.
#XXX Go to last article, hit "o" to open up a new line below, and add new article.xml with a new \ at the end of the second-last article. 
XMLS = article001.xml \
       article002.xml \
       article003.xml \
       article004.xml \
       article005.xml \
       article009.xml
	
# These are all the HTML files that I'll build.
# Make sure all your articles in $(XMLS) appear here!
# XXX Do the same here, but with .html instead of .xml
HTMLS = atom.xml \
	archive.html \
	article001.html \
	article002.html \
	article003.html \
	article004.html \
	article005.html \
	article009.html \
	index.html

# These are the images used by the artiles in $(XMLS).
# When you add a new XML file, make sure you add its images.
# XXX add all the new jpg photos with a \ at the end of the new second last line. 
IMAGES = article001a.jpg article001b.jpg article001c.jpg \
	 article002a.jpg article002b.jpg article002c.jpg \
	 article003a.jpg article003b.jpg article003c.jpg \
	 article004a.jpg article004b.jpg article004c.jpg \
	 article005a.jpg article005b.jpg article005c.jpg \
	 article009a.jpg article009b.jpg article009c.jpg

# We build thumbnails from $(IMAGES)...
# XXX add all the thumbnails " - "
THUMBS = article001a.thumb.jpg article001b.thumb.jpg article001c.thumb.jpg \
	 article002a.thumb.jpg article002b.thumb.jpg article002c.thumb.jpg \
	 article003a.thumb.jpg article003b.thumb.jpg article003c.thumb.jpg \
	 article004a.thumb.jpg article004b.thumb.jpg article004c.thumb.jpg \
	 article005a.thumb.jpg article005b.thumb.jpg article005c.thumb.jpg \
	 article009a.thumb.jpg article009b.thumb.jpg article009c.thumb.jpg

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

atom.xml: $(XMLS)
	sblg -a -o $@ $(XMLS)

.jpg.thumb.jpg:
	convert $< -thumbnail 140x140 $@
