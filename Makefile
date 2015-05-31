.SUFFIXES: .html .xml .jpg .thumb.jpg

TMP_THUMBS = 
TMP_IMAGES = 
TMP_ARTICLES = 
TMP_XMLS = 
TMP_STATIC = 

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
	 aboutmephotocseatalltheicecream.jpg \
	 aboutmephotocskdkanelbulle.jpg \
	 aboutmephotocslilachocolaterie.jpg \
	 aboutmephotocspilot.jpg \
	 aboutmephotolilaroomservice.jpg \
	 aboutmephotosbackday.jpg \
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
	 article014cake.jpg \
	 article014fullcake.jpg \
	 article014process.jpg \
	 article015fluff.jpg \
	 article015whisk.jpg \
	 article015ingredients.jpg \
	 article015guargum.jpg \
	 article015glass.jpg \
	 article016bananabread.jpg \
	 article016book.jpg \
	 article016preoven.jpg \
	 article016oven.jpg \
	 article017cupcake1.jpg \
	 article017cupcake2.jpg \
	 article017cupcake3.jpg \
	 article017cupcakes.jpg \
	 article017stove.jpg \
	 article017cisslila.jpg \
	 article018bar.jpg \
	 article018barwich.jpg \
	 article018plate.jpg \
	 article018icedbrownie.jpg \
	 article019cookies.jpg \
	 article019crosssectioncookie.jpg \
	 article019ingredients.jpg \
	 article020crosssectioncookie.jpg \
	 article020cookies.jpg \
	 article020cookie.jpg \
	 article020postoven.jpg \
	 article021bite.jpg \
	 article021tupperware.jpg \
	 article021stack.jpg \
	 article021tray.jpg \
	 article022oven.jpg \
	 article022final.jpg \
	 article022slice0.jpg \
	 article022slice1.jpg \
	 article022slice2.jpg \
	 article022slice3.jpg \
	 article023glass0.jpg \
	 article023glass1.jpg \
	 article023glass2.jpg \
	 article023glass3.jpg \
	 article023glass4.jpg \
	 article023bowl0.jpg \
	 article023bowl1.jpg \
	 article023bowl2.jpg \
	 article023thomas.jpg \
	 article023thomas2.jpg \
	 article024smoothie0.jpg \
	 article024smoothie1.jpg \
	 article024smoothie2.jpg \
	 article024smoothie3.jpg \
	 article024ingredients.jpg \
	 article025brownie0.jpg \
	 article025brownie1.jpg \
	 article025brownie2.jpg \
	 article025brownie3.jpg \
	 article025brownie4.jpg \
	 article025brownie5.jpg \
	 article025peanutbutter.jpg \
	 article026soup1.jpg \
	 article026soup2.jpg \
	 article026bread.jpg \
	 article026bread2.jpg \
	 article026bread3.jpg \
	 article026broccolisoup.jpg \
	 article034smoothie1.jpg \
	 article034smoothie2.jpg \
	 article034smoothie3.jpg \
	 article034ingredients.jpg \
	 article034lilaberry.jpg \
	 article037pudding1.jpg \
	 article037pudding2.jpg \
	 article037pudding3.jpg \
	 article037ingredients.jpg \
	 amazon.png \
	 article.js \
	 banner.png \
	 bannerbig.png \
	 bg.png \
	 bodybuildinglogo.png \
	 email.png \
	 files.png \
	 glutenfree.png \
	 highprotein.png \
	 facebook.png \
	 instagram.png \
	 lactosefree.png \
	 logo.png \
	 lowcarb.png \
	 lowfat.png \
	 main.js \
	 myprotein.png \
	 paleo.png \
	 raw.png \
	 rss.png \
	 sugarfree.png \
	 time.png \
	 timedark.png \
	 print.png \
	 vegan.png \
	 $(TMP_STATIC)

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
       article008.xml \
       article009.xml \
       article010.xml \
       article011.xml \
       article012.xml \
       article013.xml \
       article014.xml \
       article015.xml \
       article016.xml \
       article017.xml \
       article018.xml \
       article019.xml \
       article020.xml \
       article021.xml \
       article022.xml \
       article023.xml \
       article024.xml \
       article025.xml \
       article026.xml \
       article034.xml \
       article037.xml \
       $(TMP_XMLS)

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
	   article008.html \
	   article009.html \
	   article010.html \
	   article011.html \
	   article012.html \
	   article013.html \
	   article014.html \
	   article015.html \
	   article016.html \
	   article017.html \
	   article018.html \
	   article019.html \
	   article020.html \
	   article021.html \
	   article022.html \
	   article023.html \
	   article024.html \
	   article025.html \
	   article026.html \
	   article034.html \
	   article037.html \
	   $(TMP_ARTICLES)
		
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
	 article008a.jpg article008b.jpg article008c.jpg \
	 article009a.jpg article009b.jpg article009c.jpg \
	 article010a.jpg article010b.jpg article010c.jpg \
	 article011a.jpg article011b.jpg article011c.jpg \
	 article012a.jpg article012b.jpg article012c.jpg \
	 article013a.jpg article013b.jpg article013c.jpg \
	 article014a.jpg article014b.jpg article014c.jpg \
	 article015a.jpg article015b.jpg article015c.jpg \
	 article016a.jpg article016b.jpg article016c.jpg \
	 article017a.jpg article017b.jpg article017c.jpg \
	 article018a.jpg article018b.jpg article018c.jpg \
	 article019a.jpg article019b.jpg article019c.jpg \
	 article020a.jpg article020b.jpg article020c.jpg \
	 article021a.jpg article021b.jpg article021c.jpg \
	 article022a.jpg article022b.jpg article022c.jpg \
	 article023a.jpg article023b.jpg article023c.jpg \
	 article024a.jpg article024b.jpg article024c.jpg \
	 article025a.jpg article025b.jpg article025c.jpg \
	 article026a.jpg article026b.jpg article026c.jpg \
	 article034a.jpg article034b.jpg article034c.jpg \
	 article037a.jpg article037b.jpg article037c.jpg \
	 $(TMP_IMAGES)
	 
# We build thumbnails from $(IMAGES)...
# XXX add all the thumbnails " - "

THUMBS = article001a.thumb.jpg article001b.thumb.jpg article001c.thumb.jpg \
	 article002a.thumb.jpg article002b.thumb.jpg article002c.thumb.jpg \
	 article003a.thumb.jpg article003b.thumb.jpg article003c.thumb.jpg \
	 article004a.thumb.jpg article004b.thumb.jpg article004c.thumb.jpg \
	 article005a.thumb.jpg article005b.thumb.jpg article005c.thumb.jpg \
	 article006a.thumb.jpg article006b.thumb.jpg article006c.thumb.jpg \
	 article007a.thumb.jpg article007b.thumb.jpg article007c.thumb.jpg \
	 article008a.thumb.jpg article008b.thumb.jpg article008c.thumb.jpg \
	 article009a.thumb.jpg article009b.thumb.jpg article009c.thumb.jpg \
	 article010a.thumb.jpg article010b.thumb.jpg article010c.thumb.jpg \
	 article011a.thumb.jpg article011b.thumb.jpg article011c.thumb.jpg \
	 article012a.thumb.jpg article012b.thumb.jpg article012c.thumb.jpg \
	 article013a.thumb.jpg article013b.thumb.jpg article013c.thumb.jpg \
	 article014a.thumb.jpg article014b.thumb.jpg article014c.thumb.jpg \
	 article015a.thumb.jpg article015b.thumb.jpg article015c.thumb.jpg \
	 article016a.thumb.jpg article016b.thumb.jpg article016c.thumb.jpg \
	 article017a.thumb.jpg article017b.thumb.jpg article017c.thumb.jpg \
	 article018a.thumb.jpg article018b.thumb.jpg article018c.thumb.jpg \
	 article019a.thumb.jpg article019b.thumb.jpg article019c.thumb.jpg \
	 article020a.thumb.jpg article020b.thumb.jpg article020c.thumb.jpg \
	 article021a.thumb.jpg article021b.thumb.jpg article021c.thumb.jpg \
	 article022a.thumb.jpg article022b.thumb.jpg article022c.thumb.jpg \
	 article023a.thumb.jpg article023b.thumb.jpg article023c.thumb.jpg \
	 article024a.thumb.jpg article024b.thumb.jpg article024c.thumb.jpg \
	 article025a.thumb.jpg article025b.thumb.jpg article025c.thumb.jpg \
	 article026a.thumb.jpg article026b.thumb.jpg article026c.thumb.jpg \
	 article034a.thumb.jpg article034b.thumb.jpg article034c.thumb.jpg \
	 article037a.thumb.jpg article037b.thumb.jpg article037c.thumb.jpg \
	 $(TMP_THUMBS)

#####################################################################
# DON'T CHANGE ANYTHING BELOW HERE.                                 #
#####################################################################

HTMLS = atom.xml \
	archive.html \
	disclaimer.html \
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

$(HTMLS): article.xml index.xml disclaimer.xml archive.xml $(THUMBS)

.xml.html:
	sblg -t article.xml -C $< -o $@ $(XMLS)

archive.html: archive.xml $(XMLS)
	sblg -t archive.xml -o $@ $(XMLS)

disclaimer.html: disclaimer.xml $(XMLS)
	sblg -t disclaimer.xml -o $@ $(XMLS)

index.html: index.xml $(XMLS)
	sblg -t index.xml -o $@ $(XMLS)

atom.xml: $(ARTICLES)
	sblg -a -o $@ $(ARTICLES)

.jpg.thumb.jpg:
	convert $< -thumbnail 140x140 $@
