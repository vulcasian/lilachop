.SUFFIXES: .html .xml .jpg .thumb.jpg

# These are images and stuff (javascript, CSS, etc.) that aren't built,
# but we need to install them.

STATIC = aboutlilachoparchivepage.jpg \
	 aboutlilachophomepage.jpg \
	 aboutlilachoprecipepage1.jpg \
	 aboutlilachoprecipepage2.jpg \
	 aboutlilachopterminal.jpg \
	 aboutlilachopsmartphone.jpg \
	 aboutmephotoCSlegs.jpg \
	 aboutmephotobrunchcollage.jpg \
	 aboutmephotocsapkitchen.jpg \
	 aboutmephotocsapplates.jpg \
	 aboutmephotocseatalltheicecream.jpg \
	 aboutmephotocsgradtripfood.jpg \
	 aboutmephotocskd23bday.jpg \
	 aboutmephotocskdkanelbulle.jpg \
	 aboutmephotocskladdkakafu.jpg \
	 aboutmephotocslilachocolaterie.jpg \
	 aboutmephotocslilapuppy.jpg \
	 aboutmephotocslobster.jpg \
	 aboutmephotocsmusclebeach.jpg \
	 aboutmephotocspilot.jpg \
	 aboutmephotocsroomservice.jpg \
	 aboutmephotocsthailandmagnum.jpg \
	 aboutmephotokanelbulle.jpg \
	 aboutmephotolilaroomservice.jpg \
	 aboutmephotosbackday.jpg \
	 aboutmephotosmoothiescollage.jpg \
	 aboutmephotovegetarian.jpg \
	 article011cups.jpg \
	 article011banana.jpg \
	 article011annahallalulu.jpg \
	 article011annasportsday.jpg \
	 article012meng.jpg \
	 article012mugcake.jpg \
	 article013a.jpg \
	 article013almondbutter.jpg \
	 article013apples.jpg \
	 article013b.jpg \
	 article013c.jpg \
	 article013ingredients.jpg \
	 article013binbin.jpg \
	 amazon.png \
	 article.js \
	 bg.png \
	 email.png \
	 files.png \
	 glutenfree.png \
	 highprotein.png \
	 home.png \
	 instagram.png \
	 lactosefree.png \
	 lowcarb.png \
	 lowfat.png \
	 paleo.png \
	 raw.png \
	 rss.png \
	 sugarfree.png \
	 time.png \
	 timedark.png \
	 vegan.png

# These are your articles.
# XXX: go to last article, hit "o" to open up a new line below, and add
# new article.xml with a new \ at the end of the second-last article. 

XMLS = article001.xml \
       article002.xml \
       article003.xml \
       article004.xml \
       article005.xml \
       article006.xml \
       article007.xml \
       article009.xml \
       article010.xml \
       article011.xml \
       article012.xml \
       article013.xml

# These are all the HTML files that I'll build.
# Make sure all your articles in $(XMLS) appear here!
# XXX: do the same here, but with .html instead of .xml

ARTICLES = article001.html \
	   article002.html \
	   article003.html \
	   article004.html \
	   article005.html \
	   article006.html \
	   article007.html \
	   article009.html \
	   article010.html \
	   article011.html \
	   article012.html \
	   article013.html

# These are the images used by the artiles in $(XMLS).
# When you add a new XML file, make sure you add its images.
# XXX: add all the new jpg photos with a \ at the end of the new second
# last line. 

IMAGES = article001a.jpg article001b.jpg article001c.jpg \
	 article002a.jpg article002b.jpg article002c.jpg \
	 article003a.jpg article003b.jpg article003c.jpg \
	 article004a.jpg article004b.jpg article004c.jpg \
	 article005a.jpg article005b.jpg article005c.jpg \
	 article006a.jpg article006b.jpg article006c.jpg \
	 article007a.jpg article007b.jpg article007c.jpg \
	 article009a.jpg article009b.jpg article009c.jpg \
	 article010a.jpg article010b.jpg article010c.jpg \
	 article011a.jpg article011b.jpg article011c.jpg \
	 article012a.jpg article012b.jpg article012c.jpg \
	 article013a.jpg article013b.jpg article013c.jpg

# We build thumbnails from $(IMAGES)...
# XXX add all the thumbnails " - "

THUMBS = article001a.thumb.jpg article001b.thumb.jpg article001c.thumb.jpg \
	 article002a.thumb.jpg article002b.thumb.jpg article002c.thumb.jpg \
	 article003a.thumb.jpg article003b.thumb.jpg article003c.thumb.jpg \
	 article004a.thumb.jpg article004b.thumb.jpg article004c.thumb.jpg \
	 article005a.thumb.jpg article005b.thumb.jpg article005c.thumb.jpg \
	 article006a.thumb.jpg article006b.thumb.jpg article006c.thumb.jpg \
	 article007a.thumb.jpg article007b.thumb.jpg article007c.thumb.jpg \
	 article009a.thumb.jpg article009b.thumb.jpg article009c.thumb.jpg \
	 article010a.thumb.jpg article010b.thumb.jpg article010c.thumb.jpg \
	 article011a.thumb.jpg article011b.thumb.jpg article011c.thumb.jpg \
	 article012a.thumb.jpg article012b.thumb.jpg article012c.thumb.jpg \
	 article013a.thumb.jpg article013b.thumb.jpg article013c.thumb.jpg


#####################################################################
# DON'T CHANGE ANYTHING BELOW HERE.                                 #
#####################################################################

HTMLS = atom.xml \
	archive.html \
	$(ARTICLES) \
	index.html

all: $(HTMLS)

install: all
	mkdir -p $(PREFIX)
	install -m 0444 $(THUMBS) $(HTMLS) $(IMAGES) $(STATIC) $(PREFIX)
	install -m 0444 index.css archive.css article.css main.css $(PREFIX)
	install -m 0444 atom.xml $(PREFIX)

clean:
	rm -f $(HTMLS) $(THUMBS)

$(HTMLS): article.xml index.xml archive.xml $(THUMBS)

.xml.html:
	sblg -t article.xml -f $< -o $@ $(XMLS)

archive.html: archive.xml $(XMLS)
	sblg -t archive.xml -o $@ $(XMLS)

index.html: index.xml $(XMLS)
	sblg -t index.xml -o $@ $(XMLS)

atom.xml: $(ARTICLES)
	sblg -a -o $@ $(ARTICLES)

.jpg.thumb.jpg:
	convert $< -thumbnail 140x140 $@
