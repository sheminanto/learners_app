var signs = [
  [
    {"eng": "Stop", "img": "r1.png", "mal": "നിർബന്ധമായും നിർത്തുക "},
    {"eng": "Give way", "img": "r3.png", "mal": "വഴി നൽകി ഓടിക്കണം "},
    {
      "eng": "One way",
      "img": "r4.png",
      "mal": "പ്രവേശനം എതിർ ദിശയിലെ വാഹനങ്ങൾക്കു മാത്രം "
    },
    {
      "eng": "One-way",
      "img": "r24.png",
      "mal": "പ്രവേശനം നേരെ പോകുന്ന വാഹനങ്ങൾക്കു മാത്രം"
    },
    {
      "eng": "Vehicles prohibited in both directions",
      "img": "r80.png",
      "mal": "ഇരു ദിശയിലും വാഹനങ്ങൾ നിരോധിച്ചിരിക്കുന്നു "
    },
    {
      "eng": "U-turn prohibited",
      "img": "r5.png",
      "mal": "'U' ടേൺ നിരോധിച്ചിരിക്കുന്നു "
    },
    {
      "eng": "Right turn prohibited",
      "img": "r8.png",
      "mal": "വലതു വശത്തേക്ക് തിരിയാൻ പാടില്ല "
    },
    {
      "eng": "Horn prohibited",
      "img": "r9.png",
      "mal": "ഹോൺ മുഴക്കൽ നിരോധിച്ചിരിക്കുന്നു "
    },
    {
      "eng": "Overtaking prohibited",
      "img": "r17.png",
      "mal": "ഓവർടേക്കിങ് നിരോധിച്ചിരിക്കുന്നു"
    },
    {"eng": "No entry", "img": "r19.png", "mal": "പ്രവേശിക്കാൻ പാടില്ല"},
    {
      "eng": "No entry for motor vehicles",
      "img": "r25.png",
      "mal": "മോട്ടോർ വാഹനങ്ങൾക്കു പ്രവേശനമില്ല "
    },
    {
      "eng": "Trucks Prohibited",
      "img": "r26.png",
      "mal": "ട്രക്ക് നിരോധിച്ചിരിക്കുന്നു"
    },
    {
      "eng": "Bullock cart prohibited",
      "img": "r27.png",
      "mal": "കാളവണ്ടി നിരോധിച്ചിരിക്കുന്നു "
    },
    {
      "eng": "Bullock cart & Hand cart prohibited",
      "img": "r81.png",
      "mal": "കാളവണ്ടിയും ഉന്തുവണ്ടിയും നിരോധിച്ചിരിക്കുന്നു"
    },
    {
      "eng": "Tonga Prohibited",
      "img": "r82.png",
      "mal": "കുതിരവണ്ടിക്ക് പ്രവേശനമില്ല "
    },
    {
      "eng": "Hand cart prohibited",
      "img": "r83.png",
      "mal": "ഉന്തുവണ്ടിക്ക് പ്രവേശനമില്ല"
    },
    {
      "eng": "Cycle Prohibited",
      "img": "r84.png",
      "mal": "സൈക്കിളുകള്ക്ക് പ്രവേശനമില്ല "
    },
    {
      "eng": "Pedestrians prohibited",
      "img": "r28.png",
      "mal": "കാൽനടക്കാർക്ക് നിരോധനം"
    },
    {
      "eng": "Left turn Prohibited",
      "img": "r29.png",
      "mal": "ഇടതു വശത്തേക്ക് തിരിയാൻ പാടില്ല "
    },
    {
      "eng": "Drive the vehicle not exceeding 50 km/hr.",
      "img": "r30.png",
      "mal": "വേഗത പരിധി 50  KMPH "
    },
    {
      "eng": "No entry for vehicles having more than 2 meters width.",
      "img": "r31.png",
      "mal": "വീധി പരിധി 2 മീറ്റർ  "
    },
    {
      "eng": "Entry for vehicles having height not exceeding 3.5 meters.",
      "img": "r32.png",
      "mal": "ഉയരപരിധി 3.5 മീറ്റർ "
    },
    {"eng": "Length Limit", "img": "r85.png", "mal": "നീള പരിധി 10  മീറ്റർ  "},
    {"eng": "Load Limit", "img": "r87.png", "mal": "ഭാരപരിധി 5 ടൺ"},
    {
      "eng": "Axle weight limit",
      "img": "r43.png",
      "mal": "ആക്‌സിൽ ലോഡ് പരിധി 4 ടൺ"
    },
    {"eng": "No parking", "img": "r23.png", "mal": "പാർക്കിംഗ് നിരോധിത മേഖല"},
    {
      "eng": "No Stopping or standing",
      "img": "r33.png",
      "mal": "നിർത്താതെ പോവുക "
    },
    {
      "eng": "End of speed restriction",
      "img": "r14.png",
      "mal": "നിയന്ത്രിത മേഖല കഴിഞ്ഞു"
    },
    {
      "eng": "Compulsory turn left",
      "img": "r2.png",
      "mal": "ഇടത്തോട്ട് തിരിയുക"
    },
    {"eng": "Ahead only", "img": "r34.png", "mal": "നേരെ മുന്നോട്ട് പോവുക"},
    {
      "eng": "Compulsory ahead or turn left",
      "img": "r35.png",
      "mal": "മുന്നോട്ടോ ഇടത്തോട്ടോ മാത്രം"
    },
    {
      "eng": "Compulsory keep left",
      "img": "r36.png",
      "mal": "ഇടതു വശം ചേർത്ത് ഓടിക്കുക"
    },
    {
      "eng": "Compulsory go ahead or turn to right",
      "img": "r52.png",
      "mal": "നേരെയോ വലതു വശത്തേക്കോ തിരിഞ്ഞു പോവുക "
    },
    {
      "eng": "Sound horn compulsory",
      "img": "r21.png",
      "mal": "ഹോൺ നിർബന്ധമായും മുഴക്കണം"
    },
    {
      "eng": "Compulsory turn right",
      "img": "r22.png",
      "mal": "വലത്തേക്ക് തിരിഞ്ഞു പോവുക"
    },
    {
      "eng": "Compulsory Cycle Track",
      "img": "r86.png",
      "mal": "സൈക്കിൾ ട്രാക്ക് "
    },
  ],
//Cautionary
  [
    {
      "eng": "Right Hand Curve",
      "img": "r37.png",
      "mal": "വലത്തോട്ട് തിരിയുന്ന വളവ്"
    },
    {
      "eng": "Left Hand Curve",
      "img": "r38.png",
      "mal": "ഇടത്തോട്ട് തിരിയുന്ന വളവ്"
    },
    {
      "eng": "Right Hair Pin Bend",
      "img": "r39.png",
      "mal": "ഹെയർ പിൻ ബെൻഡ് വലത്തോട്ട്"
    },
    {
      "eng": "Left Hair Pin Bend",
      "img": "r40.png",
      "mal": "ഹെയർ പിൻ ബെൻഡ് ഇടത്തോട്ട്"
    },
    {
      "eng": "Right Reverse Bend",
      "img": "r41.png",
      "mal": "കൊടും വളവുകൾ വലത്തേയ്ക്കും ഇടത്തേയ്ക്കും"
    },
    {
      "eng": "Left Reverse Bend",
      "img": "r42.png",
      "mal": "കൊടും വളവുകൾ ഇടത്തേയ്ക്കും വലത്തേയ്ക്കും"
    },
    {"eng": "Left Side Road", "img": "r20.png", "mal": "ശാഖാ റോഡ് ഇടതുവശം"},
    {"eng": "Right Side Road", "img": "r44.png", "mal": "ശാഖാ റോഡ് വലതുവശം"},
    {"eng": "Cross Road", "img": "r18.png", "mal": "റോഡുകൾ ക്രോസ് ചെയ്യുന്നു"},
    {
      "eng": "'T' Intersection",
      "img": "r45.png",
      "mal": "മെയിൻ റോഡിലേക്ക് കടക്കുന്നു"
    },
    {"eng": "Round About", "img": "r46.png", "mal": "ദ്വീപ് കറങ്ങി പോവുക "},
    {"eng": "Dangerous Dip", "img": "r47.png", "mal": "അപകടകരമായ കുഴിയുണ്ട്"},
    {
      "eng": "Y-intersection left",
      "img": "r49.png",
      "mal": "'Y' ജംഗ്ഷൻ ഇടതുവശം"
    },
    {
      "eng": "Y-intersection right",
      "img": "r50.png",
      "mal": "'Y' ജംഗ്ഷൻ വലതുവശം"
    },
    {
      "eng": "Y-intersection",
      "img": "r51.png",
      "mal": "റോഡ് രണ്ടായി പിരിയുന്നു"
    },
    {"eng": "Slippery Road", "img": "r53.png", "mal": "തെന്നുന്ന റോഡ്"},
    {
      "eng": "Staggered Intersection\n(Left-Right)",
      "img": "r88.png",
      "mal": "ശാഖാ റോഡുകൾ ഇടത്-വലത്"
    },
    {
      "eng": "Staggered Intersection\n(Right-Left)",
      "img": "r89.png",
      "mal": "ശാഖാ റോഡുകൾ വലത്-ഇടത്"
    },
    {"eng": "Loose Gravel", "img": "r54.png", "mal": "ചരൽ മണ്ണ് നിറഞ്ഞ റോഡ്"},
    {"eng": "Cycle Crossing", "img": "r55.png", "mal": "സൈക്കിൾ ക്രോസിങ്"},
    {
      "eng": "Pedestrian Crossing",
      "img": "r6.png",
      "mal": "പദയാത്രക്കാർ ക്രോസ് ചെയ്യുന്ന സ്ഥലം"
    },
    {
      "eng": "Possibility of cattle on road",
      "img": "r56.png",
      "mal": "കന്നുകാലികൾ റോഡ് മുറിഞ്ഞു കടക്കാൻ സാധ്യതയുണ്ട്"
    },
    {"eng": "School Ahead", "img": "r57.png", "mal": " സ്കൂൾ"},
    {
      "eng": "Men at work",
      "img": "r58.png",
      "mal": "റോഡ് ജോലിക്കാരെ സുക്ഷിക്കണം"
    },
    {"eng": "Falling Rocks", "img": "r59.png", "mal": "പാറ വീഴുന്ന റോഡ്"},
    {"eng": "Ferry", "img": "r60.png", "mal": "കടത്ത് മുന്നിലുണ്ട്"},
    {"eng": "Steep Ascent", "img": "r61.png", "mal": "ചെങ്കുത്തായ കയറ്റം"},
    {"eng": "Steep Descent", "img": "r62.png", "mal": "ചെങ്കുത്തായ ഇറക്കം"},
    {"eng": "Narrow Bridge", "img": "r10.png", "mal": "ഇടുങ്ങിയ പാലം"},
    {
      "eng": "Narrow Road Ahead",
      "img": "r15.png",
      "mal": "മുന്നിൽ റോഡ് ഇടുങ്ങുന്നു"
    },
    {
      "eng": "Road Widens Ahead",
      "img": "r63.png",
      "mal": "റോഡ് വീതി കൂടി വരുന്നു"
    },
    {
      "eng": "Gap in Median",
      "img": "r64.png",
      "mal": "ഭാഗിക്കപ്പെട്ടിട്ടുള്ള റോഡിൽ മദ്ധ്യഭാഗത്തുള്ള ഇടവഴി"
    },
    {
      "eng": "Barrier Ahead",
      "img": "r66.png",
      "mal": "മുന്നിൽ ചെക്ക് പോസ്റ്റ് ഉണ്ട്"
    },
    {
      "eng": "Humb or Rough Road",
      "img": "r65.png",
      "mal": "കുണ്ടും കുഴിയുമുള്ള വഴി"
    },
    {
      "eng": "Unguarded Railway Crossing (100 mts)",
      "img": "r92.png",
      "mal": "കാവൽക്കാരനും ഗേറ്റും ഇല്ലാത്ത ലെവൽ ക്രോസിങ് (100 മീറ്റർ)"
    },
    {
      "eng": "Unguarded Railway Crossing (200 mts)",
      "img": "r16.png",
      "mal": "കാവൽക്കാരനും ഗേറ്റും ഇല്ലാത്ത ലെവൽ ക്രോസിങ് (200 മീറ്റർ)"
    },
    {
      "eng": "Guarded Railway Crossing (100 mts)",
      "img": "r93.png",
      "mal": "കാവൽക്കാരനും ഗേറ്റും ഉള്ള  ലെവൽ ക്രോസിങ് (100 മീറ്റർ)"
    },
    {
      "eng": "Guarded Railway Crossing (200 mts)",
      "img": "r48.png",
      "mal": "കാവൽക്കാരനും ഗേറ്റും ഉള്ള  ലെവൽ ക്രോസിങ് (200 മീറ്റർ)"
    },
  ],

  //Informatory
  [
    {
      "eng": "Public Telephone",
      "img": "r95.png",
      "mal": "ടെലിഫോൺ ബൂത്ത് മുന്നിലുണ്ട്"
    },
    {
      "eng": "Petrol Pump",
      "img": "r96.png",
      "mal": "പെട്രോൾ പമ്പ് മുന്നിലുണ്ട്"
    },
    {"eng": "Hospital", "img": "r11.png", "mal": "ആശുപത്രി മുന്നിലുണ്ട് "},
    {
      "eng": "First Aid Post",
      "img": "r12.png",
      "mal": "ഫസ്റ്റ് എയ്ഡ് പോസ്റ്റ് "
    },
    {"eng": "Eating Place", "img": "r97.png", "mal": "ഭക്ഷണശാല മുന്നിലുണ്ട് "},
    {"eng": "Light Refreshment", "img": "r98.png", "mal": "ലഘു ഭക്ഷണശാല"},
    {"eng": "Resting Place", "img": "r13.png", "mal": "വിശ്രമസ്ഥലം"},
    {"eng": "No Through Side Road", "img": "r67.png", "mal": "സൈഡ് റോഡ് തടസം"},
    {"eng": "No Through Road", "img": "r68.png", "mal": "വഴി തടസം"},
    {"eng": "Park This Side", "img": "r7.png", "mal": "ഇവിടെ പാർക്ക് ചെയ്യുക"},
    {
      "eng": "Parking Both Side",
      "img": "r69.png",
      "mal": "പാർക്കിംഗ് ഇരുവശത്തും"
    },
    {
      "eng": "Scooter & Motorcycle Stand",
      "img": "r70.png",
      "mal": "സ്കൂട്ടർ / മോട്ടോർ സൈക്കിൾ  സ്റ്റാൻഡ്"
    },
    {
      "eng": "Cycle Stand",
      "img": "r94.png",
      "mal": "പാർക്കിംഗ് സൈക്കിളുകൾ മാത്രം"
    },
    {"eng": "Taxi Stand", "img": "r71.png", "mal": "പാർക്കിംഗ് ടാക്സി"},
    {
      "eng": "Autorickshaw Stand",
      "img": "r72.png",
      "mal": "പാർക്കിംഗ് ഓട്ടോറിക്ഷ"
    },
  ]
];
