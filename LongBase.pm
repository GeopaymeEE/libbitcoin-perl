#!/usr/bin/perl
# LongBase encoding using most used words in contemporary english poetry.
package LongBase;

use strict;
use warnings;

use integer;
use bigint;

our @base = split / |\n/, join '', <DATA>;
my %ibase; $ibase{$base[$_]} = $_ for 0 .. @base-1;
my $N = @base;

sub encode;
sub decode;

sub encode {
    my $x = shift;
    return $x < $N ?  $base[$x] :
    ($base[$x%$N], encode $x/$N + $x%$N);
}

sub decode {
    my $r = $ibase{shift()} or die "unknown word";
    return 1* (@_ ? $r + $N*(decode(@_)-$r) : $r);
}

__DATA__
the I and to you a of my in that me it is but for your with be so was her as on
all she not he this we like are have just love what one I´m know no when his
at they from will do never don´t can up want see go time now out if feel or
by there life it´s make how would look eye because could say day who get had
were down only our think heart back then into am come about him more away
can´t still their way an them why take thing even through long let us always
you´re world too friend tell I´ll try hand has face did thought over here
word other where every need smile again much cry been night its ever little
said end some than live fall those pain around mind people girl leave dream
left turn myself right tear head give nothing really off before something find
hold man walk wish good once I´ve place light call ask lie stop that´s hear
keep watch seem year sit die everything without though lost these wait got care
yet made remember start alone which last run didn´t hope maybe believe body
hate after until close talk hard stand old own each well hurt while help home
god soul new many two oh told won´t inside I´d should true move first fear
mean better may play another gone change use wonder knew same someone hair cold
open best any behind miss arm happen star water dark laugh stay forever name
she´s work show there´s sky break far came deep door put room black
together upon boy happy such great white doesn´t you´ll does matter side
fill past fight sun please burn cause enough touch cannot moment soon voice
you´ve scream anything stare he´s most sound red everyone fuck hide kiss
truth death beautiful mine blood broken very pass next forget tree wrong air
mother must done found understand lip hit wall couldn´t else beat memory saw
wind sleep free high realize school bad late went felt might skin sweet perfect
blue kill breath dance rain dead against fly between grow strong car took under
listen bring full sometimes speak big pull person become family part begin
ground real small father sure hell kind bed feet rest young finally land across
today seen different guy line fire reason isn´t lay reach we´re second
wouldn´t slowly write ear eat sing smell mouth step learn three gave set
floor promise breathe darkness push earth guess save song till above along both
what´s color house almost sorry anymore yes brother okay dear game fade
already apart warm beauty heard notice question shine began piece whole shadow
secret street within finger point morning whisper child fun moon green read
story wasn´t glass kid lose silence pick cut fast since soft yourself empty
shall angel answer baby bright dad path worry hour drop fell you´d follow
power war half flow heaven wake act chance fact least tired children near quite
scare afraid rise sea taste window cover nice trust lot sad cool force peace
return wear blind easy ready roll rose shit drive held music share beneath hang
mom paint emotion quiet slow we´ll clear cloud few pretty bird outside paper
picture front rock simple top anyone meant reality road sense waste bit leaf
thank happiness meet men smoke truly decide self age book form hot alive carry
met escape damn instead shake able ice minute throw catch four leg ring ago
course goodbye lead poem sick corner desire fine gonna known problem ran remind
shoulder suppose they´re toward wave drink jump woman pretend sister week
human joy crack dare grey pray surprise dry knee less ride search short bleed
caught clean embrace future king son sorrow chest hug remain sat wing worth
blow daddy final parent tight also create lonely onto safe aren´t cross dress
evil silent bone brought fate perhaps anger class scar sight snow tiny tonight
wanna continue control dog edge fool mirror month suddenly comfort given loud
quickly gaze plan rush slip stone town ass battle ignore spirit stood stupid
yours brown build dust food hey kept pay phone twist although ball beyond drown
fit hidden nose taken fail float lock pure sand somehow wash wrap angry cheek
creature forgotten heat hole rip single space special weak whatever yell anyway
blame job choose country curse drift echo figure gold golden grew herself
laughter neck suffer worse yeah bear disappear foot forward knife mess nor race
somewhere stomach storm beg idea lift offer she´ll tall breeze field five
often round simply stuck thin win allow confuse enjoy except flower seek
strength calm grin gun heavy hill himself large ocean shoe sigh straight summer
tongue accept crazy everyday exist fake grass mistake sent shut sin surround
table ache brain destroy heal nature shout sign stain choice doubt glance glow
mountain queen send shot spent stranger throat tomorrow city either fish flame
mad rather shape spin spread wide ash distance fallen finish image imagine
important nobody none shatter warmth became below bore fat feed flesh funny
lust shirt trouble yellow attention bare bite cat lack money protect we´ve
ain´t amaze appear born choke completely daughter fresh friendship gentle
probably six trap beast deserve expect grab haven´t middle nightmare river
thousand weight worst wound barely bottle cream lover low mile regret
relationship stick test whose crush endless fault itself rage rule spill art
circle join kick mask master passion quick raise smooth unless wander actually
broke chair deal favorite gift note number shed suck sweat tale bitch box chill
clothes hall lady mark park poor sadness tie animal belong brush consume dawn
forest grave he´ll innocent pen pride stream thick weren´t clay complete
count draw faith he´d let´s press silver struggle surface taught teach wet
bless chase climb enter letter melt metal movie stretch swing ten vision wife
beside crash forgot guide haunt joke knock plant pour prove reveal steal stuff
trip wood wrist bother bottom crawl crowd fix forgive frown grace loose lucky
party release seat surely survive teacher gently grip speed suicide travel
treat vein written cage chain conversation date enemy fair however interest
million page pink proud she´d sway themselves track who´s winter church
cruel cup demon experience freedom pair pop purpose respect shoot softly state
store strange toy bar beach birth curl dirt excuse hat lake lord lovely monster
order pack pants pool scene seven shame shouldn´t slide ugly whom among blade
blonde closet creek deny drug eternity gain grade handle key linger pale
prepare swallow swim torn tremble wheel won cast cigarette claim college
direction dirty gather ghost hundred loss lung orange present swear swirl twice
wild bitter blanket case doctor everywhere flash grown knowledge numb pressure
radio repeat ruin spend unknown buy clock devil early false fantasy pound
precious refuse sheet shell spoke teeth welcome add ahead block bury caress
content depth despite distant marry purple they´ll threw thus tone whenever
bomb dull easily grasp hospital innocence normal receive reply rhyme shade
someday sword toe visit asleep bell bought center consider flat hero history
ink insane muscle mystery pocket reflection shove silently smart soldier spot
stress train type view whether bus energy explain holy hunger inch it´ll lean
magic mix noise nowhere prayer presence shock snap spider study thunder trail
admit agree bag bang bound butterfly Christmas cute exactly explode familiar
flew fold further lit pierce reflect scent selfish sell sex sharp sink spring
stumble universe we´d weep women wonderful action ancient attempt avoid
birthday branch chocolate core depress drunk especially focus fruit honest
match Mr.  palm perfectly pillow piss pity poison roar shift slightly thump
truck tune twenty unable wipe wrote American bow coat constant dinner drove egg
eternal flight flood frame freak gasp glad hollow motion peer plastic root
screen season sting strike team unlike victim volume warn weird attack await
awake built charm crave despair fought grant grief horse limit message ripple
sanity scatter serve split string trick whore annoy blur boat brave clearly
cling connect fist forth ha hip imagination iron jock judge lesson milk misery
nail naked ourselves poet possible princess sail seed size snake society stroke
tip torture toss trace wise bloom bullet cell check cost darling during
footstep fragile hallway hardly horizon invisible journey midnight mood mud nod
pause relax shiver sudden thee value youth abuse admire blink breast bruise
constantly couple creep curve difference dumb emptiness gotta honor plain
planet recall rub ship slam soar somebody spit tightly TV weather adore
approach bond bread burst candle cave coffee cousin crime desert flutter frozen
grand hadn´t heel hello language level luck movement pleasure powerful random
rhythm settle silly slap sort spoken steel tail threaten tumble upset aside
awkward bee bend blank board button card carefully complain crap crown deeply
discover dive drag dread effort entire fairy giant gotten greet illusion jeans
leap liquid march mend nervous nine pace replace rope spine stole terror
accident apple balance bet boom childhood collect cook demand depression eight
eventually faint gate glare goal group honey kitchen laid limb machine mere
mold murder nerve painful pin poetry prince rabbit sake seal seep shelter shop
shore shower soothe stair steady sunlight tangle tease treasure uncle wine
begun bliss bush canvas cheer claw clutch commit crimson crystal cure delight
dip doll ease existence express fog football gay goose guard hatred illuminate
mass math mourn pot ray rich rough skip stir student style support thorn tick
tough wore yard yearn yesterday advice appreciate autumn bank beam bowl capture
carve chose collapse confusion creation dove feather girlfriend glory
government harsh hop inner loser meal moonlight neighbor neither peach pig
praise screw shield shimmer sneak stab subject Sunday sweep throughout thrown
tower twirl woke wow army arrive bathroom bump cease cookie couch courage dim
guilt howl hum husband insult led lunch mock mostly natural nearly needle nerd
peaceful perfection pile price remove roam sanctuary serious shiny shook sob
stolen tap vain void warrior wrinkle affection apologize band bind blossom
bounce bridge bye cheap cliché crumble decision descend desperately dig
dot flaw flip frighten heartbeat huge lazy lick lower odd opinion process
puzzle quietly retreat rot score sentence separate situation skill soak square
stray taint task they´ve tide underneath veil whistle anywhere bedroom bid
bloody boot burden careful compare concern could´ve curtain decay defeat
describe double dreamer driver dwell evening flare flicker grandma guitar harm
hid horrible hung hungry indeed lace melody monkey nation object obviously pit
rainbow salt scratch shown shy stage stun third tickle useless weakness worship
worthless afternoon beard boyfriend bubble busy certain chin concrete desk
diamond doom drawn due felicity freeze frost garden glide harmony hi hopefully
hunt it´d jealous lightning mama mercy peel physical position pulse punch
quit rant respond salty sane satisfy savior sheep slept social sore sport tuck
utter valley wolf aid aim alas alter America arrow awaken beaten belief brand
ceiling cheese clue confidence connection daily disguise eager erase essence
everytime expression fan flag flirt foul fur giggle glorious hers ignorance law
lifeless measure mighty muse north opposite paradise patience patient pencil
petal plane plate ponder possibly practice slice slut spell stock strife strip
struck suffocate suit tender tool trade velvet verse waist witch worn ah aunt
bay bench bold cap certainly click companion condom creator dart delicate
determine dish dragon drama drum dude everybody feast forehead former fright
fully gas gut hook hurl ill invite juice manage moral pill possess raw rebel
royal scale scary several slight stubborn swell talent tea terrible they´d
thread thy torment trickle usually vast violence weave yea acid agony ashamed
awe belly blend blush Catholic character cheat common company coward creak
danger deadly defense define depend desperate destination dew duck dusty
embarrass engine example explore foe freely frustrate generation glove guilty
hasn´t health hurry idiot impossible inhale jaw kingdom mention mist moan
mumble mutter observe ode pathetic pattern pie prefer puff rape rare revenge
rude scrape sip spiral squeeze strain sunset suspend sympathy thigh thou throne
total unseen weapon weary