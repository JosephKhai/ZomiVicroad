
class SpeedLimitQuiz {
  var images = ['blank', 'blank', 'sp3', 'sp4', 'sp5', 'blank', 'blank', 'blank', 'sp9', 'sp10', 
  'sp11', 'sp12', 'blank'];

  var questions = [
    'Speed limit sang pen sanga hatzaw-a mawtaw hawl pen',
    'Khe tawh a paite leh lampi zang/tawn dangte in lampi a zatkhopna mun (Shared Traffic Zone)-ah speed limit pen',
    'Speed limit 80 km/hr kizatna lampi, mawtaw tam mahmahna-ah mawtaw na hawl hi. Guah hong phin seuhseuh hi. Bang hih/cih ding na hi hiam?',
    'Speed limit 70 km/hr kizatna munah 70 km/hr a hatin mawtaw na hawl hi. Mawtaw bangzah hiam in hong makhelh uh hi. Na passenger-te khatin mawtaw dangte tawh kiton dingin hatsakin hong ci hi. Bang na cih tam?',
    '60 km/hr kizatna mun, mawtaw tam mahmahna-ah na tai a, 60 km/hr hata tai ding pen a hun leh a mun ngaihsutin hat lua na sa hi. Bang cih ding na hiam?',
    'Speed limit sanga sangzaw/hatzaw a taite gawtna daan bang hiam?',
    'Aw ging zanga vanleng zonkhiatna (radar detector) or signal khat peuhpeuh khakna/dalna (jammer) mawtaw sung-a thuah pen daan/upadi phalloh/palsatna hi',
    'Speed limit bangmah kisuang lohna munte ah speed limit pen 100 km/hr hi ding hi',
    'Hih lim/ciamtehna (sign) na muh ciangin',
    'Hih lim/ciamtehna (sign) in/Hih lim/ciamtehna deihna pen',
    'Sangkah ni nai 9:20 ahi hi. Na kiima mawtawte tawh kitonin 60 km/hr-a hatin na tai hi. Hih lim/ciamtehna na mu/kaan a, ahi zongin mawtaw dangte dam tai tuan lo uh hi. Bang cih ding na hi hiam?',
    'Speed limit ciamtehnate (hih lai-a a kisuang bangin) in',
    'Highway ah na tai a, speed khiama a kulna lampi kibawlna munah na tuak hi',  
  ];

  var choice = [
    ['Mawtaw dang makhelh ciang bekin kiphal hi', 'Thukhun (Daan) in phal ngeingei lo hi', 'Mawtaw dangte zong speed limit sanga hatzaw-a a tai uh ciang bekin kiphal hi'],
    ['10 km/hr', '50 km/hr', '20 km/hr'],
    ['Mawtaw khawlsakin guah theu ngak ding', 'Speed limit a kisuang zah ahih manin speed ngeina bangin tai suak ding', 'Tua hun tawh a kituak zaw dingin speed khiam ding'],
    ['Hong kigenna zui-in mawtaw dangte tawh kiton in', 'Speed limit a kiciangtan zah leh a khuahun ngaihsun kawmin na hatna zah ding (speed) khensat in', 'Speed limit sanga them khata sanga zaw in tai in, banghang hiam cih leh mite zong tua zah mahin tai ciat uh hi'],
    ['Tua hun leh a mun tawh kituak dingin speed khiam in', 'Tua mun panin kihem in, mawtawte a tai nawn loh dong ngak in', 'Mawtaw dangte tawh tonkhawm lel in, bang hang hiam cih leh, a kiciantan speed limit pen 60 km/hr ahih manin lauhaui lo kha thei hi'],
    ['Liau sum leh demerit point kiam anih a hi thei', 'Liau sum bek', 'Demerit point bek kiam?'],
    ['1998 nunglama/khitteh  na lei leh', 'A kizat (ON) ciang bekin', 'Bang hang bang hangin na thuah zongin'],
    ['Suangsi lakah tai na ahih buang kei leh', 'Lampi ngei-ah lampi a taan mei (street light) kithuah ahih buang kei leh', 'Emergency om-a speed limit kiciangtan loh ahih buang kei leh'],
    ['40 km/hr na kheng kei ding a, na kiim leh paam limtak na en ding hi', 'Tua kiima/muna teeng na hih leh bek lampi-ah na lut/tai ding hi', 'Setbing tuangte, khe tawh a paite leh naupangte'],
    ['Mi dangte leh mawtawte tawh hih lampi na zangkhawm ding a, 10 km/hr sang atam zaw in na hawl kei ding hi', 'A lauhuai lo cianga na ngaihsutna zah-ah speed khiam in, ahih hangin 10 km/hr sangin niamzaw lo ding hi', 'Na kiimah khe tawh pai a om uh leh 10 km/hr ciangin hawl in'],
    ['Mawtaw hawl dangte hatsat zah tawh tonkhop pen lauhuailo-zaw ding hi', 'Mawtaw hawl dangte a hatin a tai nop uh hangin, nang bel 40 km/hr hiam a niamzaw hiamah na speed khiam pahin', '60 km/hr-a hatin tai lel in, bang hang hiam cih leh nai 9:30 am sat dektak ta a, a kisuang sang hun pen zaksakna/lamlahna bek ahi hi'],
    ['A kiciangtan speed niam thei pen zah mawtaw hawlte hilh hi', 'A kiciangtan speed sang thei pen zah mawtaw hawlte hilh hi', 'A kiciangtan zah speed a theihna dingun mawtaw hawlte hilh hi.'],
    ['Mawtaw dangte speed zahmah in na tai ding hi', 'Na khup pah theih nadingin lam kibawlna munah na hat theih zahin tai in', 'Speed limit thak zahin na speed khiam in'],
  ];

  var correctAnswers = 
  [
    'Thukhun (Daan) in phal ngeingei lo hi',
    '10 km/hr',
    'Tua hun tawh a kituak zaw dingin speed khiam ding',
    'Speed limit a kiciantan zah leh a khuahun ngaihsun kawmin na hatna zah ding (speed) khensat in',
    'Tua hun leh a mun tawh kituak dingin speed khiam in',
    'Liau sum leh demerit point kiam anih a hi thei',
    'Bang hang bang hangin na thuah zongin',
    'Emergency om-a speed limit kiciangtan loh ahih buang kei leh',
    '40 km/hr na kheng kei ding a, na kiim leh paam limtak na en ding hi',
    'Mi dangte leh mawtawte tawh hih lampi na zangkhawm ding a, 10 km/hr sang atam zaw in na hawl kei ding hi',
    'Mawtaw hawl dangte a hatin a tai nop uh hangin, nang bel 40 km/hr hiam a niamzaw hiamah na speed khiam pahin',
    'A kiciangtan speed sang thei pen zah mawtaw hawlte hilh hi',
    'Speed limit thak zahin na speed khiam in'




  ];

}