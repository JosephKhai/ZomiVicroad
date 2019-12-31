
class TrafficLightQuiz {
  var images = ['tl1', 'tl2', 'tl3','tl4', 'blank', 'tl6', 'tl7', 'tl8', 'tl9', 'tl10',
  'blank', 'tl12', 'tl13', 'tl14', 'tl15', 'tl16', 'tl17', 'tl18'];

  var questions = [
    'Traffic mei (hi dan) na tuak hi. Bang deihna hi ding hiam?',
    'Traffic mei-ah mei san a taan ciang bang cihna hiam?',
    'Traffice mei na zuat laitakin a eng panin a nai pak ah hong kikhel teh bang cih ding na hiam?',
    'Lamkituahna/Lamkabom (intersection)-a traffic mei-ah hih ciamtehna (sign) kilak/kipiah ta leh bang cih ding na hiam?',
    'Traffic mei omna-ah U-turn hong a kingah mah hiam?',
    'Hih Traffic mei-te khiatna in,',
    'Hih mei a khiatna in,',
    'Zingsang nai 3 thum ahi hi. Mawtaw dang tai bangmah na mu kei hi. Taklamah na kihei/pialkhia nuam hi',
    'Traffic mei omna lamkabom/lamkituahna na zuat laitakin anai pak mei (yellow light) panin asan (red light)ah hong kilaih hi.',
    'Lamkabom/lamkituahna-ah (intersection) mei san leh hih ciaptehna kisuang na mu hi. Veilamah kihei/pial na ut hi.',
    'Zingsang tung hiin mawtaw tai dang om lo hi. Traffic mei a eng pan anai pak-ah a kikhek laitakin lamkabom/lamkituahna (intersection) na zuan hi. Bang cih ding na hiam?',
    'Lamkabom/Lamkituahna (intersection) ah mei-te san (red) ahih manin na khawl hi. Traffic mei a eng-ah hong kilaih hi.',
    'Lamkabom/Lamkituahna (intersection)ah taklamah kihei/pial ding na ut a, hih traffic mei na mu hi.',
    'Hih lamkabom/lamkituahna panin veilamah na kihei/pial nuam hi. Traffic mei-te sanin hih ciaptehna na mu hi.',
    'Hih lamkabom/lamkituahna (intersection)panin veilamah na kihei/pial nuam hi, traffic mei-te zong eng hi. Bang cih ding na hiam?',
    'Traffic light set omna lamkabom/lamkituahna (intersection) na zuat laitakin traffic mei green(a eng) panin yellow(anai pak) (mei-am/amber) ah hong kilaih hi',
    'Lam kibawlna muntea a kikoih pak traffic mei-te ',
    'A kikoih pak traffic mei-te a om teh koi munah khawl ding?',
    
  
  ];

  var choice = [
    ['Mei san pen mei eng-a hong kilaih ciangin a eng thaltang (green arrow) kawkna lamah na tai/pai thei ding hi', 'Green arrow (a eng thaltang) kawkna lamah na tai/pai thei ding hi', 'Na mailam pan hong leh pai mawtawte lam na awn ding uh hi'],
    ['Traffic mei anai pak-ah a kikhek dong khawlna ding kigit(stop line)ah pello-in khawl ding', 'Traffic mei a eng-ah a kikhek dong khawlna ding kigit(stop line) nunglamah/pelloin khawl ding', 'Khawl dingin, mawtaw dang a om loh tak taisuak'],
    ['Red light camera a kizatna te bek ah khawl (stop) ding', 'Mei san-ah hong kilaih ma-in lamkituahna (intersection) na khen nading a hatsak ding', 'Traffic mei tawh kinai luata a, thakhat in brake sik vatna hang a accident tuak ding ahih kei nak leh Khawlna ding a kigitna ah khawl in'],
    ['Na mawtaw dampaisak (slow down) in, veilama na kihei ma-in mi hong pai a om hiam cih masa in', 'Mei pen asan ta ahih leh na khawl (stop) masa ding a, a lauhuai nawn loh teh veilamah na kihei thei pan ding hi', 'Teipi eng (Green arrow) a kilat leh bek veilamah na kihei ding hi'],
    ['He, mawtaw dang tawh kinawkkhak (colliding) ding a lauhuai kei nak leh', 'He, a tawntung in', 'Lamkabom-ah(intersection) U-TURN KINGAH (PERMITTED) cih ciaptehna (sign) kisuang ahih kei buang leh kingah lo'],
    ['Veilamah kihei/pial thei ahih kei leh mailamah taisuak thei', 'Veilamah kihei/pial thei, ahi hangin mailamah taisuak kingah lo', '"PILVANG/KIDAWM TAKIN VEILAMAH BANG HUN BANG HUN IN KIHEI/PIAL THEI" cih a kisuan leh bek veilamah kihei/pial thei'],
    ['Alau huai kei nak leh bek mailamah taisuak thei, ahih kei leh veilamah kihei thei, ahih kei leh taklamah kihei thei', 'U turn ding a lauhuai kei leh U turn thei', 'Lam na kan phei ma a, khawl ding in mei a san kik dong ngak ding'],
    ['Arrow(thaltang) a san laitak taklamah na kihei thei kei ding hi', 'A lauhuai kei nakleh taklamah kihei thei', 'Minute khat na ngak khitteh taklamah kihei thei'],
    ['Na khawl ding a, mei eng (green light) na ngak ding hi', 'Horn pia inla mei a san sung mahin na taisuak ding hi', 'Na vei leh tak panin mawtaw na pelh nadingin hatsakin'],
    ['Mawtaw dampai sakin veilam ahih kei leh taklamah kihei ding a lauhuai kei leh na kihei ding hi', 'Na khawl ding a, mei eng (green light) na ngak ding hi', 'Na khawl ding a, veilamah kihei ding a lauhuai kei nak leh bek na kihei ding hi'],
    ['Khawl (Stop) ding', 'Hawl suakin horn pia in', 'Khawl kei inla pai suak in'],
    ['Lamkabom/Lamkituahna (intersection) vei leh tak na et khitteh na pai thei pan ding hi', 'Na nunglama mawtawte in hong nawh mateng ngakin/mainawt kei in', 'A manlang thei penin lamkabom/lamkituahna kaan phei in'],
    ['Lamkabom/Lamkituahna (intersection)ah na lut ding a, thaltang eng (green arrow) hong taan na ngak ding hi', 'Damdamin mailamah na manawh ding hi', 'Thaltang eng (Green arrow) hong kidok mateng stop line ii nunglamah khawl ding'],
    ['Khawl phot ding, a lauhuai kei nak leh Veilamah kihei/pial thei', 'Khawl phot ding, tua khitteh tai/pai suak ding', 'Mei a eng dong khawl phot ding'],
    ['Lamkabom/lamkituahna (intersection)ah lutin horn pia in', 'Mailamah damdamin pai inla, veilamah kihei inla Mawtaw A nungah ngakin', 'Na lampi ding a awn masiah Stop line nungah ngak in'],
    ['Hatsak tuan lo-in tua lamkabom/lamkituahna (intersection)ah na taisuak ding hi', 'Va naih lua-in thakhata brake sikna hang in accident tun ding ahih kei buang leh Stop line ah khawl in', 'Mei san ahih ma-in lamkabom/lamkituahna (intersection) na nusiat theih nadingin hatsakin'],
    ['Lambawlna-a kizang mawtawte aa ding bek hi', 'Zui loh pelmawh hi/Zuih ding hi', 'Contruction a sem mawtaw hawlte theihsak nadinga a kikoih hi'], 
    ['Lane tawpna lamah', 'Hih takah khawlin ci-a san signal ciaptehna hong piakna munah', 'Traffic mei leh na kisepna/kibawlna kikalah'],
  ];

  var correctAnswers = 
  [
    'Green arrow (a eng thaltang) kawkna lamah na tai/pai thei ding hi', 
    'Traffic mei a eng-ah a kikhek dong khawlna ding kigit(stop line) nunglamah/pelloin khawl ding',
    'Traffic mei tawh kinai luata a, thakhat in brake sik vatna hang a accident tuak ding ahih kei nak leh Khawlna ding a kigitna ah khawl in',
    'Mei pen asan ta ahih leh na khawl (stop) masa ding a, a lauhuai nawn loh teh veilamah na kihei thei pan ding hi',
    'Lamkabom-ah(intersection) U-TURN KINGAH (PERMITTED) cih ciaptehna (sign) kisuang ahih kei buang leh kingah lo',
    'Veilamah kihei/pial thei, ahi hangin mailamah taisuak kingah lo',
    'Alau huai kei nak leh bek mailamah taisuak thei, ahih kei leh veilamah kihei thei, ahih kei leh taklamah kihei thei',
    'Arrow(thaltang) a san laitak taklamah na kihei thei kei ding hi',
    'Na khawl ding a, mei eng (green light) na ngak ding hi',
    'Na khawl ding a, veilamah kihei ding a lauhuai kei nak leh bek na kihei ding hi',
    'Khawl (Stop) ding',
    'Lamkabom/Lamkituahna (intersection) vei leh tak na et khitteh na pai thei pan ding hi',
    'Thaltang eng (Green arrow) hong kidok mateng stop line ii nunglamah khawl ding',
    'Khawl phot ding, a lauhuai kei nak leh Veilamah kihei/pial thei',
    'Na lampi ding a awn masiah Stop line nungah ngak in',
    'Va naih lua-in thakhata brake sikna hang in accident tun ding ahih kei buang leh Stop line ah khawl in',
    'Zui loh pelmawh hi/Zuih ding hi',
    'Hih takah khawlin ci-a san signal ciaptehna hong piakna munah',
  ];

}