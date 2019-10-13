module ChemElements exposing (ElementData, Group(..), elementData)


type alias ElementData =
    { atomicNumber : Int
    , symbol : String
    , name : String
    , nameOrigin : String
    , group : Group
    , period : Int
    , mass : String
    }


type Group
    = Group Int
    | La Int
    | Ac Int


elementData : List ElementData
elementData =
    [ { atomicNumber = 1, symbol = "H", name = "Hydrogen", nameOrigin = "Greek\u{00A0}elements\u{00A0}hydro-\u{00A0}and\u{00A0}-gen, meaning 'water-forming'", group = Group 1, period = 1, mass = "1.008" }
    , { atomicNumber = 2, symbol = "He", name = "Helium", nameOrigin = "Greek\u{00A0}h?lios, 'sun'", group = Group 18, period = 1, mass = "4.002602(2)" }
    , { atomicNumber = 3, symbol = "Li", name = "Lithium", nameOrigin = "Greek\u{00A0}líthos, 'stone'", group = Group 1, period = 2, mass = "6.94" }
    , { atomicNumber = 4, symbol = "Be", name = "Beryllium", nameOrigin = "beryl, a mineral (ultimately from the name of\u{00A0}Belur\u{00A0}in southern India)", group = Group 2, period = 2, mass = "9.0121831(5)" }
    , { atomicNumber = 5, symbol = "B", name = "Boron", nameOrigin = "borax, a mineral (from\u{00A0}Arabic\u{00A0}bawraq)", group = Group 13, period = 2, mass = "10.81" }
    , { atomicNumber = 6, symbol = "C", name = "Carbon", nameOrigin = "Latin\u{00A0}carbo, 'coal'", group = Group 14, period = 2, mass = "12.011" }
    , { atomicNumber = 7, symbol = "N", name = "Nitrogen", nameOrigin = "Greek\u{00A0}nítron\u{00A0}and\u{00A0}-gen, meaning 'niter-forming'", group = Group 15, period = 2, mass = "14.007" }
    , { atomicNumber = 8, symbol = "O", name = "Oxygen", nameOrigin = "Greek\u{00A0}oxy-\u{00A0}and\u{00A0}-gen, meaning 'acid-forming'", group = Group 16, period = 2, mass = "15.999" }
    , { atomicNumber = 9, symbol = "F", name = "Fluorine", nameOrigin = "Latin\u{00A0}fluere, 'to flow'", group = Group 17, period = 2, mass = "18.998403163(6)" }
    , { atomicNumber = 10, symbol = "Ne", name = "Neon", nameOrigin = "Greek\u{00A0}néon, 'new'", group = Group 18, period = 2, mass = "20.1797(6)" }
    , { atomicNumber = 11, symbol = "Na", name = "Sodium", nameOrigin = "English\u{00A0}soda\u{00A0}(the symbol Na is derived from\u{00A0}New Latin\u{00A0}natrium, coined from German\u{00A0}Natron, 'natron')", group = Group 1, period = 3, mass = "22.98976928(2)" }
    , { atomicNumber = 12, symbol = "Mg", name = "Magnesium", nameOrigin = "Magnesia, a district of Eastern\u{00A0}Thessaly\u{00A0}in\u{00A0}Greece", group = Group 2, period = 3, mass = "24.305" }
    , { atomicNumber = 13, symbol = "Al", name = "Aluminium", nameOrigin = "alumina, from Latin\u{00A0}alumen\u{00A0}(gen.\u{00A0}aluminis), 'bitter salt,\u{00A0}alum'", group = Group 13, period = 3, mass = "26.9815384(3)" }
    , { atomicNumber = 14, symbol = "Si", name = "Silicon", nameOrigin = "Latin\u{00A0}silex, 'flint' (originally\u{00A0}silicium)", group = Group 14, period = 3, mass = "28.085" }
    , { atomicNumber = 15, symbol = "P", name = "Phosphorus", nameOrigin = "Greek\u{00A0}ph?sphóros, 'light-bearing'", group = Group 15, period = 3, mass = "30.973761998(5)" }
    , { atomicNumber = 16, symbol = "S", name = "Sulfur", nameOrigin = "Latin\u{00A0}sulphur, 'brimstone'", group = Group 16, period = 3, mass = "32.06" }
    , { atomicNumber = 17, symbol = "Cl", name = "Chlorine", nameOrigin = "Greek\u{00A0}chl?rós, 'greenish yellow'", group = Group 17, period = 3, mass = "35.45" }
    , { atomicNumber = 18, symbol = "Ar", name = "Argon", nameOrigin = "Greek\u{00A0}argós, 'idle' (because of its\u{00A0}inertness)", group = Group 18, period = 3, mass = "39.948" }
    , { atomicNumber = 19, symbol = "K", name = "Potassium", nameOrigin = "New Latin\u{00A0}potassa, 'potash' (the symbol K is derived from Latin\u{00A0}kalium)", group = Group 1, period = 4, mass = "39.0983(1)" }
    , { atomicNumber = 20, symbol = "Ca", name = "Calcium", nameOrigin = "Latin\u{00A0}calx, 'lime'", group = Group 2, period = 4, mass = "40.078(4)" }
    , { atomicNumber = 21, symbol = "Sc", name = "Scandium", nameOrigin = "Latin\u{00A0}Scandia, 'Scandinavia'", group = Group 3, period = 4, mass = "44.955908(5)" }
    , { atomicNumber = 22, symbol = "Ti", name = "Titanium", nameOrigin = "Titans, the sons of the Earth goddess of Greek mythology", group = Group 4, period = 4, mass = "47.867(1)" }
    , { atomicNumber = 23, symbol = "V", name = "Vanadium", nameOrigin = "Vanadis, an\u{00A0}Old Norse\u{00A0}name for the Scandinavian goddess\u{00A0}Freyja", group = Group 5, period = 4, mass = "50.9415(1)" }
    , { atomicNumber = 24, symbol = "Cr", name = "Chromium", nameOrigin = "Greek\u{00A0}chróma, 'colour'", group = Group 6, period = 4, mass = "51.9961(6)" }
    , { atomicNumber = 25, symbol = "Mn", name = "Manganese", nameOrigin = "corrupted from\u{00A0}magnesia\u{00A0}negra; see\u{00A0}Magnesium", group = Group 7, period = 4, mass = "54.938043(2)" }
    , { atomicNumber = 26, symbol = "Fe", name = "Iron", nameOrigin = "English word (the symbol Fe is derived from Latin\u{00A0}ferrum)", group = Group 8, period = 4, mass = "55.845(2)" }
    , { atomicNumber = 27, symbol = "Co", name = "Cobalt", nameOrigin = "German\u{00A0}Kobold, 'goblin'", group = Group 9, period = 4, mass = "58.933194(3)" }
    , { atomicNumber = 28, symbol = "Ni", name = "Nickel", nameOrigin = "Nickel, a mischievous\u{00A0}sprite\u{00A0}of German miner mythology", group = Group 10, period = 4, mass = "58.6934(4)" }
    , { atomicNumber = 29, symbol = "Cu", name = "Copper", nameOrigin = "English word, from Latin\u{00A0}cuprum, from Ancient Greek\u{00A0}Kýpros\u{00A0}'Cyprus'", group = Group 11, period = 4, mass = "63.546(3)" }
    , { atomicNumber = 30, symbol = "Zn", name = "Zinc", nameOrigin = "Most likely from German\u{00A0}Zinke, 'prong' or 'tooth', though some suggest\u{00A0}Persian\u{00A0}sang, 'stone'", group = Group 12, period = 4, mass = "65.38(2)" }
    , { atomicNumber = 31, symbol = "Ga", name = "Gallium", nameOrigin = "Latin\u{00A0}Gallia, 'France'", group = Group 13, period = 4, mass = "69.723(1)" }
    , { atomicNumber = 32, symbol = "Ge", name = "Germanium", nameOrigin = "Latin\u{00A0}Germania, 'Germany'", group = Group 14, period = 4, mass = "72.630(8)" }
    , { atomicNumber = 33, symbol = "As", name = "Arsenic", nameOrigin = "French\u{00A0}arsenic, from Greek\u{00A0}arsenikón\u{00A0}'yellow arsenic' (influenced by\u{00A0}arsenikós, 'masculine' or 'virile'), from a\u{00A0}West Asian\u{00A0}wanderword\u{00A0}ultimately from\u{00A0}Old Iranian\u{00A0}*zarniya-ka, 'golden'", group = Group 15, period = 4, mass = "74.921595(6)" }
    , { atomicNumber = 34, symbol = "Se", name = "Selenium", nameOrigin = "Greek\u{00A0}sel?n?, 'moon'", group = Group 16, period = 4, mass = "78.971(8)" }
    , { atomicNumber = 35, symbol = "Br", name = "Bromine", nameOrigin = "Greek\u{00A0}brômos, 'stench'", group = Group 17, period = 4, mass = "79.904" }
    , { atomicNumber = 36, symbol = "Kr", name = "Krypton", nameOrigin = "Greek\u{00A0}kryptós, 'hidden'", group = Group 18, period = 4, mass = "83.798(2)" }
    , { atomicNumber = 37, symbol = "Rb", name = "Rubidium", nameOrigin = "Latin\u{00A0}rubidus, 'deep red'", group = Group 1, period = 5, mass = "85.4678(3)" }
    , { atomicNumber = 38, symbol = "Sr", name = "Strontium", nameOrigin = "Strontian, a village in\u{00A0}Scotland", group = Group 2, period = 5, mass = "87.62(1)" }
    , { atomicNumber = 39, symbol = "Y", name = "Yttrium", nameOrigin = "Ytterby, a village in\u{00A0}Sweden", group = Group 3, period = 5, mass = "88.90584(1)" }
    , { atomicNumber = 40, symbol = "Zr", name = "Zirconium", nameOrigin = "zircon, a mineral", group = Group 4, period = 5, mass = "91.224(2)" }
    , { atomicNumber = 41, symbol = "Nb", name = "Niobium", nameOrigin = "Niobe, daughter of king\u{00A0}Tantalus\u{00A0}from Greek mythology", group = Group 5, period = 5, mass = "92.90637(1)" }
    , { atomicNumber = 42, symbol = "Mo", name = "Molybdenum", nameOrigin = "Greek\u{00A0}molýbdaina, 'piece of\u{00A0}lead', from\u{00A0}mólybdos, 'lead'", group = Group 6, period = 5, mass = "95.95(1)" }
    , { atomicNumber = 43, symbol = "Tc", name = "Technetium", nameOrigin = "Greek\u{00A0}tekhn?tós, 'artificial'", group = Group 7, period = 5, mass = "[98]" }
    , { atomicNumber = 44, symbol = "Ru", name = "Ruthenium", nameOrigin = "New Latin\u{00A0}Ruthenia, 'Russia'", group = Group 8, period = 5, mass = "101.07(2)" }
    , { atomicNumber = 45, symbol = "Rh", name = "Rhodium", nameOrigin = "Greek\u{00A0}rhodóeis, 'rose-coloured', from\u{00A0}rhódon, 'rose'", group = Group 9, period = 5, mass = "102.90549(2)" }
    , { atomicNumber = 46, symbol = "Pd", name = "Palladium", nameOrigin = "the asteroid\u{00A0}Pallas, considered a planet at the time", group = Group 10, period = 5, mass = "106.42(1)" }
    , { atomicNumber = 47, symbol = "Ag", name = "Silver", nameOrigin = "English word (The symbol derives from Latin\u{00A0}argentum)", group = Group 11, period = 5, mass = "107.8682(2)" }
    , { atomicNumber = 48, symbol = "Cd", name = "Cadmium", nameOrigin = "New Latin\u{00A0}cadmia, from King\u{00A0}Kadmos", group = Group 12, period = 5, mass = "112.414(4)" }
    , { atomicNumber = 49, symbol = "In", name = "Indium", nameOrigin = "Latin\u{00A0}indicum, 'indigo' (colour found in its spectrum)", group = Group 13, period = 5, mass = "114.818(1)" }
    , { atomicNumber = 50, symbol = "Sn", name = "Tin", nameOrigin = "English word (The symbol derives from Latin\u{00A0}stannum)", group = Group 14, period = 5, mass = "118.710(7)" }
    , { atomicNumber = 51, symbol = "Sb", name = "Antimony", nameOrigin = "Latin\u{00A0}antimonium,\u{00A0}the origin of which\u{00A0}is uncertain:\u{00A0}folk etymologies\u{00A0}suggest it is derived from Greek\u{00A0}antí\u{00A0}('against') +\u{00A0}mónos\u{00A0}('alone'), or\u{00A0}Old French\u{00A0}anti-moine, 'Monk's bane', but it could plausibly be from or related to Arabic\u{00A0}?i?mid, 'antimony', reformatted as a Latin word. (The symbol derives from Latin\u{00A0}stibium\u{00A0}'stibnite'.)", group = Group 15, period = 5, mass = "121.760(1)" }
    , { atomicNumber = 52, symbol = "Te", name = "Tellurium", nameOrigin = "Latin\u{00A0}tellus, 'the ground, earth'", group = Group 16, period = 5, mass = "127.60(3)" }
    , { atomicNumber = 53, symbol = "I", name = "Iodine", nameOrigin = "French\u{00A0}iode, from Greek\u{00A0}ioeid?s, 'violet')", group = Group 17, period = 5, mass = "126.90447(3)" }
    , { atomicNumber = 54, symbol = "Xe", name = "Xenon", nameOrigin = "Greek\u{00A0}xénon, neuter form of\u{00A0}xénos\u{00A0}'strange'", group = Group 18, period = 5, mass = "131.293(6)" }
    , { atomicNumber = 55, symbol = "Cs", name = "Caesium", nameOrigin = "Latin\u{00A0}caesius, 'sky-blue'", group = Group 1, period = 6, mass = "132.90545196(6)" }
    , { atomicNumber = 56, symbol = "Ba", name = "Barium", nameOrigin = "Greek\u{00A0}barýs, 'heavy'", group = Group 2, period = 6, mass = "137.327(7)" }
    , { atomicNumber = 57, symbol = "La", name = "Lanthanum", nameOrigin = "Greek\u{00A0}lanthánein, 'to lie hidden'", group = La 1, period = 6, mass = "138.90547(7)" }
    , { atomicNumber = 58, symbol = "Ce", name = "Cerium", nameOrigin = "the dwarf planet\u{00A0}Ceres, considered a planet at the time", group = La 2, period = 6, mass = "140.116(1)" }
    , { atomicNumber = 59, symbol = "Pr", name = "Praseodymium", nameOrigin = "Greek\u{00A0}prásios\u{00A0}dídymos, 'green twin'", group = La 3, period = 6, mass = "140.90766(1)" }
    , { atomicNumber = 60, symbol = "Nd", name = "Neodymium", nameOrigin = "Greek\u{00A0}néos\u{00A0}dídymos, 'new twin'", group = La 4, period = 6, mass = "144.242(3)" }
    , { atomicNumber = 61, symbol = "Pm", name = "Promethium", nameOrigin = "Prometheus\u{00A0}of Greek mythology", group = La 5, period = 6, mass = "[145]" }
    , { atomicNumber = 62, symbol = "Sm", name = "Samarium", nameOrigin = "samarskite, a mineral named after Colonel\u{00A0}Vasili Samarsky-Bykhovets, Russian mine official", group = La 6, period = 6, mass = "150.36(2)" }
    , { atomicNumber = 63, symbol = "Eu", name = "Europium", nameOrigin = "Europe", group = La 7, period = 6, mass = "151.964(1)" }
    , { atomicNumber = 64, symbol = "Gd", name = "Gadolinium", nameOrigin = "gadolinite, a mineral named after\u{00A0}Johan Gadolin, Finnish chemist, physicist and mineralogist", group = La 8, period = 6, mass = "157.25(3)" }
    , { atomicNumber = 65, symbol = "Tb", name = "Terbium", nameOrigin = "Ytterby, a village in Sweden", group = La 9, period = 6, mass = "158.925354(8)" }
    , { atomicNumber = 66, symbol = "Dy", name = "Dysprosium", nameOrigin = "Greek\u{00A0}dysprósitos, 'hard to get'", group = La 10, period = 6, mass = "162.500(1)" }
    , { atomicNumber = 67, symbol = "Ho", name = "Holmium", nameOrigin = "New Latin\u{00A0}Holmia, 'Stockholm'", group = La 11, period = 6, mass = "164.930328(7)" }
    , { atomicNumber = 68, symbol = "Er", name = "Erbium", nameOrigin = "Ytterby, a village in Sweden", group = La 12, period = 6, mass = "167.259(3)" }
    , { atomicNumber = 69, symbol = "Tm", name = "Thulium", nameOrigin = "Thule, the ancient name for an unclear northern location", group = La 13, period = 6, mass = "168.934218(6)" }
    , { atomicNumber = 70, symbol = "Yb", name = "Ytterbium", nameOrigin = "Ytterby, a village in Sweden", group = La 14, period = 6, mass = "173.045(10)" }
    , { atomicNumber = 71, symbol = "Lu", name = "Lutetium", nameOrigin = "Latin\u{00A0}Lutetia, 'Paris'", group = La 15, period = 6, mass = "174.9668(1)" }
    , { atomicNumber = 72, symbol = "Hf", name = "Hafnium", nameOrigin = "New Latin\u{00A0}Hafnia, 'Copenhagen' (from\u{00A0}Danish\u{00A0}havn)", group = Group 4, period = 6, mass = "178.49(2)" }
    , { atomicNumber = 73, symbol = "Ta", name = "Tantalum", nameOrigin = "King\u{00A0}Tantalus, father of Niobe from Greek mythology", group = Group 5, period = 6, mass = "180.94788(2)" }
    , { atomicNumber = 74, symbol = "W", name = "Tungsten", nameOrigin = "Swedish\u{00A0}tung\u{00A0}sten, 'heavy stone' (The symbol is from\u{00A0}wolfram, the old name of the tungsten mineral\u{00A0}wolframite)", group = Group 6, period = 6, mass = "183.84(1)" }
    , { atomicNumber = 75, symbol = "Re", name = "Rhenium", nameOrigin = "Latin\u{00A0}Rhenus, 'the Rhine'", group = Group 7, period = 6, mass = "186.207(1)" }
    , { atomicNumber = 76, symbol = "Os", name = "Osmium", nameOrigin = "Greek\u{00A0}osm?, 'smell'", group = Group 8, period = 6, mass = "190.23(3)" }
    , { atomicNumber = 77, symbol = "Ir", name = "Iridium", nameOrigin = "Iris, the Greek goddess of the rainbow", group = Group 9, period = 6, mass = "192.217(2)" }
    , { atomicNumber = 78, symbol = "Pt", name = "Platinum", nameOrigin = "Spanish\u{00A0}platina, 'little silver', from\u{00A0}plata\u{00A0}'silver'", group = Group 10, period = 6, mass = "195.084(9)" }
    , { atomicNumber = 79, symbol = "Au", name = "Gold", nameOrigin = "English word (the symbol Au derives from Latin\u{00A0}aurum)", group = Group 11, period = 6, mass = "196.966570(4)" }
    , { atomicNumber = 80, symbol = "Hg", name = "Mercury", nameOrigin = "Mercury, Roman god of commerce, communication, and luck, known for his speed and mobility (the symbol Hg derives from the element's Latin name\u{00A0}hydrargyrum, from Greek\u{00A0}hydrárgyros, 'water-silver')", group = Group 12, period = 6, mass = "200.592(3)" }
    , { atomicNumber = 81, symbol = "Tl", name = "Thallium", nameOrigin = "Greek\u{00A0}thallós, 'green shoot or twig'", group = Group 13, period = 6, mass = "204.38" }
    , { atomicNumber = 82, symbol = "Pb", name = "Lead", nameOrigin = "English word (the symbol Pb derives from Latin\u{00A0}plumbum)", group = Group 14, period = 6, mass = "207.2(1)" }
    , { atomicNumber = 83, symbol = "Bi", name = "Bismuth", nameOrigin = "German\u{00A0}Wismut, from\u{00A0}weiß\u{00A0}Masse\u{00A0}'white mass', unless from Arabic", group = Group 15, period = 6, mass = "208.98040(1)" }
    , { atomicNumber = 84, symbol = "Po", name = "Polonium", nameOrigin = "Latin\u{00A0}Polonia, 'Poland' (the home country of\u{00A0}Marie Curie)", group = Group 16, period = 6, mass = "[209]" }
    , { atomicNumber = 85, symbol = "At", name = "Astatine", nameOrigin = "Greek\u{00A0}ástatos, 'unstable'", group = Group 17, period = 6, mass = "[210]" }
    , { atomicNumber = 86, symbol = "Rn", name = "Radon", nameOrigin = "radium", group = Group 18, period = 6, mass = "[222]" }
    , { atomicNumber = 87, symbol = "Fr", name = "Francium", nameOrigin = "France", group = Group 1, period = 7, mass = "[223]" }
    , { atomicNumber = 88, symbol = "Ra", name = "Radium", nameOrigin = "French\u{00A0}radium, from Latin\u{00A0}radius, 'ray'", group = Group 2, period = 7, mass = "[226]" }
    , { atomicNumber = 89, symbol = "Ac", name = "Actinium", nameOrigin = "Greek\u{00A0}aktís, 'ray'", group = Ac 1, period = 7, mass = "[227]" }
    , { atomicNumber = 90, symbol = "Th", name = "Thorium", nameOrigin = "Thor, the Scandinavian god of thunder", group = Ac 2, period = 7, mass = "232.0377(4)" }
    , { atomicNumber = 91, symbol = "Pa", name = "Protactinium", nameOrigin = "proto-\u{00A0}(from Greek\u{00A0}prôtos, 'first, before') +\u{00A0}actinium, which is produced through the radioactive decay of protactinium", group = Ac 3, period = 7, mass = "231.03588(1)" }
    , { atomicNumber = 92, symbol = "U", name = "Uranium", nameOrigin = "Uranus, the seventh planet in the Solar System", group = Ac 4, period = 7, mass = "238.02891(3)" }
    , { atomicNumber = 93, symbol = "Np", name = "Neptunium", nameOrigin = "Neptune, the eighth planet in the Solar System", group = Ac 5, period = 7, mass = "[237]" }
    , { atomicNumber = 94, symbol = "Pu", name = "Plutonium", nameOrigin = "the dwarf planet\u{00A0}Pluto, considered the ninth planet in the Solar System at the time", group = Ac 6, period = 7, mass = "[244]" }
    , { atomicNumber = 95, symbol = "Am", name = "Americium", nameOrigin = "The Americas, as the element was first synthesised on the continent, by analogy with\u{00A0}europium", group = Ac 7, period = 7, mass = "[243]" }
    , { atomicNumber = 96, symbol = "Cm", name = "Curium", nameOrigin = "Pierre Curie\u{00A0}and\u{00A0}Marie Curie, French physicists and chemists", group = Ac 8, period = 7, mass = "[247]" }
    , { atomicNumber = 97, symbol = "Bk", name = "Berkelium", nameOrigin = "Berkeley, California, where the element was first synthesised, by analogy with\u{00A0}terbium", group = Ac 9, period = 7, mass = "[247]" }
    , { atomicNumber = 98, symbol = "Cf", name = "Californium", nameOrigin = "California, where the element was first synthesised", group = Ac 10, period = 7, mass = "[251]" }
    , { atomicNumber = 99, symbol = "Es", name = "Einsteinium", nameOrigin = "Albert Einstein, German physicist", group = Ac 11, period = 7, mass = "[252]" }
    , { atomicNumber = 100, symbol = "Fm", name = "Fermium", nameOrigin = "Enrico Fermi, Italian physicist", group = Ac 12, period = 7, mass = "[257]" }
    , { atomicNumber = 101, symbol = "Md", name = "Mendelevium", nameOrigin = "Dmitri Mendeleev, Russian chemist and inventor who proposed the\u{00A0}periodic table", group = Ac 13, period = 7, mass = "[258]" }
    , { atomicNumber = 102, symbol = "No", name = "Nobelium", nameOrigin = "Alfred Nobel, Swedish chemist and engineer", group = Ac 14, period = 7, mass = "[259]" }
    , { atomicNumber = 103, symbol = "Lr", name = "Lawrencium", nameOrigin = "Ernest O. Lawrence, American physicist", group = Ac 15, period = 7, mass = "[266]" }
    , { atomicNumber = 104, symbol = "Rf", name = "Rutherfordium", nameOrigin = "Ernest Rutherford, chemist and physicist from New Zealand", group = Group 4, period = 7, mass = "[267]" }
    , { atomicNumber = 105, symbol = "Db", name = "Dubnium", nameOrigin = "Dubna, Russia, where the\u{00A0}Joint Institute for Nuclear Research\u{00A0}is located", group = Group 5, period = 7, mass = "[268]" }
    , { atomicNumber = 106, symbol = "Sg", name = "Seaborgium", nameOrigin = "Glenn T. Seaborg, American chemist", group = Group 6, period = 7, mass = "[269]" }
    , { atomicNumber = 107, symbol = "Bh", name = "Bohrium", nameOrigin = "Niels Bohr, Danish physicist", group = Group 7, period = 7, mass = "[270]" }
    , { atomicNumber = 108, symbol = "Hs", name = "Hassium", nameOrigin = "New Latin\u{00A0}Hassia, 'Hesse' (a state in Germany)", group = Group 8, period = 7, mass = "[270]" }
    , { atomicNumber = 109, symbol = "Mt", name = "Meitnerium", nameOrigin = "Lise Meitner, Austrian physicist", group = Group 9, period = 7, mass = "[278]" }
    , { atomicNumber = 110, symbol = "Ds", name = "Darmstadtium", nameOrigin = "Darmstadt, Germany, where the element was first synthesised", group = Group 10, period = 7, mass = "[281]" }
    , { atomicNumber = 111, symbol = "Rg", name = "Roentgenium", nameOrigin = "Wilhelm Conrad Röntgen, German physicist", group = Group 11, period = 7, mass = "[282]" }
    , { atomicNumber = 112, symbol = "Cn", name = "Copernicium", nameOrigin = "Nicolaus Copernicus, Polish astronomer", group = Group 12, period = 7, mass = "[285]" }
    , { atomicNumber = 113, symbol = "Nh", name = "Nihonium", nameOrigin = "Japanese\u{00A0}Nihon, 'Japan' (where the element was first synthesised)", group = Group 13, period = 7, mass = "[286]" }
    , { atomicNumber = 114, symbol = "Fl", name = "Flerovium", nameOrigin = "Flerov Laboratory of Nuclear Reactions, part of\u{00A0}JINR, where the element was synthesised; itself named after\u{00A0}Georgy Flyorov, Russian physicist", group = Group 14, period = 7, mass = "[289]" }
    , { atomicNumber = 115, symbol = "Mc", name = "Moscovium", nameOrigin = "Moscow Oblast, Russia, where the element was first synthesised", group = Group 15, period = 7, mass = "[290]" }
    , { atomicNumber = 116, symbol = "Lv", name = "Livermorium", nameOrigin = "Lawrence Livermore National Laboratory\u{00A0}in\u{00A0}Livermore, California, which collaborated with\u{00A0}JINR\u{00A0}on its synthesis", group = Group 16, period = 7, mass = "[293]" }
    , { atomicNumber = 117, symbol = "Ts", name = "Tennessine", nameOrigin = "Tennessee, United States (where\u{00A0}Oak Ridge National Laboratory\u{00A0}is located)", group = Group 17, period = 7, mass = "[294]" }
    , { atomicNumber = 118, symbol = "Og", name = "Oganesson", nameOrigin = "Yuri Oganessian, Russian physicist", group = Group 18, period = 7, mass = "[294]" }
    ]
