DROP DATABASE IF EXISTS `twl_store`;
CREATE DATABASE `twl_store`;
USE `twl_store`;
CREATE TABLE `items` (
`id` int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY ,
`name` varchar(50) NOT NULL,
`type` varchar(50) NOT NULL,
`price` int(11) NOT NULL,
`image` varchar(200) NOT NULL,
`introduce` text,
`config` text,
`detail` text
)
ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
INSERT INTO `items` (`name`, `type`, `price`, `image`, `introduce`, `config`, `detail`) 
VALUES ('WF-1000XM3', 'Sony', '5550000', 'resource\\images\\xm3.jpg', 'Freedom perfected in a truly wireless design, with
 industry leading noise canceling powered by Sony’s proprietary HD Noise Canceling Processor QN1e. 
 Form meets function with up to 24 total hours of battery life with quick charging, touchpad controls, premium sound quality,
 and smart features like Wearing Detection and Quick Attention Mode.', 'Brand:	Sony<br>
Connections:	Bluetooth, NFC<br>
Model Name:	WF-1000XM3/B<br>
Color:	Black<br>
Connector Type:	USB Type C<br>
Headphones Form Factor:	In Ear<br>
Control Type:	Voice Control<br>
Sound clarity:	20000 Hz<br>
Noise Control:	Active Noise Cancellation<br>
Frequency Range:	20Hz - 20kHz<br>
', '•	Industry leading noise canceling with HD Noise Canceling Processor QN1e<br>
•	24bit Audio signal processing delivers dramatically improved sound quality<br>
•	Battery life up to 24 hours with carrying case (with 10min quick charge for 90min of play time) <br>
•	Easy and clear hands free calling; Leave your phone where it is, just speak with a double tap to the earbud<br>
•	Truly wireless design with uninterrupted L/R simultaneous Bluetooth transmission<br>
•	Alexa enabled for voice access to music, information, and more. Activate with a simple touch. <br>
•	Smart listening by adaptive sound control automatically switches to ambient sound mode based on your activity<br>
•	In the box: Charging case, Triple comfort earbuds (S, M, L × 2) long hybrid silicone rubber earbuds (stainless, S, M, L × 2), card, operating instruction, Reference guide, USB Type C cable (Approx. 20cm) <br>
•	Quick attention mode and wearing detection make conversations effortless<br>
•	Sony, headphones connect app for Android/iOS to use smart listening technology to control your ambient sound settings<br>
'), 
		('WH-1000XM3', 'Sony', '8900000', 'resource\\images\\wh2.jpg', 'Sony industry-leading noise cancellation evolves to further immerse you in your music. 
        The addition of Sony proprietary HD noise canceling processor Qn1 masterfully eliminates the noise around you. 
        Listen all day with up to 30 hours of battery life. 
        Quick charging gives five hours of playback with just a 10-minute charge.','Brand:	Sony<br>
Connections:	Bluetooth<br>
Model Name:	WH-1000XM3/B<br>
Color:	Black<br>
Headphones Form Factor:	Over Ear<br>
Control Type:	Voice Control<br>
Sound clarity:	40000 Hz<br>
Noise Control:	Active Noise Cancellation<br>
Item Weight:	8.99 Ounces<br>
', '•	Digital Noise Canceling: Industry Leading Anc Lends a Personalized, Virtually Soundproof Experience. Phone Call: a built-in mic enables you to take hands-free calls<br>
•	Voice Assistant: Alexa Enabled for Voice Access to Music, Information and More. Activate with a Simple Touch<br>
•	Quick Attention Mode: Cover the Right Ear Cup to Turn Down Your Music for Instant, Easy Conversation<br>
•	Smart Listening: Adjusts the Ambient Sound to Your Activity to Give You the Best Noise Cancellation<br>
•	Touch Controls: Control Music Tracks and Volume, Activate Your Voice Assistant and Take Phone Calls<br>
•	Long Battery Life: A Single Charge Provides Up to 30 Hrs of Playtime for Reliable All Day Listening<br>
•	Comfortable to Wear: Ergonomically Redesigned Foldable Earphones for Easy Travel / Listening Comfort<br>
•	In the Box: Foldable Headphone, Carry Case, Charging Cable and Audio Cable for a Wired Connection<br>
'), 
		('WF-1000X', 'Sony', '2000000', 'resource\\images\\1000x.jpg', 'These true wireless, minimal design earbuds fit securely in your ears, and with digital noise cancelling,
        all you hear is your music. The Smart Listening technology can detect your activity and adjust the noise cancelling levels appropriately, and with a chargeable case,
        you’ll get up to 9 hours of uninterrupted, undisturbed sound wherever you go.','Brand:	Sony<br>
Connections:	Bluetooth<br>
Model Name:	WF1000X/B<br>
Color:	Black<br>
Headphones Jack:	USB<br>
Headphones Form Factor:	In Ear<br>
Noise Control:	Active Noise Cancellation<br>
Item Weight:	0.57 Pounds<br>
', '•	True wireless design with uninterrupted Bluetooth streaming. <br>
•	Digital Noise Cancelling lets you listen without distractions. <br>
•	Sony|Headphones Connect APP for Android /iOS uses Smart Listening technology to control your ambient sound settings . <br>
•	Smart Listening by Adaptive Sound Control automatically switches to ambient sound mode based on your activity. Ambient Sound mode to hear essential sound without taking your headphones off. <br>
•	A 6mm driver for crisp, clear sound<br>
•	Enjoy up to 9 hours of battery life with the chargeable carrying case. <br>
•	Conversation flows freely with hands-free calling through the left earpiece. Leave your phone where it is: just speak with a tap. <br>
•	In the box: Charging Case, USB Cable (1), Earbuds (Long Hybrid silicone rubber earbuds(SS, S, M, L X2), Fitting Supporters(M, L X2), Triple-Comfort Earbuds(S, M, L X2)) <br>
•	Connectivity technology : Bluetooth<br>
'), 
        ('WF-SP700N', 'Sony', '1700000', 'resource\\images\\sp700.jpg', 'Introducing the Sony SP700N In-Ear Sports Headphones, the world’s first truly wireless noise-canceling
        headphones with splash-proof design. Equipped with a cushioned fit and sweat-resistance, these wireless earbuds are made to fill your workouts with your favorite music
        without getting in the way. Noise canceling technology minimizes sound from noisy environments, leaving you with just music','Brand:	Sony<br>
Connections:	Bluetooth;NFC<br>
Model Name:	WF-SP700N/B<br>
Color:	Black<br>
Headphones Jack:	Micro USB<br>
Headphones Form Factor:	In Ear<br>
Sound clarity:	20000 Hz<br>
Noise Control:	Active Noise Cancellation<br>
Frequency Range:	20Hz - 20kHz<br>
Item Weight:	7.6 Grams<br>
', '•	TRULY WIRELESS: Compatible with Apple or Android cell phones, sync using Bluetooth connection & NFC<br>
•	DIGITAL NOISE CANCELING: WF-SP700N headphone set minimizes distractions & noises for crisp listening<br>
•	AMBIENT SOUND MODE: Blend music & environmental sounds during fitness sessions or outdoor workouts<br>
•	SPLASHPROOF: IPX4 rated to handle sweat or rain splashes when you are at the gym or outside running<br>
•	LONG BATTERY: SP700N has up to 9 hours of playback battery life during workouts or athletic training<br>
•	CHARGING CASE: Keep your earbuds secure & long lasting inside the compact, lightweight charging case<br>
•	POWERFUL SOUND: EXTRA BASS delivers punchy low spectrum sound quality for big beats from each earbud<br>
•	MADE FOR MOVEMENT: Silicone support fitting offers comfortable security no matter how much you move<br>
'), 
		('WF-XB700', 'Sony', '1700000', 'resource\\images\\xb700.jpg', 'Enjoy deep punchy EXTRA BASS sound in 
        a truly wireless headphone The WF-XB700 truly wireless headphones keep you going with up to 18 hours of 
        battery life plus quick charging 1 The Ergonomic Tri-hold structure provides a secure fit and the IPX4 
        design gives you long-lasting sound through rain and sweat','Brand:	Sony<br>
Connections:	Bluetooth<br>
Model Name:	WFXB700/B<br>
Color:	Black<br>
Headphones Form Factor:	In Ear<br>
Control Type:	Voice Control<br>
Item Weight:	46 Grams<br>
', '•	Truly wireless design with BLUETOOTH wireless technology for total freedom<br>
•	EXTRA BASS for deep punchy sound<br>
•	Up to 9hr battery life total 18hr with charging case<br>
•	Easy and clear hands-free calling<br>
•	IPX4 water resistance against rain and sweat<br>
•	Ergonomic design for a secure comfortable fit<br>
•	Quickly access your smartphone’s voice assistant with a quick touch<br>
'), 
		('Minor II', 'Marshall', '4700000', 'resource\\images\\minor2.png', 'Marshall minor II Bluetooth is a hard-working wireless in-ear with Bluetooth Qualcomm apt technology. 
        It offers 12 hours of wireless playtime on a single charge and boasts an innovative ear-fit system with an adjustable loop for an optimized and ergonomic fit. 
        They are engineered to stay in place and feel comfortable throughout the day.','Brand:	Marshall<br>
Connections:	Bluetooth<br>
Model Name:	Marshall Minor II<br>
Color:	Black<br>
Headphones Jack:	3.5 mm<br>
Headphones Form Factor:	In Ear<br>
Sound clarity:	20000 Hz<br>
Noise Control:	Sound Isolation<br>
Frequency Range:	20Hz - 20kHz<br>
Item Weight:	0.79 Ounces<br>
', '•	Bluetooth 5. 0 apt connectivity - gives you exceptional audio quality and the freedom and convenience to move with 30 feet of wireless listening range. <br>
•	12 hours of wireless playtime on a single charge. Quick charge functionality means 20 minutes of charging will give your battery 2 hours of playtime. <br>
•	Custom-tuned 14. 2mm dynamic drivers that produce rich highs, crisp midst and clear, balanced bass that will make you feel like you are center stage. <br>
•	Molded with an ergonomic shape that is engineered to stay in place throughout the day while resting lightly in your ears. In addition, it utilizes an adjustable loop to provide an optimized fit. <br>
•	With the multi-directional control knob you can play, pause, shuffle and adjust the volume of your device. Phone functionality is also included so you can answer, reject or end a call. <br>
•	Magnetic pause function - Automatically pause your music When magnetically attaching the two earpieces together. <br>
'), 
        ('Major III', 'Marshall', '5000000', 'resource\\images\\major3.jpg', 'Major III Bluetooth is the next chapter in the revolutionary history of Marshall. This modern go-to classic has been re-engineered 
        for a cleaner more refined design, while the silhouette stays True to its original form. Major III Bluetooth offers you the freedom and convenience of wireless Bluetooth aptX technology and 30+ hours 
        of playtime on a single charge.','Brand:	Marshall<br>
Connections:	Bluetooth<br>
Model Name:	4092186<br>
Color:	Black<br>
Headphones Jack:	3.5 mm<br>
Headphones Form Factor:	On Ear<br>
Sound clarity:	20000 Hz<br>
Frequency Range:	20Hz - 20kHz<br>
Item Weight:	6.28 Ounces<br>
', '•	Bluetooth aptX gives you exceptional audio quality and the freedom and convenience to move with 30 feet of wireless listening range. <br>
•	30+ hours of wireless playtime on a single charge<br>
•	Iconic sound with 40 mm dynamic drivers that are custom tuned for enhanced bass response, smooth midst and crystal clear highs that draw on over 50 years of sound heritage. <br>
•	With the multi-directional control knob you can play, pause, shuffle and adjust the volume of your device, as well as power your headphone on or off. <br>
•	Easy to use phone functionality makes the major III Bluetooth the perfect everyday companion. Wirelessly answer, reject or end a call with the control knob<br>
•	Collapsible design<br>
'),
        ('Major II', 'Marshall', '5000000', 'resource\\images\\wh.jpg', 'The wrinkled headband and contrast detailing on the Marshall Major II headphones create a true rock-and-roll vibe.
        Soft, on-the-ear cushions keep them comfortable, while the collapsible construction adds convenience. Remote and microphone compatible with most smartphones. 
        Neutral stereo plug and 6.3mm adapters included.','Brand:	Marshall<br>
Connections:	Bluetooth<br>
Model Name:	Marshall Monitor II <br>
Color:	Black<br>
Connector Type:	3.5 mm Input<br>
Headphones Jack:	3.5 millimeters<br>
Headphones Form Factor:	Over Ear<br>
Noise Control:	Active Noise Cancellation<br>
Item Weight:	320 Grams<br>
', '•	Active noise canceling technology that continuously pinpoints and measures ambient noise in order to block out the things you don’t want to hear. Now you can focus on what matters most - the music. <br>
•	Up to 30 hours of wireless playtime with active noise cancelling and 45 hours without noise cancelling<br>
•	Collapsible design and compact size makes the ultimate travel companion<br>
•	Multi-directional control knob - play, pause and shuffle your music, Adjust volume and control phone functionality<br>
•	Travel Kit - USB-C charging cable, 3. 5mm cord and carry bag to stow it all away<br>
•	Power Source Type: Battery-Powered<br>
•	Included Components: Headphone,Removable 3.5Mm Cable,User Manual With Legal And Safety Information, Usb-C Charging Cable, Canvas Carrying Bag<br>
'), 
		('Mode EQ', 'Marshall', '2500000', 'resource\\images\\modeeq.jpg', 'Mode offers huge sound in a small package. Customized drivers deliver high Output sound at minimal distortion, 
        and the unique In-Ear Design anchors to your ear, while still providing a comfortable fit. The mode EQ comes with an switch on the remote, allowing you to customize your sound even more.','Brand:	Marshall<br>
Connections:	Wired<br>
Model Name:	04090940<br>
Color:	Black<br>
Headphones Jack:	3.5 mm<br>
Headphones Form Factor:	In Ear<br>
Item Weight:	0.04 Pounds<br>

', '•	Big Sound Small Package<br>
•	Microphone and remote<br>
•	EQ Switch<br>
'), 
        ('Galaxy Bud', 'Samsung', '1500000', 'resource\\images\\buds.jpg', ' Listen and chat during the day, then wirelessly recharge for 15 minutes to get up to 1. 7 more hours of play time.
        Tuned by AKG, Galaxy Buds deliver clear calls, your favorite Podcasts And the music you love while keeping you aware of your surroundings when walking, working or working out. Water proof - IPX2 (splash resistant).
        battery Capacity (earbud) - 58mAh. Battery Capacity (case) - 252mAh.','Brand:	SAMSUNG<br>
Connections:	Wireless, Bluetooth
Model Name:	SM-R170NZKAXAR<br>
Color:	Black<br>
Headphones Form Factor:	In Ear<br>
Item Weight:	136 Grams<br>
', '•	Power up to power on Get up to six hours of battery life with an additional seven hours from the case that doubles as a wireless charger<br>
•	Premium sound Tuned by AKG, an optimized driver offers substantial bass, while a volume driver gives you a wider range of sound<br>
•	Just what you want to hear Control how much surrounding noise you want with Ambient Aware. Quick Ambient Mode lets you hear traffic, flight announcements and coworkers calling out to you<br>
•	Sounds good. Feels good. Galaxy Buds come in three adjustable ear tip and wingtip sizes right from the box<br>
•	Resists water With splash resistant technology, your Galaxy Buds handle splashes, sweat and spills<br>
•	The Galaxy Buds pairs with both Android and iOS compatible devices via Bluetooth connection. Use with a smartphone and tablet running Android 5. 0 or higher & RAM 1. 5GB above. Automatic sync and Ambient Aware Mode only available for Android; iOS users can use Voice Command/Siri<br>
•	US Version: Comes with Quick Start Guide, and 1 Year Product (information on the retail package).Android 7.1.1 or higher required.Battery Capacity (Earbud):58mAh<br>
'), 
        ('Galaxy Buds Plus', 'Samsung', '2750000', 'resource\\images\\bud+.png', 'Samsung Galaxy Buds+ are versatile earbuds that harmonize warm, satisfying bass tones with crisp high notes delivering addictively rich tracks. With the ability to 
        selectively tune in or out environmental noise, you can stay in the zone on a phone call or get lost in your favorite playlist, all without hitting pause.','Brand:	SAMSUNG<br>
Connections:	Bluetooth<br>
Model Name:	Galaxy Buds Plus<br>
Color:	Black<br>
Headphones Form Factor:	In Ear<br>

', '•	Exactly what you want to hear. Galaxy Buds+ are the perfect fitting earbuds to isolate you from distracting noises, so you can stay focused on what you want. And if you’d like to filter in some of the outside world to be more in-tune with your surroundings, you can switch on Ambient Aware2. Hear flight announcements, oncoming traffic or your order number while still enjoying your favorite playlist or podcast. <br>
•	22 hours of serious sound. Get up to 11 hours of nonstop music on a single charge, then pop your Galaxy Buds+ in the wireless charging case and get nearly 11 more. Forgot to charge them the night before? No worries. ?3 minutes of charging gives you one hour of play time, so you have enough juice for your commute or workout. <br>
•	Your voice, loud and clear. Ensure you’re heard clearly. A dedicated internal and two external microphones pick up your voice and isolate it from outside noises. When you’re on a call, your voice comes through richly and confidently, even in noisy locations. <br>
•	Android & iOS compatible. Pair with smart devices via Bluetooth. Use the Galaxy Wearable app on Android and Galaxy Buds+ app on iOS to make the most of your earphones. <br>
•	Included Components: 3 Size Eargel<br>
'), 
        ('Powerbeats Pro Truly WireLess', 'Beats', '3750000', 'resource\\images\\beats.jpg', 'Powerbeats Pro earphones are built to revolutionize your workouts. With zero wires to hold you back, you will always have your music to motivate you. 
        We listened to real athletes and we heard that nothing was more important than sound. Powerbeats Pro delivers powerful, balanced sound with dynamic range and noise isolation for a premium listening experience.','Brand:	Beats<br>
Connections:	Bluetooth, NFC<br>
Color:	Black<br>
Headphones Form Factor:	In Ear<br>
Noise Control:	Sound Isolation<br>
', '•	Totally wireless high-performance earphones<br>
•	Up to 9 hours of listening time (more than 24 hours with charging case) <br>
•	Adjustable, secure-fit earhooks for lightweight comfort and stability<br>
•	Reinforced design for sweat & water resistance during tough workouts<br>
•	Volume & track controls on each earbud, voice capability, and Auto Play/Pause<br>
•	What is in the box: Powerbeats Pro totally wireless earphones, Charging case, Eartips with four size options, Lightning to USB-A charging cable, Quick Start Guide, Warranty Card<br>
•	Powerbeats Pro in Black availability begins in May. Ivory, Moss and Navy will be available this summer. Color availability is subject to change<br>
'), 
        ('Elite 65T', 'Jabra', '2000000', 'resource\\images\\65T.jpg', 'Listen to your favorite tunes and have crystal clear conversations within the Jabra Elite 65t Earbuds. These headphones are engineered for the best true wireless calls and music experience.
        The 4-microphone technology gives you effective wind noise reduction on calls, and the advanced speakers are just 6mm in size, allowing you to block out, or let in, ambient sound.','Brand:	Jabra<br>
Connectivity Technology:	Bluetooth<br>
Model Name:	Elite 65t<br>
Color:	Titanium Black<br>
Headphones Form Factor:	In Ear<br>
Noise Control:	Active Noise Cancellation<br>
Item Weight:	0.69 Pounds<br>
', '•	True wireless earbuds – Conversations are made incredibly clear with the Jabra Elite 65t true wireless earbuds that are proven to deliver superior call performance. Plus, a long-lasting battery with charging case included keeps you connected all day. <br>
•	Multi-functional Bluetooth earbuds – The integrated controls let you answer calls, adjust the volume or pause music with just the touch of a button. Plus, they are IP55 rated with a 2-year warranty against water and dust (registration required). <br>
•	Take work calls from home – Incredible 4-microphone technology offers best-in-class call performance, with up to 15 hours of battery for maximum productivity— even when you’re learning or working from home on your smartphone. <br>
•	No audio dropouts – With our excellent record of connectivity, you can take calls and listen to music without worry of audio dropouts. Plus, external ambient sound keeps you aware of surroundings and a Background noise filter delivers crisp, clear calls. <br>
•	Personalize your sound – Whether you’re using these as Apple earbuds, Samsung earbuds or more, you can listen to your music the way you want to hear it, by personalizing your sound on the Jabra Sound+ app. Earbuds are Apple and Android compatible. <br>
'),
		('Elite Sport', 'Jabra', '2500000', 'resource\\images\\elsport.jpg', 'Jabra Elite Sport wireless earbuds feature superior sound quality for music and calls, and advanced wireless connectivity to ensure true performance. 
        Our intuitive true wireless earbud design includes two microphones in each bud that work together to filter our background noise, ensuring that only your voice is heard clearly and with no distraction – in every environment. ','Brand:	Jabra<br>
Connectivity Technology:	Bluetooth<br>
Model Name:	100-98600001-2<br>
Color:	Black<br>
Headphones Form Factor:	In Ear<br>
Control Type:	Answer/End with Volume<br>
Sound clarity:	20000 Hz<br>
Water Resistance Level:	Waterproof<br>
Noise Control:	Active Noise Cancellation<br>
Frequency Range:	20Hz - 20kHz<br>
', '•	True wireless earbuds – Jabra Elite Sport earbuds offer superior sound for calls and music and advance wireless connectivity to ensure true performance. Two microphones in each earbud work together to filter our background noise and ensure clarity. <br>
•	Secure custom fit – Enjoy custom-fitting workout earbuds thanks to the 3 sizes of EarGels and foam tips included to give you the right fit that boosts music and call quality. Plus, 3 sizes of EarWings further enhance comfort and heart rate sensor. <br>
•	All-day power – Now with a battery that delivers 4.5 hours of play time coupled with a portable charging case, these Jabra wireless in-ear headphones give you 13.5 hours of power to keep you going. <br>
•	Sports earbuds – The in-ear precision heart rate monitor works with our integrated Jabra Sport Life app to track/analyze your fitness. Monitor absolute fitness level, have reps counted automatically, predict race pace and more. For all experience levels. <br>
•	Waterproof design – Jabra Elite Sport are waterproof earbuds that offer guaranteed durability. They have an IP67-rated waterproof design with a 3-year warranty against sweat damage (registration required via Jabra Sport Life App). <br>
'), 
		('Elite 75T', 'Jabra', '4700000', 'resource\\images\\jabra.jpg', 'Jabra Elite 75t offer a great call and music experience, engineered to last longer and tested for a secure fit. You can be confident that these true wireless earbuds will stay put thanks 
        to the new smaller design that provides the ideal fit for every type of ear while the ergonomic shape makes them exceptionally comfortable','Brand:	Jabra<br>
Connectivity Technology:	Bluetooth<br>
Model Name:	Elite 75t<br>
Color:	Titanium Black<br>
Headphones Form Factor:	In Ear<br>
Water Resistance Level:	Water Resistant<br>
Noise Control:	Sound Isolation<br>

', '•	WIRELESS EARBUDS – The Jabra Elite 75t is engineered to fit. Making and taking calls is always a great experience, wherever you are, thanks to enhanced 4-microphone call technology which filters out wind and other disruptive noises around you<br>
•	COMPACT COMFORT – Designed and tested for a secure fit, the Jabra Elite 75t features a new smaller design that provides an ideal fit for every type of ear while the ergonomic shape makes them exceptionally comfortable<br>
•	NO AUDIO DROPOUTS – With Jabra 4th generation true wireless connection, your music and calls will be stable, with no wires to get in the way. With these Bluetooth earbuds, you can enjoy conversations and music with no audio dropouts or interruptions<br>
•	MYSOUND IS YOUR SOUND – Our latest pioneering technology tests your hearing in the Jabra Sound+ app, and tailors your music to suit your individual hearing profile. MySound makes the music you love even better<br>
•	UP TO 7.5 HOURS OF USE – With Jabra Elite 75t wireless Bluetooth earbuds, you get more power and more freedom from a battery you can rely on, with up to 7.5 hours on a single charge. Plus, the handy charging case gives you a total of up to 28 hours battery<br>
'),
		('Elite 75T Active', 'Jabra', '5550000', 'resource\\images\\75Tat.png', 'Jabra Elite Active 75t true wireless earbuds are engineered for secure fit and designed for running and exercise, with special grip coating which allows the earbuds to stay firmly in place,
        even when you really put them through their paces. Waterproof with IP57-rated durability, Elite Active 75t sport earbuds are covered by a 2-year extended warranty against dust and sweat.','Brand:	Jabra<br>
Connectivity Technology:	Bluetooth<br>
Model Name:	Elite Active 75t<br>
Color:	Navy<br>
Headphones Form Factor:	On Ear<br>
Control Type:	Voice Control<br>
Water Resistance Level:	Water Resistant<br>

', '•	SECURE ACTIVE FIT – We scanned thousands of ears to create the best-fitting earbuds for sport that we’ve ever created, with a special grip coating to make sure they stay in while you move. Plus, they’re sweatproof & waterproof with IP57-rated protection<br>
•	KEEPING YOU SAFE – These running earbuds feature HearThrough mode that lets ambient noise in and allows you to choose how much background noise you want to hear, keeping you alert and aware of what’s going on around you<br>
•	CRYSTAL-CLEAR CALLS – Four microphones, the latest digital signal processing & pioneering beamform technology mean these Jabra earbuds offer great call quality wherever you are. Plus, they’re compatible with Siri, Google, and Alexa<br>
•	UP TO 28 HOURS OF USE – With up to 7.5 hours of listening time on a single charge, and a total of up to 28 hours with the charging case, you’ll need to recharge when they do. These wireless sport earbuds are built to keep up with your busy day<br>
•	MYSOUND IS YOUR SOUND – Our latest pioneering technology tests your hearing in the Jabra Sound+ app, and tailors your music to suit your individual hearing profile. MySound makes the music you love even better<br>
'), 
		('Airpod Pro', 'Apple', '7250000', 'resource\\images\\bannerairpod.png', 'Active noise cancellation for immersive sound Transparency mode for hearing and connecting with the world around you Three sizes of soft, tapered silicone tips for a customizable fit','Brand:	Apple <br>	
Connections:	Bluetooth<br>	
Model Name:	Apple AirPods Pro<br>	
Color:	White<br>	
Connector Type:	Other - Lightning<br>	
Headphones Jack:	Other - No Jack, Wireless Earbud<br>	
Material:	Silicone<br>	
Headphones Form Factor:	     In Ear<br>	
Cable Feature:	Other - Charging Cable Only<br>	
Water Resistance Level:	Water Resistant<br>	
', '•	Active noise cancellation for immersive sound <br>
•	Transparency mode for hearing and connecting with the world around you<br>
•	Three sizes of soft, tapered silicone tips for a customizable fit<br>
•	Sweat and water resistant<br>
•	Adaptive EQ automatically tunes music to the shape of your ear<br>
•	Easy setup for all your Apple devices<br>
•	Quick access to Siri by saying “Hey Siri” <br>
•	The Wireless Charging Case delivers more than 24 hours of battery life<br>
'), 
        ('Airpod Gen 1', 'Apple', '2550000', 'resource\\images\\airpod.jpg', 'AirPods will forever change the way you use headphones. 
        Whenever you pull your AirPods out of the charging case, they turn on and connect to your iPhone, Apple Watch, iPad, or Mac. Audio
        plays as soon as you put them in your ears and pauses when you take them out. To adjust the volume, change the song, make a call, or get directions, just double-tap to activate Siri.','Brand:	Apple <br>
Connections:	Bluetooth <br>
Model Name:	Airpods with Wired Charging Case<br>
Color:	White<br>
Headphones Form Factor:	In Ear<br>
Item Weight:	3.5 Ounces <br>
', '•	Automatically on, automatically connected <br>
•	Easy setup for all your Apple devices <br>
•	Quick access to Siri by saying “Hey Siri” <br>
•	Double-tap to play or skip forward <br>
•	New Apple H1 headphone chip delivers faster wireless connection to your devices <br>
•	Charges quickly in the case <br>
•	Case can be charged using the Lightning connector <br>
•	Rich, high-quality audio and voice <br>
•	Seamless switching between devices <br>
•	Listen and talk all day with multiple charges from the Charging Case <br>
'), 
		('Airpod Gen 2', 'Apple', '3650000', 'resource\\images\\airpod2.jpg', 'Apple in March 2019 overhauled the AirPods and introduced 
        the first AirPods update with a handful of useful new features that make the Apple-designed earbuds better than ever. The AirPods 2 support hands-free
        "Hey Siri" functionality, allowing users to control volume and swap songs through voice commands, so there is no longer a need to tap on the AirPods 
        with a finger to activate Siri.','Brand:	Apple <br>
Connectivity Technology:	NFC <br>
Model Name:	Airpods 2<br>
Color:	White<br>
Headphones Form Factor:	In Ear<br>
Item Weight:	3.5 Ounces <br>
', '•	Automatically on, automatically connected <br>
•	Easy setup for all your Apple devices<br>
•	Quick access to Siri by saying “Hey Siri” <br>
•	Double-tap to play or skip forward<br>
•	New Apple H1 headphone chip delivers faster wireless connection to your devices<br>
•	Charges quickly in the case<br>
•	Case can be charged using the Lightning connector<br>
•	Rich, high-quality audio and voice<br>
•	Seamless switching between devices<br>
•	Listen and talk all day with multiple charges from the Charging Case<br>
'), 
        ('SoundSport Free', 'Bose', '3550000', 'resource\\images\\bose1.jpg', 'No wires mean no limits. And Bose SoundSport free headphones are completely wireless, so you can enjoy total 
        freedom of movement with nothing not even a single cord in your way. The acoustic package is designed to deliver sound so clear and powerful it will motivate you to go faster, 
        lift heavier and train longer.','Brand:	Bose <br>
Connections:	Bluetooth<br>
Model Name:	Soundsport free<br>
Color:	Black<br>
Headphones Form Factor:	In Ear<br>
Item Weight:	9 Grams<br>
', '•	TRULY wireless Sport headphones for total freedom of movement, packed full of technology that makes music sound clear and powerful <br>
•	Earbuds are sweat and weather resistant (with an Ipx4 rating) and come with 3 different pairs of Stay hear and Sport tips (in sizes S/M/L) that provide a comfortable and secure fit <br>
•	Up to 5 hours of play time with each charge and an additional 10 hours with the included charging case and also features a charging time of 2 hours <br>
•	Track lost earbuds with the Bose connect App "find My buds" feature <br>
•	Firmware update to improve Audio video synchronization for customers using iPhones, iPads and other Bluetooth devices that support AVDTP version 1.3 or later, available via connect app. Connectivity Technology: Wireless Bluetooth <br>
•	SoundSport Free headphones have an integrated dual microphone array located on the right earbud to allow you to use them during calls when connected to a smartphone that supports Bluetooth. Call audio will only be heard in the right ear bud <br>
'), 
        ('RS 160', 'Senheiser', '7000000', 'resource\\images\\rs160.jpg', 'The Sennheiser RS 160 is a perfect complement to your home entertainment system. This digital wireless headphone delivers exceptional sound quality and freedom from wires.
        The ergonomic around ear, closed back design reduces background noise while providing an exceptionally comfortable fit. ','Brand:	Sennheiser Consumer Audio<br>
Connections:	Wireless<br>
Model Name:	RS160<br>
Color:	Black<br>
Connector Type:	3.5mm Stereo<br>
Headphones Jack:	RCA<br>
Material:	Plastic<br>
Headphones Form Factor:	Over Ear<br>
Item Weight:	200 Grams<br>

', '•	Includes (1) Wireless Headphones, (1) Wireless Transmitter that acts as the headphone charging cradle and (2) AAA NiMH rechargeable batteries<br>
•	Lightweight radio frequency (RF) wireless, on-ear headphones for use with TV and Hi-Fi Audio<br>
•	Interference-free reception through walls, ceilings and outdoors up to 300 feet<br>
•	Not compatible with Bluetooth technology<br>
•	Transmitter connects directly to any device with analog audio output (RCA jack or headphone out) <br>
•	2-year limited warranty only when purchased from an authorized dealer<br>
'), 
        ('True Wireless Momentum 1', 'Senheiser', '5000000', 'resource\\images\\sen11.jpeg', 'Made for listeners who truly appreciate craft and attention to detail, 
        Sennheiser’s momentum headphone range demonstrates our ongoing obsession with every aspect of audio. You’ll feel it in the accuracy and crystal clarity of the sound.
        You’ll find it in features allowing you to make each listening experience more rich and personal.','Brand:	Sennheiser Consumer Audio<br>
Connections:	Bluetooth<br>
Model Name:	Sennheiser Momentum True Wireless<br>
Color:	Black<br>
Headphones Jack:	USB<br>
Headphones Form Factor:	In Ear<br>
Control Type:	Voice Control<br>
Water Resistance Level:	Water Resistant<br>
Noise Control:	Sound Isolation<br>
Item Weight:	2.46 Ounces<br>

', '•	Exceptional clarity experience sound that is like ‘being there’ thanks to sennheiser category leading truly wireless technology<br>
•	Fingertip control control your music, calls and voice assistant simply through intuitive touchpad technology built into both True Wireless earbuds<br>
•	Stay aware transparent hearing keeps you aware of your surroundings, allowing you to easily listen and chat wirelessly Without having to remove your earbuds<br>
•	Extended listening 4 hours of truly wireless listening becomes 12 with our compact charging case that gives you 2 full extra charges.Microphone sensitivity: 94 dB SPL at 1 kHz<br>
•	Handle conditions made for every True Wireless listening environment with durable, Tough, splash resistant materials. (IPX4 rated). NOTE: Kindly refer the Instructional Video from the Image Section and User Guide from the Technical Specification before use which is highly recommended<br>
'), 
        ('True Wireless Momentum 2', 'Senheiser', '8550000', 'resource\\images\\sen1.jpg', 'Sennheiser’s MOMENTUM True Wireless 2 delivers exceptional sound quality with superior comfort and craftsmanship. Now you can enjoy Sennheiser’s outstanding stereo sound anywhere and all day thanks 
        to Active Noise Cancellation and an exceptional 7-hour battery life which can be extended to up to 28 hours via the charging case.','Brand:	Sennheiser Consumer Audio<br>
Connections:	Bluetooth<br>
Model Name:	Momentum True Wireless 2<br>
Color:	Black<br>
Headphones Form Factor:	In Ear<br>
Noise Control:	Active Noise Cancellation<br>
Item Weight:	268 Grams<br>

', '•	Enjoy unrivalled stereo sound created by Sennheiser unique 7mm dynamic audio drivers<br>
•	Switch off your surroundings and focus on the deep bass the natural mids and the clear treble thanks to Active Noise Cancellation<br>
•	Experience uninterrupted play time with the new 7-hour battery life that can be extended up to 28 hours with the charging case<br>
•	In the mood for a movie marathon? With its ergonomic design you can experience unbeatable sound in unbelievable comfort<br>
•	Control your exceptional sound with customisable touchpad technology built into both earbuds<br>
'), 
        ('Skullcandy Indy', 'Skullcandy', '2000000', 'resource\\images\\bannerskull.jpg', 'Connected and free Now you can have the truly wireless
        freedom you want in a look you can confidently rock. Indy lets you move seamlessly through your day with a secure fit and premium sound quality. 
        The essentials perfected the jump to truly wireless audio has never been easier. ','Brand:	Skullcandy<br>
Connections:	Bluetooth<br>
Model Name:	Indy<br>
Color:	Indigo<br>
Headphones Form Factor:	In Ear<br>
Sound clarity:	20000 Hz<br>
Frequency Range:	20Hz - 20kHz<br>
Item Weight:	10.5 Grams<br>

', '•	Bluetooth wireless technology<br>
•	Removable stability ear gels for secure fit<br>
•	Up to 16 hours of total battery life<br>
•	IP55 sweat, water, and dust resistant<br>
•	Call, track, and volume touch controls<br>
'), 
        ('Skullcandy Sesh', 'Skullcandy', '1500000', 'resource\\images\\sesh.jpg', 'Truly wireless. Perfectly simple. Our smallest, lightest True wireless earbuds pack a full punch of new Tech. 
        Each bud has a single button to do everything you’re used to, and sound brilliant doing it. Impedance: 16 Ohms ±15%, Driver Diameter: 6mm, Connection Type: Bluetooth 5.0,Sound Pressure Level: 99-105dB,
        Frequency Response: 20Hz - 20KHz','Brand	Skullcandy<br>
Connections	Bluetooth<br>
Model Name	Sesh<br>
Color	Black<br>
Headphones Form Factor	In Ear<br>
Control Type	Volume Control<br>
Sound clarity	20000 Hz<br>
Noise Control	Sound Isolation<br>
Frequency Range	20Hz - 20kHz<br>
Item Weight	0.09 Kilograms<br>

', '•	Bluetooth wireless technology<br>
•	10 hours of total battery<br>
•	IP55 sweat, water, and dust resistant<br>
•	Charging case<br>
•	Microphone, call, track, volume control, and activate assistant<br>
'), 
		('JBL Free True Wireless', 'JBL', '2000000', 'resource\\images\\free.jpg', 'JBL Free truly wireless in-ear headphones
        deliver JBL Signature Sound in an intuitive, yet intelligent package. Completely free from wires and easy to use, 
        the JBL Free is your flexible companion for calls, music and an active lifestyle. 
        You get 24 hours of combined playback: 4hrs of continuous listening on the headphones plus 20 hours of backup from 
        the smart charging case.','Brand:	JBL<br>
Connections:	Bluetooth<br>
Model Name:	JBL Free X - Black<br>
Color:	Black<br>
Headphones Jack:	Wireless<br>
Headphones Form Factor:	In Ear<br>
Item Weight:	15 Grams<br>

', '•	Wireless Bluetooth in-ear earbuds<br>
•	Charging case - Black<br>
•	Bluetooth version:4.2<br>
'), 
		('Under Armour True Wireless', 'JBL', '2000000', 'resource\\images\\underamour.jpeg', 'The Under Armour IPX7 waterproof technology and Sport Flex Fit ear tips were crafted specifically 
        for all condition training while the JBL Charged Sound was boldly optimized and tuned for motivation with deep bass. Hear your surroundings with Bionic Hearing featuring TalkThru Technology to quickly interact with your workout partner, 
        and AmbientAware Technology to hear your surroundings for increased safety while wearing these wireless headphones.','Brand:	JBL <br>
Connections:	Bluetooth <br>
Model Name:	JBL UA FLASH – Black <br>
Color:	Black <br>
Material:	Aluminum <br>
Headphones Form: 	In Ear <br>
Sound clarity:	22 KHz <br>
Water Resistance Level:	Waterproof <br>
Noise Control:	Sound Isolation <br>
Item Weight:	9.3 Ounces <br>
', '•	TRUE WIRELESS EARBUDS FOR SPORT: The wireless headphone design enables athletes to maximize each and every workout, whether that’s yoga, running, hiking and a workout in the gym. <br>
•	WATERPROOF, HIGH-PERFORMANCE DESIGN FOR WORKOUTS: IPX7 Sweat & Waterproof, these wireless earphones promise to withstand your most rigorous workout and any elements thrown your way. <br>
•	BIONIC HEARING: Using unique JBL sound and its microphone technology, Bionic Hearing allows you to hear your surroundings with two sound Technologies – TalkThru & Ambient Aware. With TalkThru Technology, music is lowered and speech is amplified in these wireless earbuds so you can easily chat with a workout partner between sets. AmbientAware delivers a more immersive music experience, with deep bass, while increasing ambient sounds, providing the safety of hearing your surroundings while wearing these bluetooth headphones. <br>
•	UP TO 25 HOURS OF TOTAL BATTERY LIFE: Battery life can last for 5-hours per charge in each wireless earbud, but no need for concern if you’re on-the-go. Simply recharge your wireless earbuds for another 20-hours playtime with the water-resistant, aluminum charging case. <br>
•	SPORT FLEX FIT EAR TIPS FOR WIRELESS EARBUDS: Winged ear tips that are easy to use for maximum security to ensure your headphones fall out. These wireless headphones come with three different sizes of eartips and enhancers. <br>
'), 
		('Reflect Flow', 'JBL', '3000000', 'resource\\images\\reflect.jpg', 'Enjoy the freedom to go further with JBL reflect flow headphones. Whether you’re in the gym training or outside on the go, 
        The JBL reflect flow headphones are truly wireless to compliment your active lifestyle. In addition to the ability to change tracks,
        manage calls hands-free and access your voice assistant','Brand:	JBL<br>
Connections:	Bluetooth<br>
Model Name:	JBL Reflect Flow - Black<br>
Color:	Black<br>
Headphones Jack:	Wireless<br>
Headphones Form Factor:	In Ear<br>
Water Resistance Level:	Waterproof<br>
Item Weight:	1.3 Ounces<br>

', '•	Connectivity Technology: Bluetooth<br>
•	Included Components: 3 Ear tips<br>
•	Wireless Communication Technology: Bluetooth<br>
•	Bluetooth version:5.0<br>
'), 
        ('Tune 120TWL', 'JBL', '3500000', 'resource\\images\\tune.jpg', 'No wires. No hassles. 
        Introducing the completely cord free JBL TUNE120TWS. They are powerful in sound thanks to a 5. 8mm
        driver featuring JBL Pure Bass sound and colorful in design. The earbuds combined with the elegantly designed 
        portable charging case provide 16 hours of unrestrained musical enjoyment. Ergonomically shaped, they also ensure
        long lasting comfort. ','Brand:	JBL<br>
Connections:	Bluetooth<br>
Model Name:	JBL TUNE 120TWS - Black<br>
Color:	Black<br>
Headphones Jack:	Wireless<br>
Headphones Form Factor:	In Ear<br>
Sound clarity:	20000 Hz<br>
Frequency Range:	20Hz - 20kHz<br>
Item Weight:	73 Grams<br>

', '•	JBL Pure Bass Sound<br>
•	Truly Wireless<br>
•	Hands-free Stereo Calls. Dynamic frequency response range (Hz) - 20Hz – 20kHz. Charging time (hours from empty)- <2hrs from empty. Play time (hours)- 4hrs with BT on<br>
•	4H Playback for Earbuds + 12H for Charging Case<br>
•	Affordable Stylish Design<br>
'), 
		('Soundcore Liberty', 'Anker', '2000000', 'resource\\images\\lib1.jpg', 'Liberty Neo true wireless earbuds are the embodiment of musical freedom. They boast our pioneering graphene-enhanced drivers that deliver a wider soundstage, 
        intensified bass, exceptional accuracy, and crystal-clear clarity. The earbuds’ ultra-secure fit keeps them securely in place during your commute, while navigating
        city streets, or even when working up a sweat.','Brand:	Soundcore<br>
Connections:	Bluetooth<br>
Color:	Black<br>
Headphones Jack:	Micro USB<br>
Headphones Form Factor:	In Ear<br>
Noise Control:	Active Noise Cancellation<br>
Item Weight:	0.13 Pounds<br>

', '•	Expertly Tuned Graphene Drivers: As graphene’s earliest pioneers, we have used our experience to create a new driver for Liberty Air Bluetooth earbuds that takes full advantage of the material’s remarkable properties. 100 times harder than steel and 35% lighter than traditional driver diaphragms, it oscillates with extreme precision to give your music a wider soundstage with exceptional accuracy and clarity across the entire frequency range. <br>
•	Crystal-Clear Calls: Each earbud is equipped with a microphone that utilizes noise reduction technology. Your voice is optimized and background noises are minimized so you sound louder and clearer on the other end. <br>
•	Up to 20 Hours of Playtime: A full 5 hours of listening on a single charge is extended to a huge 20 hours of playtime with the included charging case. <br>
•	Integrated Touch Controls: Use the earbuds to answer calls and play, pause, and skip music on-the-go. <br>
•	Secure Fit: Liberty Air’s lightweight in-ear design and multiple sizes of EarTips allow you to customize the fit of the earbuds. Crank up the comfort level and enjoy music and stereo calls with superior noise-isolation. <br>
'), 
		('Soundcore Liberty Pro', 'Anker', '2000000', 'resource\\images\\libPro.jpeg', 'Liberty 2 Pro A new era in sound is about to begin, thanks to the Astria Coaxial Acoustic Architecture. 
        With enormous depth and detail played over the widest soundstage, what you hear is infinitely close to what the artist and sound engineer dreamed you would. And with HearID, you get a unique sound 
        that is intelligently tailored specially for your hearing profile.','Brand:	Soundcore<br>
Connections:	Bluetooth<br>
Model Name:	A3909<br>
Color:	Black<br>
Headphones Form Factor:	In Ear<br>
Sound clarity:	20000 Hz<br>
Frequency Range:	20Hz - 20kHz<br>
Item Weight:	0.22 Pounds<br>

', '•	Astria Coaxial Acoustic Architecture: A state-of-the-art design which integrates a customized Knowles balanced armature and an 11mm dynamic driver into a single body. Aligned direct-to-ear, Astria completely eliminates interference while producing harmonized treble and bass for jaw-dropping sound. <br>
•	In-Ear Studio Performance: Liberty 2 Pro is recommended by 10 Grammy Award winning producers. Sound is delivered at stadium-scale with impeccable depth and nuance. Every instrument presented perfectly across an expansive soundstage for a stunning representation of what the sound engineer and artist hoped you would hear. <br>
•	8-Hour Playtime*: A single charge of the earbuds gives 8 hours of audio, with 4 more full recharges from the charging case. The charging case recharges via fast-charge USB-C or wireless charging, and provides the earbuds with 2 hours of listening from a 10-minute charge. <br>
•	HearID Custom Sound: To ensure everyone gets a perfect listening experience, HearID intelligently analyses your unique hearing profile and creates a tailor-made sound setup just for your ears. Or take complete control of the sound with an adjustable EQ or 22 preset sound profiles. <br>
•	Quad-Microphone Calls: With 4 microphones and cVc 8.0 noise reduction, your voice is isolated and transmitted in high-clarity for a seamless hands-free experience. <br>
'), 
		('Soundcore Life Not True', 'Anker', '2500000', 'resource\\images\\lifeNot.jpg', 'Key Features Crystal-Clear Calls: 4 microphones with the latest cVc noise reduction technology highlight your voice while reducing background sounds. Expertly Tuned Sound: Graphene drivers produce a wider
        soundstage with exceptional accuracy and clarity. BassUp Technology: Exclusive technology conducts real-time analysis and enhancement of your audio
        bass frequencies to add powerful sonic punch.','Brand:	Soundcore<br>
Connections:	Bluetooth<br>
Model Name:	Soundcore Liberty<br>
Color:	Black<br>
Headphones Form Factor:	In Ear<br>
Noise Control:	Sound Isolation<br>
Item Weight:	0.22 Pounds<br>

', '•	Extreme 100 Hours of Playtime: A single charge gives you a full 8 hours of listening, while the charging case extends it to 100. <br>
•	Expertly Tuned Graphene Drivers: As graphene’s earliest pioneers, we have used our experience to create a new driver for Liberty wireless earphones that takes full advantage of the material’s remarkable properties. 100 times harder than steel and 35% lighter than traditional driver diaphragms, it oscillates with extreme precision to give your music a wider soundstage with exceptional accuracy and crystal-clear clarity across the entire frequency range. <br>
•	Fast-Charging: Charge for 15 minutes and get 2 hours of listening for when you need music in a rush. <br>
•	Rock-Solid Fit: Soundcore’s proprietary GripFit technology enables the wireless headphones to sit securely and comfortably in your ears—simply slide in and twist to lock. Take on an intense workout or navigate city streets knowing your earbuds will stay firmly in place. <br>
•	One-Step Pairing: Simply remove the earbuds from the charging case and they’ll automatically connect to the last paired device. <br>
'), 
        ('Soundcore Liberty Air2', 'Anker', '2800000', 'resource\\images\\libair.jpg', 'The graphene-coated drivers eliminate distortion to produce sound with enhanced accuracy and outstanding clarity. 
        Enjoy detailed highs, bright mids, and satisfyingly deep bass.Anker charging technology delivers an industry-leading 5-hour playtime from a single charge. For a boost of power on-the-go, 
        use the included charging case for up to 15 extra hours of use.','Brand:	Soundcore<br>
Connectivity Technology:	Bluetooth, RF<br>
Model Name:	Liberty Air 2<br>
Color:	Black<br>
Connector Type:	Ture Wireless Bluetooth Connection<br>
Headphones Jack:	Wireless<br>
Headphones Form Factor:	In Ear<br>
Sound clarity:	20 KHz<br>
Water Resistance Level:	Waterproof<br>
Noise Control:	Sound Isolation<br>

', '•	Soundcore is Anker’s audio brand, our signature sound is loved by 10 million+ people around the world. <br>
•	Expertly Tuned Graphene Drivers: As graphene’s earliest pioneers, we have used our experience to create a new driver for Liberty Neo wireless earbuds that takes full advantage of the material’s remarkable properties. 100 times harder than steel and 35% lighter than traditional driver diaphragms, it oscillates with extreme precision to give your music a wider soundstage with exceptional accuracy and crystal-clear clarity across the entire frequency range. <br>
•	Bass You Can Feel: Our exclusive BassUp technology analyzes your audio’s low frequencies in real-time and instantly increases the bass by up to 43%. Stop simply listening to your music, and start really feeling it. <br>
•	Unbreakable Connectivity: An LDS antenna, derived from satellite technology, combines with Bluetooth 5.0 to create an almost unbreakable link between your earbuds and your device—even in busy places. No skips, no drops. <br>
•	Power a Week of Listening: Using our Anker heritage and high-efficiency power cells, Liberty Neo delivers over 3.5 hours of wireless playtime from a single charge and an extra 9 hours from the compact charging case. <br>
'), 
		('Soundcore Spirit X2', 'Anker', '3500000', 'resource\\images\\spririt.jpeg', 'Key FeaturesIP68 Waterproof and SweatGuard: Protected by an ultra-waterproof casing and our patent SweatGuard technology for protection so strong, not even sweat vapor can penetrate it. 
        BassUp Technology: Exclusive technology conducts real-time analysis and enhancement of your audio bass 
        frequencies to add powerful sonic punch.','Brand:	Soundcore<br>
Connections:	Bluetooth<br>
Model Name:	A3451011<br>
Color:	Black<br>
Headphones Jack:	Micro USB<br>
Material:	Silicone<br>
Headphones Form Factor:	In Ear<br>
Water Resistance Level:	Water Resistant<br>
Noise Control:	Sound Isolation<br>
Item Weight:	0.09 Pounds<br>

', '•	Truly sweat proof technology: sweat guard is specially designed to resist the corrosive properties of sweat. <br>
•	High-octane sound: 10 mm dynamic drivers, precision tuning, and exclusive bass up technology ensure spirit x’s Deep low-end is balanced by lush midst and crystal-clear treble. <br>
•	Extreme comfort: gentle over-ear hooks and softened silicone ear tips float effortlessly in place as you sprint, lift, and push your way to the limit. <br>
•	12-Hour playtime: get sublime bass-driven sound for well over a week of workouts from a single charge. <br>
•	What you get: sound core spirit x, x-Small REMPTY/S/M/L/x-Large ear tips, S/M/L ear wings, 2 x cable clips, shirt clip, Micro USB cable, Travel Pouch, carabiner, our worry-free 18-month, and friendly customer service. <br>
'), 
        ('Soundcore Liberty Air ', 'Anker', '2850000', 'resource\\images\\air.jpg', 'Sound with Exceptional Accuracy and Clarity: The diamond-inspired drivers are lightweight, yet rigid for precise sound reproduction and extended treble and bass. aptX Audio: Ensures lossless sound transfer when streaming media from your device. HearID Tailored Sound: Maps your hearing sensitivity across multiple frequencies to create custom EQ settings for a truly
        personalized listening experience.','Brand:	Anker<br>
Connections:	Bluetooth<br>
Color:	Black<br>
Headphones Form Factor:	In Ear<br>
Control Type:	Voice Control<br>
Water Resistance Level:	Water Resistant<br>
Noise Control:	Sound Isolation<br>
Item Weight:	1.34 Ounces<br>

', '•	Truly Cable-Free: Find total freedom as you embrace the future of personal audio. Stream music and make calls completely wirelessly. With no wires, there’s nothing to get in the way or hold you back. This pair of small & comfortable in-ear earbuds will transform your listening experience<br>
•	One-Step Connection: Simply take the earbuds out of the charging case and they will automatically connect to your phone (after being paired the first time). Stable, efficient wireless connection with Bluetooth 5.0 and a specialized antenna for solid signal that resists interference<br>
•	Convenient Touch Control: Effortlessly manage audio playback & calls with the multi-function touch button and mic on each earbud. The right earbud can even be used alone like a Bluetooth headset<br>
•	Rechargeable Carrying Case: The earbuds alone provide up to 3 hours of energetic sound output on a 1.5-hour charge. The included charging case charges the earbuds up to 3 times, supporting an additional 8-9 hours of use, and keeps the earbuds safe & secure<br>
•	Package Contents: AUKEY EP-T16S True Wireless Earbuds, Charging Case, Three Pairs of Ear-Tips (S/M/L), USB-A to Micro-USB Cable, User Manual<br>
'); 

CREATE TABLE `users` (
`id` int(11) NOT NULL AUTO_INCREMENT,
`username` varchar(50) NOT NULL UNIQUE,
`password` varchar(50) NOT NULL,
`role` varchar(10) NOT NULL,
`firstname` varchar(50) NOT NULL,
`lastname` varchar(50) NOT NULL,
`address` varchar(50) NOT NULL,
`phone` char(50) NOT NULL,
`city` varchar(50) NOT NULL,
`email` varchar(50) NOT NULL,
PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
INSERT INTO `users` (`username`, `password`, `role`, `firstname`, `lastname`, `address`, `phone`, `city`, `email` )
VALUES ('user', '123456','user', 'Minh', 'Vu', 'Nguyen Luong Bang', '0905506983', 'Da Nang', 'minhvu@gmail.com'),
		('admin', '123456','admin', 'admin','admin','admin','admin','admin','admin' );

CREATE TABLE `orders` (
`id` int(11) NOT NULL auto_increment PRIMARY KEY,
`userid` int(11) NOT NULL, 
`total` int NOT NULL
);

select `id` from orders;
CREATE TABLE `orderdetail` (
`id` int(11) NOT NULL auto_increment PRIMARY KEY,
`orderid` int(11) NOT NULL,
`username` varchar(50) NOT NULL,
`itemid` int(11) NOT NULL,
`itemname` varchar(50) NOT NULL,
`quantity` int(11) NOT NULL,
`total` int(11) NOT NULL
);

