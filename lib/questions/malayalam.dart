import '../questionClass.dart';

// find out answers
// check for repeteted questions

var malayalam = [
  Question(
      "സ്‌കൂള്‍ ബസുകള്‍ കുട്ടികളെ കയറ്റുന്നതിനോ ഇറക്കുന്നതിനോ നിര്‍ത്തിയിരിക്കുമ്പോള്‍",
      1, [
    "ഹോണ്‍ മുഴക്കി വരുന്ന വേഗതയില്‍ പോകുക കുട്ടികള്‍ ആ ഭാഗത്ത് ഇറങ്ങി ഓടാന്‍ സാധ്യതയുണ്ടെന്ന്",
    "മനസിലാക്കി വളരെ കരുതലോടെ വേഗത കുറച്ച്‌ പോകുക.",
    "പ്രത്യേക ശ്രദ്ധ ആവശ്യമില്ല",
  ]),
  Question("ലോറിയില്‍ ചരക്കുകള്‍ കയറ്റുമ്പോള്‍, ഇരുവശത്തേക്കും", -1, [
    "30 സെ. മീ. വരെ തള്ളിനില്‍ക്കാം",
    "തള്ളിനില്‍ക്കാന്‍ പാടില്ല",
    "50 സെ. മീ. വരെ തള്ളിനില്‍ക്കാം"
  ]),
  Question("പുതുതായി വാങ്ങിയ ഒര്‍ കാറിന്റെ ഒറ്റത്തവണ നികുതി", 1, [
    "അഞ്ചു വര്‍ഷത്തേക്ക് ആണ്",
    "15 വര്‍ഷത്തേക്ക് ആണ്",
    "വാഹനത്തിന്റെ രജിസ്ട്രേഷന്‍ കാലാവധി തീരുന്നതു വരെ"
  ]),
  Question("താഴെ പറയുന്ന സ്ഥലത്ത് പാര്‍ക്കിംഗ് നിരോധിച്ചിരിക്കുന്നു.", 0,
      ["ആശുപത്രിയുടെ പ്രവേശന കവാടം", "റോഡിന്റെ ഇടതു വശം", "കമ്പോളം"]),
  Question(
      "ഒരു സ്യകാര്യ മോട്ടോര്‍ കാറിന് വിദ്യാഭ്യാസ സ്ഥാപനത്തിന് അരികെ ഉപയോഗിക്കാവുന്ന പരമാവധി വേഗത",
      -1,
      ["40 കി.മീ", "25 കി.മീ", "30 കി.മീ"]),
  Question("നിരോധിച്ചിട്ടില്ലാത്ത ഹോണ്‍", 2,
      ["എയര്‍ ഹോണ്‍", "മള്‍ട്ടി ടോണ്‍ ഹോണ്‍", "ഇലക്‌ട്രിക് ഹോണ്‍"]),
  Question("നഗരാതിര്‍ത്തിക്കുള്ളില്‍ ഹെവി മോട്ടോര്‍ വാഹനങ്ങളുടെ പരമാവധി വേഗത",
      -1, ["40 കി.മീ", "45 കി.മീ", "60 കി.മീ"]),
  Question("നമ്മുടെ വാഹനത്തെ മറ്റൊരു വാഹനം ഓവര്‍ടേക്ക് ചെയ്യുമ്പോള്‍", 0, [
    "നമ്മുടെ വാഹനത്തിന്റെ വേഗത വര്‍ദ്ധിപ്പിക്കരുത്",
    "വേഗത വര്‍ദ്ധിപ്പിക്കാം",
    "ശ്രദ്ധയോടെ വേഗത വര്‍ദ്ധിപ്പിക്കാം"
  ]),
  Question("മോട്ടോര്‍ വാഹന നിയമം 112-)0 വകുപ്പ് അനുസരിച്ച്", -1, [
    "വേഗത പരിധി ലംഘിക്കുവാന്‍ പാടില്ല",
    "ഡ്രൈവര്‍ മദ്യപിച്ച് വാഹനമോടിക്കരുത്",
    "ടാക്സ് അടക്കാതെ വാഹനം ഓടിക്കരുത്"
  ]),
  Question("മലമ്പാതകളില്‍ മോട്ടോര്‍ സൈക്കിള്‍ ഓടിക്കാവുന്ന പരമാവധി വേഗത", -1,
      ["30 കി.മീ", "35 കി.മീ", "45 കി.മീ"]),
  Question("നിരോധിച്ചിട്ടില്ലാത്ത ഹോണ്‍", -1,
      ["എയര്‍ ഹോണ്‍", "മള്‍ട്ടി ടോണ്‍ ഹോണ്‍", "ഇലക്‌ട്രിക് ഹോണ്‍"]),
  Question("ഈ അടയാളം എന്തിനെ സുചിപ്പിക്കുന്നു?", 0, [
    "റോഡ് ഗതാഗതം നിരോധിച്ചിരിക്കുന്നു",
    "പാര്‍ക്കിംഗ് നിരോധിച്ചിരിക്കുന്നു",
    "വേഗത നിയന്ത്രണം അവസാനിച്ചിരിക്കുന്നു"
  ]),
  Question(
      "സീബ്രാ ക്രോസിംഗില്‍ കാല്‍ നടക്കാര്‍ റോഡ് മുറിച്ചു കടക്കുവാനുള്ള ഭാവത്തില്‍ നില്‍ക്കുന്നു. ആ സമയം വാഹനം ഓടിച്ചു ചെല്ലുന്ന ഡ്രൈവര്‍",
      -1, [
    "വേഗത കുറച്ച് ഹോണടിച്ച് കടന്നു പോകണം",
    "ഹോണടിച്ച് മുന്നറിയിപ്പ് കൊടുത്ത് പോകണം",
    "വാഹനം നിര്‍ത്തി കാല്‍നടക്കാര്‍ റോഡ് മുറിച്ച് കടക്കുന്നതു വരെ കാത്തിരിക്കണം"
  ]),
  Question(
      "ഇരുചക്ര വാഹനങ്ങളില്‍ ഓടിക്കുമ്പോള്‍ ഇടതു ഭാഗത്തേക്ക് തിരിയുന്നതിനു മുമ്പായി",
      -1, [
    "ഇടതു കൈ ഇടത്തോട്ട് നീട്ടി സിഗ്നല്‍ കാണിക്കണം",
    "പ്രത്യേകിച്ച് സിഗ്നലുകളൊന്നും കണിക്കേണ്ടതില്ല",
    "വലതു കൈ കൊണ്ട് ഇടത്തോട്ടുള്ള സിഗ്നല്‍ കാണിക്കണം"
  ]),
  Question(
      "ഒരു ഓട്ടോറിക്ഷ കേരളത്തിലെ പൊതു നിരത്തുകളില്‍ ഓടിക്കുവാന്‍ അനുവദിച്ചിട്ടുള്ള കൂടിയ വേഗത",
      -1,
      ["40 കി.മീ", "25 കി.മീ", "50 കി.മീ"]),
  Question("ഡിഫന്‍സീവ്‌ ഡ്രൈവിംഗ്‌ എന്നാല്‍ എന്താണ്?", -1, [
    "റോഡ്‌ ഉപയോഗിക്കുന്ന മറ്റുള്ളവരില്‍ നിന്നും നിയമലംഘനമുണ്ടായി അപകടം സംഭവിച്ചേക്കാം എന്ന മുന്‍കരുതലോടെ സ്യയം രക്ഷാര്‍ത്ഥം വാഹനം ഓടിക്കുന്നത്‌",
    "സിഗ്നലുകള്‍ പോലും അവഗണിച്ച്‌ ക്ര്ത്യസമയത്ത്‌ ലക്ഷ്യസ്ഥാനത്ത്‌ എത്തുന്നതിനുവേണ്ടിയുള്ള ഡ്രൈവിംഗ്‌",
    "റോഡുപയോഗിക്കുന്ന മറ്റുള്ളവര്‍ ശ്രദ്ധിച്ചുകൊള്ളും എന്ന കരുതലോടെ വാഹനം ഓടിക്കുന്നത്‌"
  ]),
  Question(
      "നിങ്ങള്‍ മറ്റൊരു വാഹനത്തിന്റെ പുറകെ ഓടിച്ചു പോകുമ്പോള്‍ മുന്നിലുള്ള വാഹനത്തില്‍ നിന്ന്‌",
      -1, [
    "5 മീറ്റര്‍ അകലത്തിലായിരിക്കണം",
    "10 മീറ്റര്‍ അകലത്തിലായിരിക്കണം",
    "മുമ്പിലുള്ള വാഹനം പെട്ടെന്ന്‌ ബ്രേക്ക്‌ ഇട്ടാലും സുരക്ഷിതമായിരിക്കത്തക്ക അകലത്തിലായിരിക്കണം"
  ]),
  Question("ഏത്‌ വാഹനത്തിനും നിര്‍ബന്ധമുള്ളതാണ്", 0, [
    "കോംപ്രിഹെന്‍സീവ്‌ ഇന്‍ഷുറന്‍സ്",
    "തേര്‍ഡ് പാര്‍ട്ടി ഇന്‍ഷുറന്‍സ്‌",
    "ലൈഫ്‌ ഇന്‍ഷുറന്‍സ്‌"
  ]),
  Question("വാഹനം പാര്‍ക്ക് ചെയ്യുന്നത് നിരോധിച്ചിട്ടുള്ള ഒരു സ്ഥലം", 1, [
    "വണ്‍-വേ റോഡില്‍",
    "പാര്‍ക്ക് ചെയ്തിരിക്കുന്ന ഒരു വാഹനത്തിന്റെ മുമ്പില്‍",
    "നടപ്പാതയില്‍"
  ]),
  Question(
      "മണിക്കൂറില്‍ 80 കി. മീറ്ററില്‍ കൂടുതല്‍ വേഗതയില്‍ ഈ സംസ്ഥാനത്തു ഓടിക്കാവുന്ന ഒരേയൊരു വാഹനം",
      -1,
      ["മോട്ടോര്‍ സൈക്കിള്‍", "മോട്ടോര്‍ കാര്‍", "പാസഞ്ചര്‍ ബസ്‌"]),
  Question("യു-ടേണ്‍ തിരിയുവാന്‍ പാടില്ലാത്ത സാഹചര്യം", -1, [
    "ട്രാഫിക്ക് നിയന്ത്രണം ഏര്‍പ്പെടുത്തിയിട്ടില്ലാത്ത റോഡില്‍",
    "തുടര്‍ച്ചയായി വാഹനങ്ങള്‍ പൊയ്ക്കൊണ്ടിരിക്കുന്ന റോഡില്‍",
    "ഇടതു വശത്തു കൂടി വാഹനങ്ങള്‍ കടന്നു പോകുന്നുണ്ടെങ്കില്‍"
  ]),
  Question("ഒരു ഡ്രൈവര്‍ തന്റെ വാഹനം കഴിവതും റോഡിന്റെ", 1, [
    "മദ്ധ്യഭാഗത്തുകൂടി ഓടിക്കണം",
    "ഇടതുവശം ചേര്‍ന്ന് ഓടിക്കണം",
    "വലതുവശം ചേര്‍ന്ന് ഓടിക്കണം"
  ]),
  Question("താഴെ പറയുന്ന സ്ഥലത്ത് പാര്‍ക്കിംഗ് നിരോധിച്ചിരിക്കുന്നു", -1, [
    "ഫയര്‍ എന്‍‌ജിന്‍ വെള്ളം ശേഖരിക്കുന്ന പൈപ്പുകള്‍ മറച്ചു കൊണ്ട്",
    "പൊതു കിണറുകള്‍ക്ക് സമീപം",
    "റോഡിന്റെ ഇടതു വശത്ത്"
  ]),
  Question(
      "മുന്നില്‍ പോകുന്ന വാഹത്തെ ഓവര്‍ടേക്ക് ചെയ്യുവാന്‍ അനുവദിച്ചിട്ടുളള ഒരു സാഹചര്യം",
      -1, [
    "റോഡിന് വേണ്ടത്ര വീതിയുണ്ടെങ്കില്‍",
    "ഇറക്കം ഇറങ്ങൂമ്പോള്‍",
    "മുന്‍പിലുള്ള വാഹനം വേഗത കുറച്ച് , കടന്നുപോകുവാനുള്ള സിഗ്നല്‍ നല്‍കുമ്പോള്‍"
  ]),
  Question(
      "ഒരു ചരക്കുവാഹനത്തിന്റെ പുറകറ്റത്തുനിന്നും തള്ളിനില്‍ക്കാവുന്ന ലോഡിന്റെ പരമാവധി നീളം",
      -1,
      ["150 സെ.മീ", "100 സെ.മീ", "120 സെ.മീ"]),
  Question(
      "പ്രകടനങ്ങള്‍, ഘോഷയാത്രകള്‍, പോലീസ് മാര്‍ച്ച്, മുതലായവ കടന്നുപോകുന്ന റോഡില്‍ ഒരു വാഹനം ഓടിക്കുവാന്‍ അനിവദിച്ചിട്ടുള്ള പരമാവധി വേഗത",
      0, [
    "മണിക്കൂറില്‍ 15 കി. മീ.",
    "മണിക്കൂറില്‍ 25 കി. മീ.",
    "മണിക്കൂറില്‍ 35 കി. മീ."
  ]),
  Question("ഒരു ട്രാന്‍സ്‌പോര്‍ട്ട് വാഹനം എങ്ങനെ തിരിച്ചറിയും?", 1, [
    "വാഹനത്തിന്റെ ടയര്‍ നോക്കി",
    "വാഹനത്തിന്റെ നിറം നോക്കി",
    "വാഹനത്തിന്റെ നമ്പര്‍ പ്ലേറ്റ് നോക്കി"
  ]),
  Question(
      "സിഗ്നല്‍ ലൈറ്റ്‌ ഉള്ള ഒരു ജംഗ്‌ഷനിലേയ്‌ക്ക്‌ വാഹനം ഓടിച്ചുവരുമ്പോള്‍ മഞ്ഞ ലൈറ്റ്‌ തെളിഞ്ഞാല്‍",
      -1, [
    "അപകടസാദ്ധ്യതയില്ലെന്ന്‌ ഉറപ്പുവരുത്തി ഓടിച്ചു പോകണം",
    "നിര്‍ത്താന്‍ തയ്യാറാകുക",
    "ഹോണ്‍ മുഴക്കി ഓടിച്ചു പോകണം"
  ]),
  Question("ട്രാന്‍സ്‌പോര്‍ട്ടു വാഹന ലൈസന്‍സിനു വേണ്ട കുറഞ്ഞ വയസ്", 1,
      ["25", "18", "20"]),
  Question(
      "ഇരുചക്ര വാഹനങ്ങളില്‍ ഓടിക്കുമ്പോള്‍ ഇടതു ഭാഗത്തേക്ക് തിരിയുന്നതിനു മുമ്പായി",
      -1, [
    "ഇടതു കൈ ഇടത്തോട്ട് നീട്ടി സിഗ്നല്‍ കാണിക്കണം",
    "പ്രത്യേകിച്ച് സിഗ്നലുകളൊന്നും കണിക്കേണ്ടതില്ല",
    "വലതു കൈ കൊണ്ട് ഇടത്തോട്ടുള്ള സിഗ്നല്‍ കാണിക്കണം"
  ]),
  Question(
      "വിദ്യാഭ്യാസ സ്ഥാപനങ്ങളുടെ പരിസരത്തു ലൈറ്റ് മോട്ടോര്‍ വാഹനങ്ങളുടെ വേഗതപരിധി.",
      1,
      ["45 കി.മീ", "35 കി.മീ", "30 കി.മീ"]),
  Question(
      "ഒരു വാഹനത്തിന്റെ ഡ്രൈവര്‍ എതിര്‍ ദിശയില്‍ നിന്നും ഓടിച്ചു വരുന്ന വാഹനങ്ങളെ തന്റെ",
      -1, [
    "വലതു വശത്തു കൂടി കടന്നു പോകുവാന്‍ അനുവദിക്കണം",
    "ഇടതു വശത്തു കൂടി കടന്നു പോകുവാന്‍ അനുവദിക്കണം",
    "സൗകര്യമുള്ള വശത്തു കൂടി കടന്നു പോകുവാന്‍ അനുവദിക്കണം"
  ]),
  Question(
      "മോട്ടോര്‍ വാഹന നിയമം 129-)0 വകുപ്പ് പ്രകാരം ഒരു മോട്ടോര്‍ സൈക്കിള്‍ ഓടിക്കുന്ന ഡ്രൈവര്‍ നിര്‍ബന്ധമായും",
      0,
      ["ജര്‍ക്കിന്‍സ്‌ ധരിക്കണം", "ഹെല്‍മെറ്റ്‌ ധരിക്കണം", "ഷൂസ്‌ ധരിക്കണം"]),
  Question("പി.യു.സി.സി.(വാഹനപുക നിയന്ത്രണ സര്‍ട്ടിഫിക്കറ്റ്) യുടെ കാലാവധി", -1,
      ["ആറു മാസം", "ഒരു വര്‍ഷം", "രണ്ടു വര്‍ഷം"]),
  Question("ഇടമുറിഞ്ഞ വെള്ള രേഖയാണ് റോഡിലുള്ളതെങ്കില്‍-", 0, [
    "വാഹന വീഥി മാറ്റാന്‍ പാടില്ല",
    "ആവിശ്യമെങ്കില്‍ വാഹനവീഥി മാറ്റിപ്പോകാവുന്നതാണ്",
    "വാഹനം നിര്‍ത്തുക"
  ]),
  Question(
      "ഒരു ചരക്കു വാഹനത്തില്‍ അമിതഭാരം കയറ്റിയാല്‍ ലഭിക്കാവുന്ന ഏറ്റവും കുറഞ്ഞ പിഴ എത്ര?",
      -1,
      ["1000 രൂപ", "2000 രൂപ", "3000 രൂപ"]),
  Question("സ്റ്റോപ്പ്‌ ലൈന്‍ എന്നാല്‍ എന്താണ്", -1, [
    "റോഡ്`ജംഗ്‌ഷന്‍, കാല്‍നടക്കര്‍ക്ക്‌ റോഡ്‌ മുറിച്ചുകടക്കുന്ന സ്ഥലം എന്നിവയ്‌ക്ക്‌ തൊട്ടു മുന്‍പിലായി 5 സെ.മീറ്റര്‍ വീതിയില്‍ വെള്ളയോ മഞ്ഞയോ നിറത്തില്‍ റോഡിനു കുറുകെയുള്ള ലൈന്‍",
    "റോഡിന്റെ മദ്ധ്യത്തില്‍ കൂടിയുള്ള മഞ്ഞവര",
    "മദ്ധ്യഭാഗത്തു കൂടിയുള്ള ഇടമുറിഞ്ഞുള്ള വെളുത്ത വര"
  ]),
  Question(
      "ഡ്രൈവര്‍ മദ്യപിച്ച്‌ വാഹനം ഓടിക്കുന്നതായി കണ്ടെത്തിയാല്‍ നല്‌കാവുന്ന ശിക്ഷ",
      -1, [
    "ആറുമാസം വരെ തടവോ, രണ്ടായിരം രൂപ വരെ പിഴയോ, രണ്ടും കൂടിയോ",
    "ഒരു വര്‍ഷം വരെ തടവോ നാലായിരം രൂപ വരെ പിഴയോ രണ്ടും കൂടിയോ",
    "രണ്ടു വര്‍ഷം കഠിന തടവ്‌"
  ]),
  Question("മോബൈല്‍ ഫോണ്‍ ഉപയോഗിക്കാന്‍ പാടില്ലാത്തത്", 1,
      ["ഗവണ്‍മെന്റെ് ഓഫീസില്‍", "പോലീസ് സ്റ്റേഷനില്‍", "വാഹനമോടിക്കുമ്പോള്‍"]),
  Question("മീഡിയം മോട്ടോര്‍ വാഹനങ്ങളുടെ പരമാവധി വേഗത", -1,
      ["80 കി.മീ", "60 കി.മീ", "70 കി.മീ"]),
  Question("സ്വകാര്യ വാഹനത്തിന് ഉണ്ടായിരിക്കേണ്ട രേഖകള്‍.", 0, [
    "രജിസ്‌ട്രേഷന്‍ സര്‍ട്ടിഫിക്കറ്റ്, ജി.സി.ആര്‍, ഇന്‍ഷുറന്‍സ് സര്‍ട്ടിഫിക്കറ്റ്",
    "രജിസ്‌ട്രേഷന്‍ സര്‍ട്ടിഫിക്കറ്റ്, ഇന്‍ഷുറന്‍സ് സര്‍ട്ടിഫിക്കറ്റ്, ടാക്സ് ടോക്കണ്‍, ഡ്രൈവിംഗ് ലൈസന്‍സ്",
    "രജിസ്‌ട്രേഷന്‍ സര്‍ട്ടിഫിക്കറ്റ്, പെര്‍മിറ്റ്, ട്രിപ്പ് ഷീറ്റ്"
  ]),
  Question(
      "ഒരു വാഹനം അപകടത്തില്‍പ്പെട്ടാല്‍ .... മണിക്കൂറിനുള്ളില്‍ അടുത്ത പോലീസ് സ്റ്റേഷനില്‍ അറിയിക്കണം",
      -1,
      ["24 മണിക്കൂര്‍", "12 മണിക്കൂര്‍", "48 മണിക്കൂര്‍"]),
  Question("ലേണേഴ്സ് ലൈസന്‍സിന്റെ കാലവധി", 0,
      ["സ്ഥിരം ലൈസന്‍സ് കിട്ടുന്നതു വരെ", "ആറുമാസം", "30 ദിവസം"]),
  Question(
      "ഒരു മോട്ടോര്‍ സൈക്കിളില്‍ ഡ്രൈവറെ കൂടാതെ മറ്റൊരാളെ കൂടി കയറ്റണമെങ്കില്‍",
      -1, [
    "സീറ്റ്, ഫുട്ട്‌റെസ്റ്റ്, ഹാന്‍ഡ്ഗ്രിപ്പ്, സാരി ഗാര്‍ഡ് ഇവ ഉണ്ടായിരിക്കണം",
    "സൈഡ് കാര്‍ ഉണ്ടായിരിക്കണം",
    "റിയര്‍വ്യൂ മിറര്‍ ഉണ്ടായിരിക്കണം"
  ]),
  Question(
      "ഒരു ആശുപത്രിയ്ക്കു സമീപം നിങ്ങള്‍ക്ക് ഹോണടിക്കേണ്ട സാഹചര്യം ഉണ്ടാകുന്നു. നിങ്ങള്‍ ചെയ്യുന്നത്",
      0, [
    "തുടര്‍ച്ചയായി ഹോണ്‍ മുഴക്കും",
    "വേഗത കൂറച്ച് ഹോണടിക്കേണ്ട സാഹചര്യം പരമാവധി ഒഴിവാക്കും",
    "ഇടവിട്ട് ഹോണടിക്കും"
  ]),
  Question("വാഹനത്തിലെ മഞ്ഞ ലൈറ്റ് ഉപയോഗിക്കുന്നതെപ്പോള്‍?", -1, [
    "രാത്രി കാലങ്ങളില്‍",
    "മൂടല്‍ മഞ്ഞ് ഉള്ള സ്ഥലങ്ങളില്‍",
    "എതിരെ വരുന്ന വാഹനം ഡിം ചെയ്‌തില്ലെങ്കില്‍"
  ]),
  Question("താഴെപ്പറയുന്ന സന്ദര്‍ഭത്തില്‍ ഓവര്‍ടേക്ക് ചെയ്യാന്‍ പാടില്ല", -1, [
    "മറ്റ് വാഹനങ്ങള്‍ക്ക് അസൗകര്യമോ അപകടമോ ഉണ്ടാകുന്ന വിധം",
    "മുന്‍പില്‍ പോകുന്ന വാഹനം വേഗത കുറയ്ക്കുമ്പോള്‍",
    "രാത്രികാലങ്ങളില്‍"
  ]),
  Question("കാല്‍നട യാത്രക്കാര്‍ നടപ്പാതയില്ലാത്ത ഒരു റോഡിന്റെ", 0, [
    "ഇടതു ഭാഗത്തു കൂടി നടക്കണം",
    "വലതു ഭാഗത്തു കൂടി നടക്കണം",
    "ഇരു വശത്തു കൂടിയും നടക്കാവുന്നതാണ്"
  ]),
  Question(
      "മുന്‍‌പില്‍ പോകുന്ന വാഹനം ഓവര്‍ടേക്ക് ചെയ്യാന്‍ സിഗ്നല്‍ തരാത്ത പക്ഷം",
      0, [
    "ഓവര്‍ടേക്ക് ചെയ്യാവുന്നതാണ്",
    "ഓവര്‍ടേക്ക് ചെയ്യാന്‍ പാടില്ല",
    "ഹോണ്‍ മുഴക്കി ഓവര്‍ടേക്ക് ചെയ്യാം"
  ]),
  Question(
      "മലമ്പാതകളില്‍ 30 കി. മീറ്ററില്‍ കൂടുതല്‍ വേഗതയില്‍ പോകാനനുവാദമില്ലാത്ത വാഹനം",
      -1,
      ["ഹെവി പാസഞ്ചര്‍ വെഹിക്കിള്‍", "മോട്ടോര്‍ കാര്‍", "ഓട്ടോറിക്ഷ"]),
  Question("അന്ധന്മാര്‍ വെളുത്ത വടിയുടെ സഹായത്താല്‍ റോഡു മുറിച്ചുകടക്കുമ്പോള്‍",
      -1, [
    "അന്ധന്മാര്‍ ഉപയോഗിക്കുന്ന വെളുത്ത വടി വാഹനം നിര്‍ത്താനുള്ള അടയാളമായി പരിഗണിച്ച് വാഹനം നിര്‍ത്തണം",
    "ഹോണ്‍ മുഴക്കി കടന്നു പോകണം",
    "വേഗത കുറച്ചു കടന്നു പോകണം"
  ]),
  Question(
      "ഓട്ടോറിക്ഷായുടെ പരമാവധി വേഗത", -1, ["50 കി.മീ", "30 കി.മീ", "40 കി.മീ"]),
  Question(
      "രാത്രികാലങ്ങളില്‍ വാഹനം പൊതു സ്ഥലത്ത് പാര്‍ക്ക് ചെയ്യുമ്പോള്‍", -1, [
    "വാഹനം പൂട്ടിയിരിക്കണം",
    "ആ വാഹനം ഓടിക്കുവാന്‍ ലൈസന്‍സുള്ള ആള്‍ ഡ്രൈവറുടെ സീറ്റില്‍ ഉണ്ടായിരിക്കണം",
    "പാര്‍ക്ക് ലൈറ്റ് തെളിയിച്ചിരിക്കണം"
  ]),
  Question("വണ്‍‌വേ നിയന്ത്രണമുള്ള റോഡില്‍", 1, [
    "വാഹനങ്ങള്‍ പാര്‍ക്ക് ചെയ്യരുത്",
    "ഓവര്‍ടേക്ക് ചെയ്യുവാന്‍ പാടില്ല",
    "റിവേഴ്സ് ഗിയറില്‍ അനുവദനീയമായ ദിശയ്ക്കെതിരായി വാഹനം പോകുവാന്‍ പാടില്ല"
  ]),
  Question(
      "കെട്ടിവലിക്കുന്നതും വലിക്കപ്പെടുന്നതുമായുള്ള വാഹനങ്ങള്‍ തമ്മില്‍ അനിവദിച്ചിട്ടുള്ള കൂടിയ ദൂരം",
      0,
      ["15 മീറ്റര്‍", "5 മീറ്റര്‍", "10 മീറ്റര്‍"]),
  Question("മോട്ടോര്‍ സൈക്കിളിന്റെ പരമാവധി വേഗത", 0,
      ["No Limit", "70 കി.മീ", "60 കി.മീ"]),
  Question("നഗരങ്ങളിലും മുനിസിപ്പല്‍ പട്ടണങ്ങളിലും ഓട്ടോറിക്ഷയുടെ പരമാവധി വേഗത",
      0, ["40 കി. മീ.", "30 കി. മീ.", "20 കി. മീ."]),
  Question("ഓവര്‍ടേക്കിംഗ്‌ നിരോധിച്ചിട്ടുള്ളത്‌", -1, [
    "ഇടമുറിഞ്ഞ വെള്ള രേഖയുള്ള സ്ഥലത്ത്‌",
    "തുടര്‍ച്ചയായി മഞ്ഞരേഖയുള്ള സ്ഥലത്ത്‌",
    "കുത്തനെയുള്ള സ്ഥലത്ത്‌"
  ]),
  Question("മോട്ടോര്‍ വാഹന നിയമം 112-)0 വകുപ്പ് അനുസരിച്ച്", -1, [
    "വേഗത പരിധി ലംഘിക്കുവാന്‍ പാടില്ല",
    "ഡ്രൈവര്‍ മദ്യപിച്ച് വാഹനമോടിക്കരുത്",
    "ടാക്സ് അടക്കാതെ വാഹനം ഓടിക്കരുത്"
  ]),
  Question("ഹാന്‍ഡ് ബ്രേക്ക് ഉപയോഗിക്കുന്നത്", 1, [
    "സ്പീഡ് കുറയ്ക്കുവാന്‍ വേണ്ടി",
    "സഡന്‍ ബ്രേക്ക് ചെയ്യുവാന്‍",
    "വാഹനം പാര്‍ക്കു ചെയ്യുവാന്‍"
  ]),
  Question("മദ്യപിച്ച് വാഹനമോടിക്കുന്നത്", 1, [
    "പ്രൈവറ്റ് വാഹനങ്ങളില്‍ അനുവദിച്ചിട്ടുണ്ട്",
    "രത്രിയില്‍ ഓടിക്കാന്‍ അനുവാദമുണ്ട്",
    "എല്ലാ വാഹനങ്ങളിലും നിരോധിച്ചിരിക്കുന്നു"
  ]),
  Question("ഒരു ലോറിയില്‍ പരമാവധി കയറ്റാവുന്ന ഭാരം എത്ര", 0,
      ["പരിധിയില്ല", "പെര്‍മിറ്റില്‍ അനുവദിച്ചിരിക്കുന്നത്", "പത്തു ടണ്‍"]),
  Question("പുറകോട്ടു വാഹനം ഓടിക്കുവാന്‍ പാടില്ലാത്ത റോഡ്", -1,
      ["വണ്‍ വേ", "ഇറക്കമുള്ള റോഡ്‌", "കയറ്റമുള്ള റോഡ്‌"]),
  Question("ഒരു ചരക്ക് വാഹനത്തില്‍ കയറ്റി കൊണ്ട്പോകാവുന്ന ആളുകളുടെ എണ്ണം", -1, [
    "ഭാരം കയറ്റുവാനും ഇറക്കുവാനുമുള്ളത്രയും ആളുകള്‍",
    "അഞ്ച് ആളുകള്‍",
    "രജിസ്ട്രേഷന്‍ സര്‍ട്ടിഫിക്കറ്റില്‍ രേഖപ്പെടുത്തിയിട്ടുള്ളത്രയും ആളുകള്‍"
  ]),
  Question("വാഹനത്തില്‍ ഇന്ധനം നിറയ് ക്കുമ്പോള്‍", -1, [
    "കാറ്റ് ചെക്കു ചെയ്യാന്‍ പാടില്ല",
    "പുകവലി പാടില്ല",
    "ലൈറ്റുകള്‍ തെളിക്കാന്‍ പാടില്ല"
  ]),
  Question(
      "താഴെ പറയുന്ന ഏതു സ്ഥലത്താണ് വാഹനം പാര്‍ക്കുചെയ്യാന്‍ പാടില്ലാത്തത്‌",
      1, [
    "റോഡരികില്‍",
    "പാര്‍ക്കിംഗ് അനുവദിച്ചിട്ടുള്ള സ്ഥലത്ത്",
    "ട്രാഫിക് ലൈറ്റിനു സമീപം"
  ]),
  Question("മോട്ടോര്‍ വാഹന നിയമം 113-)0 വകുപ്പ് അനുശാസിക്കുന്നത്", -1, [
    "അമിത വേഗതയില്‍ വാഹനങ്ങള്‍ ഓടിക്കരുത്",
    "മദ്യപിച്ച് വാഹനങ്ങള്‍ ഓടിക്കരുത്",
    "അമിത ഭാരം കയറ്റി വാഹനം ഓടിക്കരുത്"
  ]),
  Question("ചരക്കു വാഹനങ്ങളില്‍ ഓവര്‍ലോഡ് കയറ്റുന്നത്", 1, [
    "കുറ്റകരമല്ല",
    "പിഴ മാത്രം ഈടാക്കാവുന്ന കുറ്റമാണ്",
    "ഡ്രൈവിംഗ് ലൈസന്‍സ് സസ്പെന്‍ഡ് ചെയ്യുന്നതിനോ ക്യാന്‍സല്‍ ചെയ്യുന്നതിനോ വരെ പര്യാപ്തമായ കുറ്റമാണ്"
  ]),
  Question(
      "വാഹനത്തിന്റെ എന്‍ജിന്‍ സ്റ്റാര്‍ട്ട്‌ ചെയ്യുന്നതിനു മുന്‍പായി", -1, [
    "റേഡിയേറ്ററിലെ വെള്ളവും എന്‍ജിന്‍ ഓയിലും പരിശോധിക്കണം",
    "ഹെഡ്‌ലൈറ്റ്‌ ശരിയാണോ എന്നു പരിശോധിക്കണം",
    "ബ്രേക്ക്‌ ശരിയാണോ എന്നു പരിശോധിക്കണം"
  ]),
  Question(
      "ഒരു ട്രാഫിക്ക് ഐലന്റില്‍ മഞ്ഞ ലൈറ്റ് മാറിമാറി കത്തുകയും കെടുകയും ചെയ്യുന്നു. അവിടെ വാഹനം ഓടിച്ചെത്തുന്ന നിങ്ങള്‍",
      -1, [
    "വാഹനം നിറുത്തി മറ്റു വാഹനങ്ങള്‍ ഒന്നും വരുന്നില്ലായെന്ന് ഉറപ്പുവരുത്തിയശേഷം കടന്നുപോകും",
    "വരുന്ന വേഗതയില്‍ ഹോണടിച്ച് കടന്നുപോകും",
    "വേഗത കുറച്ച് സുരക്ഷിതമാണെന്ന്‌ ഉറപ്പുവരുത്തി കടന്നുപോകും"
  ]),
  Question("വളവില്‍ ഓവര്‍ടേക്കിങ്ങ്", 0,
      ["അനുവദനീയമാണ്", "അനുവദനീയമല്ല", "ശ്രദ്ധയോടെ ചെയ്യാവുന്നതാണ്"]),
  Question(
      "നിങ്ങളുടെ വാഹനം ഒരു ശാഖാ റോഡില്‍നിന്നും പ്രധാന റോഡിലേക്ക് പ്രവേശിക്കുമ്പോള്‍",
      -1, [
    "ഇടതുവശത്തു നിന്നും വരുന്ന വാഹനങ്ങള്‍ക്ക് മുന്‍ഗണന കൊടുക്കണം",
    "വലതുവശത്തു നിന്നും വരുന്ന വാഹനങ്ങള്‍ക്ക് മുന്‍ഗണന കൊടുക്കണം",
    "പ്രധാന റോഡില്‍ ഇരുവശത്തു നിന്നും വരുന്ന വാഹനങ്ങള്‍ക്ക് മുന്‍ഗണന കൊടുക്കണം"
  ]),
  Question("ഒരു ഡ്രൈവർ റോഡിന്റെ ഏതുവശം ചേർന്ന് വാഹനം ഓടിക്കണം?", -1,
      [" ഇടത്", "", ""]),
  Question(
      "റോഡിൽകൂടി ഓടിക്കൊണ്ടിരിക്കുന്ന വാഹനം ഇടതുവശത്തേക്കുള്ള റോഡിലേക്ക് തിരിഞ്ഞ് കയറേണ്ടത് എങ്ങിനെ?",
      -1, [
    "",
    "വാഹനം ഓടിക്കൊണ്ടിരിക്കുന്ന റോഡിന്റെ ഇടതുവശം ചേർന്നു, സിഗ്നൽ കാണിച്ച് തിരിഞ്ഞ്, പ്രവേശിക്കുന്ന റോഡിന്റെ ഇടതുവശത്തേക്ക് കയറണം.",
    ""
  ]),
  Question(
      "ഒരു റോഡിൽ കൂടി ഓടിക്കൊണ്ടിരിക്കുന്ന വാഹനം വലതുവശത്തേക്കുള്ള റോഡിലേക്ക് തിരിഞ്ഞു കയറേണ്ടത് എങ്ങിനെ?",
      2, [
    "",
    "",
    "വലതുവശത്തേക്കുള്ള സിഗ്നൽ കാണിച്ച് റോഡിന്റെ മധ്യഭാഗത്തുകൂടി, പ്രവേശിക്കുന്ന റോഡിന്റെ ഇടതുഭാഗത്തേക്ക് കയറണം."
  ]),
  Question(
      "കാൽനടയാത്രക്കാർ സീബ്ര ക്രോസിംഗിലൂടെ റോഡ് മുറിച്ച് കടക്കാൻ ശ്രമി ക്കുമ്പോൾ വാഹനം ഓടിച്ചെത്തുന്ന ഡ്രൈവർ അനുവർത്തിക്കേണ്ട നിയമങ്ങൾ എന്തെല്ലാം?",
      1, [
    "",
    "നിർത്തി, കാൽനടയാത്രക്കാർ കടന്നുപോയശേഷം മുന്നോട്ട് പോവുക. മുൻഗ ണന കാൽനടയാത്രക്കരന്.",
    ""
  ]),
  Question(
      "റോഡിന്റെ നടുവിൽ തുടർച്ചയായി മഞ്ഞവരയിട്ടിരിക്കുന്നതിന്റെ ഉദ്ദേശം എന്തെല്ലാം?",
      2,
      ["", "", "മഞ്ഞവര തൊടുവാനോ മുറിച്ചു കടക്കുവാനോ പാടില്ല."]),
  Question(
      "മുന്നിൽ പോകുന്ന വാഹനത്തെ ഓവർടേക്ക് ചെയ്യുമ്പോൾ പാലിക്കേണ്ട നിയ മങ്ങൾ എന്തെല്ലാം?",
      0,
      ["മുന്നിലെ വാഹനത്തിന്റെ ഡ്രൈവറിൽ നിന്ന് സിഗ്നൽ കിട്ടിയശേഷം ", "", ""]),
  Question(
      "മുന്നിൽ പോകുന്ന വാഹനത്തെ ഓവർടേക്ക് ചെയ്യാൻ പാടില്ലാത്ത സാഹച ര്യങ്ങൾ എന്തെല്ലാം?",
      0, [
    "ഇടുങ്ങിയ പാലം, വളവ്, തിരിവ്, ജംഗ്ഷൻ, മുൻവശം കാണാൻ പാടില്ലാത്ത കയറ്റം, മറ്റൊരു വാഹനം തന്റെ വാഹനത്തെ ഓവർടേക്ക് ചെയ്യാൻ തുടങ്ങി ക്കഴിഞ്ഞാൽ, മുന്നിലെ വാഹനത്തിൽ നിന്ന് സിഗ്നൽ കിട്ടിയില്ലെങ്കിൽ.",
    "",
    ""
  ]),
  Question("ഓവർടേക്ക് നിരോധിച്ചിട്ടുള്ള സ്ഥലങ്ങൾ ഏതെല്ലാം?", 1, [
    "",
    "ഇടുങ്ങിയ പാലം, വളവ്, തിരിവ്, ജംഗ്ഷൻ, മുൻവശം കാണാൻ പാടില്ലാത്ത കയറ്റം.",
    ""
  ]),
  Question(
      "തന്റെ വാഹനത്തെ മറ്റൊരു വാഹനം ഓവർടേക്ക് ചെയ്യുമ്പോൾ പാലിക്കേണ്ട നിയമങ്ങൾ എന്തെല്ലാം?",
      2, [
    "",
    "",
    "വേഗം കുറച്ച്, ഇടത്തേക്ക് മാറ്റി സുഖമായി കടന്നുപോകാൻ അനുവദിക്കണം. വേഗം കൂട്ടിയോ, വലത്തേക്ക് ഒതുക്കിയോ തടസ്സപ്പെടുത്താൻ പാടില്ല."
  ]),
  Question(
      "മുന്നിൽ പോകുന്ന വാഹനത്തിന്റെ ഇടതുവശത്തുകൂടി ഓവർടേക്ക് ചെയ്യാ വുന്നത് എപ്പോഴെല്ലാമാണ്?",
      1, [
    "",
    "വലത് വശത്തേക്ക് തിരിയുന്ന വാഹനം സിഗ്നൽ കാണിച്ച് റോഡിന്റെ മധ്യഭാ ഗത്ത്, നിശ്ചിത ലൈനിൽ കൂടി ട്രാം,. ട്രൈലെർ തുടങ്ങിയവയുടെ ഇടതു ഭാഗത്തു കൂടി",
    ""
  ]),
  Question(
      "ഒരു വാഹനത്തിന്റെ ഡ്രൈവർ എതിർദിശയിൽ നിന്നും വരുന്ന വാഹന ങ്ങളെ ഏതുവശത്തുകൂടി കടന്നുപോകാൻ അനുവദിക്കണം?",
      0,
      ["വലത്", "", ""]),
  Question("ഒരു ജംഗ്ഷനിൽ എത്തുമ്പോൾ ഡ്രൈവർ അനുവർത്തിക്കേണ്ടത് എന്തെല്ലാം?", 2, [
    "",
    "",
    "വേഗം കുറക്കണം, പ്രധാന റോഡുകൾ കൂടിച്ചേരുമ്പോൾ വലതു വശത്തു നിന്നു വരുന്ന വാഹനത്തെ കടത്തി വിടണം, ശാഖാ റോഡിൽ നിന്ന് പ്രധാന റോഡിലേക്ക് കടക്കുന്നത് പ്രധാന റോഡിലെ എല്ലാ വാഹനങ്ങളും കടന്ന് പോയശേഷം"
  ]),
  Question(
      "ശാഖാ റോഡിൽ നിന്നും പ്രധാന റോഡിലേക്ക് പ്രവേശിക്കുമ്പോൾ ഡ്രൈവർ പാലിക്കേണ്ട തത്വങ്ങൾ എന്തെല്ലാം?",
      1, [
    "",
    "വേഗം കുറക്കണം, പ്രധാന റോഡുകൾ കൂടിച്ചേരുമ്പോൾ വലതു വശത്തു നിന്നു വരുന്ന വാഹനത്തെ കടത്തി വിടണം, ശാഖാ റോഡിൽ നിന്ന് പ്രധാന റോഡിലേക്ക് കടക്കുന്നത് പ്രധാന റോഡിലെ എല്ലാ വാഹനങ്ങളും കടന്ന് പോയശേഷം",
    ""
  ]),
  Question(
      "നിങ്ങൾ ഓടിക്കുന്ന വാഹനം ഒരു ഇടുങ്ങിയ പാലത്തെ സമീപിക്കുമ്പോൾ എതിർദിശയിൽ മറ്റൊരു വാഹനം പാലത്തിന് അടുത്തെത്തിയാൽ എങ്ങിനെ കടന്ന് പോകണം?",
      0,
      ["നിറുത്തി, എതിരെ വരുന്ന വാഹനം കടന്ന് പോയ ശേഷം.", "", ""]),
  Question("യു-ടേൺ തിരിയുവാൻ പാടില്ലാത്ത സാഹചര്യങ്ങൾ എന്തെല്ലാം?", 0,
      ["തിരക്കുള്ള റോഡുകളിൽ, നിരോധിച്ചിട്ടുള്ള സ്ഥലങ്ങൾ.", "", ""]),
  Question("യു-ടേൺ തിരിയാവുന്ന സ്ഥലങ്ങൾ ഏതെല്ലാം?", 2, [
    "",
    "",
    "അനുവദിച്ചിട്ടുള്ള സ്ഥലങ്ങൾ, നിയന്ത്രണം ഏർപ്പെടുത്താത്ത തിരക്കില്ലാത്ത സ്ഥലത്ത്."
  ]),
  Question("യു-ടേൺ തിരിയുമ്പോൾ പാലിക്കേണ്ട നിയമങ്ങൾ എന്തെല്ലാം?", 1, [
    "",
    "റിയർവ്യൂ മീറ്ററിൽ നോക്കി പിന്നിൽ നിന്ന് വാഹനം ഇല്ലെന്ന് ഉറപ്പു വരുത്തി വലതുവശത്തേക്ക് സിഗ്നൽ നൽകി, എതിർ ദിശയിൽ നിന്ന് വരുന്ന വാഹനങ്ങളെ തടസ്സപ്പെടുത്താതെ",
    ""
  ]),
  Question(
      "യു-ടേൺ തിരിയുമ്പോൾ കാണിക്കേണ്ട സിഗ്നൽ?", 0, ["വലതു സിഗ്നൽ", "", ""]),
  // Question("", , ["","",""]),
  // Question("", , ["","",""]),
  // Question("", , ["","",""]),
  // Question("", , ["","",""]),
  // Question("", , ["","",""]),
  // Question("", , ["","",""]),
  // Question("", , ["","",""]),
  // Question("", , ["","",""]),
  // Question("", , ["","",""]),
  // Question("", , ["","",""]),
  // Question("", , ["","",""]),
  // Question("", , ["","",""]),
  // Question("", , ["","",""]),
  // Question("", , ["","",""]),
];
