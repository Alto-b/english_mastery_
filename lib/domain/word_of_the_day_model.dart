import 'dart:math';

class WordOfTheDayModel {
  Map<String, String> wordOfTheDay = {
    "Loquacious": "Tending to talk a great deal; talkative.",
    "Serendipity":
        "The occurrence of events by chance in a happy or beneficial way.",
    "Ephemeral": "Lasting for a very short time.",
    "Ineffable": "Too great or extreme to be expressed or described in words.",
    "Pernicious":
        "Having a harmful effect, especially in a gradual or subtle way.",
    "Ebullient": "Cheerful and full of energy.",
    "Luminous":
        "Full of or shedding light; bright or shining, especially in the dark.",
    "Cacophony": "A harsh, discordant mixture of sounds.",
    "Mellifluous": "Sweet or musical; pleasant to hear.",
    "Inept": "Having or showing no skill; clumsy.",
    "Aberration":
        "A departure from what is normal, usual, or expected, typically an unwelcome one.",
    "Benevolent": "Well-meaning and kindly.",
    "Capitulate":
        "Cease to resist an opponent or an unwelcome demand; surrender.",
    "Debacle": "A sudden and ignominious failure; a fiasco.",
    "Ebullience":
        "The quality of being cheerful and full of energy; exuberance.",
    "Felicity": "Intense happiness.",
    "Garrulous": "Excessively talkative, especially on trivial matters.",
    "Hapless": "Unfortunate.",
    "Iconoclast":
        "A person who attacks or criticizes cherished beliefs or institutions.",
    "Juxtaposition":
        "The fact of two things being seen or placed close together with contrasting effect.",
    "Kaleidoscope": "A constantly changing pattern or sequence of elements.",
    "Languid":
        "Displaying or having a disinclination for physical exertion or effort; slow and relaxed.",
    "Maelstrom": "A powerful whirlpool in the sea or a river.",
    "Nebulous": "In the form of a cloud or haze; hazy.",
    "Obfuscate": "Render obscure, unclear, or unintelligible.",
    "Palpable": "So intense as to seem almost tangible.",
    "Quixotic": "Exceedingly idealistic; unrealistic and impractical.",
    "Recalcitrant":
        "Having an obstinately uncooperative attitude towards authority or discipline.",
    "Sanguine":
        "Optimistic or positive, especially in an apparently bad or difficult situation.",
    "Tenacious":
        "Tending to keep a firm hold of something; clinging or adhering closely.",
    "Ubiquitous": "Present, appearing, or found everywhere.",
    "Voracious": "Wanting or devouring great quantities of food.",
    "Wistful": "Having or showing a feeling of vague or regretful longing.",
    "Xenophile":
        "An individual who is attracted to foreign peoples, cultures, or customs.",
    "Zephyr": "A soft gentle breeze.",
    "Aesthetic": "Concerned with beauty or the appreciation of beauty.",
    "Brevity": "Concise and exact use of words in writing or speech.",
    "Convivial": "Friendly, lively, and enjoyable.",
    "Diaphanous": "Light, delicate, and translucent.",
    "Effervescent": "Vivacious and enthusiastic.",
    "Furtive":
        "Attempting to avoid notice or attention, typically because of guilt or a belief that discovery would lead to trouble.",
    "Grandiloquent":
        "Pompous or extravagant in language, style, or manner, especially in a way that is intended to impress.",
    "Halcyon":
        "Denoting a period of time in the past that was idyllically happy and peaceful.",
    "Intransigent":
        "Unwilling or refusing to change one's views or to agree about something.",
    "Jocular": "Fond of or characterized by joking; humorous or playful.",
    "Keen": "Having or showing eagerness or enthusiasm.",
    "Lachrymose": "Tearful or given to weeping.",
    "Maverick": "An unorthodox or independent-minded person.",
    "Nefarious": "Wicked or criminal.",
    "Ostentatious":
        "Characterized by vulgar or pretentious display; designed to impress or attract notice.",
    "Paragon":
        "A person or thing regarded as a perfect example of a particular quality.",
    "Querulous": "Complaining in a petulant or whining manner.",
    "Resplendent":
        "Attractive and impressive through being richly colorful or sumptuous.",
    "Sycophant":
        "A person who acts obsequiously towards someone important in order to gain advantage.",
    "Truculent": "Eager or quick to argue or fight; aggressively defiant.",
    "Urbane": "Suave, courteous, and refined in manner.",
    "Vex":
        "Make (someone) feel annoyed, frustrated, or worried, especially with trivial matters.",
    "Winsome": "Attractive or appealing in appearance or character.",
    "Yoke":
        "A wooden crosspiece that is fastened over the necks of two animals and attached to the plow or cart that they are to pull.",
    "Zealot":
        "A person who is fanatical and uncompromising in pursuit of their religious, political, or other ideals.",
    "Affable": "Friendly, good-natured, or easy to talk to.",
    "Brusque": "Abrupt or offhand in speech or manner.",
    "Cognizant": "Having knowledge or being aware of.",
    "Dogmatic": "Inclined to lay down principles as incontrovertibly true.",
    "Ennui":
        "A feeling of listlessness and dissatisfaction arising from a lack of occupation or excitement.",
    "Flippant": "Not showing a serious or respectful attitude.",
    "Gregarious": "Fond of company; sociable.",
    "Heuristic":
        "Enabling a person to discover or learn something for themselves.",
    "Irascible": "Having or showing a tendency to be easily angered.",
    "Judicious": "Having, showing, or done with good judgment or sense.",
    "Kinetic": "Relating to or resulting from motion.",
    "Lethargic": "Affected by lethargy; sluggish and apathetic.",
    "Munificent": "More generous than is usual or necessary.",
    "Nostalgia":
        "A sentimental longing or wistful affection for the past, typically for a period or place with happy personal associations.",
    "Obsequious": "Obedient or attentive to an excessive or servile degree.",
    "Pariah": "An outcast.",
    "Quagmire":
        "A soft boggy area of land that gives way underfoot; a complex or hazardous situation.",
    "Reticent": "Not revealing one's thoughts or feelings readily.",
    "Sagacious":
        "Having or showing keen mental discernment and good judgment; shrewd.",
    "Trepidation":
        "A feeling of fear or agitation about something that may happen.",
    "Umbrage": "Offense or annoyance.",
    "Venerate": "Regard with great respect; revere.",
    "Wary": "Feeling or showing caution about possible dangers or problems.",
    "Yearn":
        "Have an intense feeling of longing for something, typically something that one has lost or been separated from.",
    "Zest": "Great enthusiasm and energy.",
    "Acumen":
        "The ability to make good judgments and quick decisions, typically in a particular domain.",
    "Blithe":
        "Showing a casual and cheerful indifference considered to be callous or improper.",
    "Cajole":
        "Persuade someone to do something by sustained coaxing or flattery.",
    "Deft": "Neatly skillful and quick in one's movements.",
    "Fatuous": "Silly and pointless.",
    "Hubris": "Excessive pride or self-confidence.",
    "Impetuous": "Acting or done quickly and without thought or care.",
    "Juxtapose": "Place or deal with close together for contrasting effect.",
    "Kudos": "Praise and honor received for an achievement.",
    "Livid": "Furiously angry.",
    "Mollify": "Appease the anger or anxiety of (someone).",
    "Nadir": "The lowest point in the fortunes of a person or organization.",
    "Ostensible": "Stated or appearing to be true, but not necessarily so.",
    "Pithy": "Concise and forcefully expressive.",
    "Quotidian": "Of or occurring every day; daily.",
    "Soporific": "Tending to induce drowsiness or sleep.",
    "Taciturn": "Reserved or uncommunicative in speech; saying little.",
    "Vociferous": "Vehement or clamorous.",
    "Waft":
        "Pass or cause to pass easily or gently through or as if through the air.",
    "Xeric": "Containing little moisture; very dry.",
    "Yore": "Of long ago or former times.",
    "Zenith": "The time at which something is most powerful or successful.",
    "Ambivalent":
        "Having mixed feelings or contradictory ideas about something or someone.",
    "Candid": "Truthful and straightforward; frank.",
    "Debonair": "Confident, stylish, and charming (typically used of a man).",
    "Empathy": "The ability to understand and share the feelings of another.",
    "Frugal": "Sparing or economical with regard to money or food.",
    "Genuine": "Truly what something is said to be; authentic.",
    "Humble": "Having or showing a modest or low estimate of one's importance.",
    "Intrepid":
        "Fearless; adventurous (often used for rhetorical or humorous effect).",
    "Jovial": "Cheerful and friendly.",
    "Kooky": "Strange or eccentric.",
    "Meticulous":
        "Showing great attention to detail; very careful and precise.",
    "Nurture": "Care for and encourage the growth or development of.",
    "Optimistic": "Hopeful and confident about the future.",
    "Pragmatic":
        "Dealing with things sensibly and realistically in a way that is based on practical rather than theoretical considerations.",
    "Resilient":
        "Able to withstand or recover quickly from difficult conditions.",
    "Stoic":
        "Enduring pain and hardship without showing one's feelings or complaining.",
    "Tactful":
        "Having or showing skill and sensitivity in dealing with others or with difficult issues.",
    "Unassuming": "Not pretentious or arrogant; modest.",
    "Vibrant": "Full of energy and enthusiasm.",
    "Whimsical":
        "Playfully quaint or fanciful, especially in an appealing and amusing way.",
    "Yielding": "Giving way under pressure; not hard or rigid.",
    "Zany": "Amusingly unconventional and idiosyncratic."
  };

  MapEntry<String, String> getWordOfTheDay() {
    // Get all the keys from the map
    List<String> keys = wordOfTheDay.keys.toList();

    // Get the current date and convert it to a string in YYYYMMDD format
    String today =
        DateTime.now().toIso8601String().substring(0, 10).replaceAll('-', '');

    // Use the date string to create a consistent seed for the random generator
    int seed = int.parse(today);

    // Create a Random instance with the seed
    Random random = Random(seed);

    // Generate a random index based on the length of the keys list
    int randomIndex = random.nextInt(keys.length);

    // Get the key at the random index
    String randomKey = keys[randomIndex];

    // Return the key and the corresponding value as a MapEntry
    return MapEntry(randomKey, wordOfTheDay[randomKey]!);
  }
}
