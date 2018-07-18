/*

0-4//6-9
R.McMASTERS
for any number of laptops
2018


for EAR/L


to be performed in a completely dark room.
performers should be lit by their laptop screens only.
if possible, wear a white t-shirt or mylar poncho.

to perform:
language -> evaluate file.

type the numbers as they appear on the screen.

N.B. several sections have numbers that flash by very quickly.
     get as many as you can.
     the effect of these sections should be frantic and shimmering.

*/

//PLAYER F

s.boot;
s.waitForBoot{

	//the synth.
	SynthDef(\otone, {
		arg keyfreq,amp=0.2,dur=7.0,freq=336;
		var sin, env, verb;
		env = XLine.kr(amp,0.0001,dur,doneAction:1);
		sin = SinOsc.ar(freq, mul:env, add:SinOsc.ar(freq*keyfreq, mul:0.1));
		Out.ar([0,1],sin);
	}).load(s);

	//a window.
	~window = Window.new("0-4//6-9", Rect(0, 0, Window.availableBounds.width, Window.availableBounds.height))
	.background_(Color.black)
	.front
	.alwaysOnTop_(true)
	.view.keyDownAction = {

		arg view, char, modifiers, unicode;
		[char, unicode].postln;
		~textbox.background_(Color.new255(191,135,123,(255-((57-unicode)*28))));
		~x = Synth(\otone, [\keyfreq,(unicode-48),\dur,10.0.rand]);
		~x.set(\keyfreq,(unicode-48));
	};

	//a textbox.
	~textbox = StaticText(~window, Rect(0,0,Window.availableBounds.width,Window.availableBounds.height))
	.align_(\center)
	.string_(" ")
	.stringColor_(Color.grey)
	.background_(Color.clear)
	.font_(Font(size:300));

	~button1 = Button(~window, Rect((Window.availableBounds.width/2-175), 100, 350, 100))
	.states_([
		["play", Color.grey, Color.clear],
		["stop", Color.grey, Color.clear],
		["close"]
	])
	.font_(Font(size:72))
	.action_({
		arg obj;
		if(
			obj.value ==1,
			{

				//1
				AppClock.sched(0,
					Routine({1.do{
						var tones, time;
						time = [20];
						tones = [" "];
						~textbox.string_(tones.choose);
						time.choose.wait}}));

				//2
				AppClock.sched(20,
					Routine({10.do{
						var tones, time;
						time = [2];
						tones = [0," "];
						~textbox.string_(tones.choose);
						time.choose.wait;}}));

				//3
				AppClock.sched(40,
					Routine({10.do{
						var tones, time;
						time = [2];
						tones = [0," "];
						~textbox.string_(tones.choose);
						time.choose.wait;}}));

				//4
				AppClock.sched(60,
					Routine({10.do{
						var tones, time;
						time = [2];
						tones = [0," "];
						~textbox.string_(tones.choose);
						time.choose.wait;}}));

				//5
				AppClock.sched(80,
					Routine({1.do{
						var tones, time;
						time = [20];
						tones = [" "];
						~textbox.string_(tones.choose);
						time.choose.wait;}}));

				//6
				AppClock.sched(100,
					Routine({20.do{
						var tones, time;
						time = [1];
						tones = [0,1];
						~textbox.string_(tones.choose);
						time.choose.wait;}}));

				//7
				AppClock.sched(120,
					Routine({20.do{
						var tones, time;
						time = [1];
						tones = [1,2,4];
						~textbox.string_(tones.choose);
						time.choose.wait;}}));

				//8
				AppClock.sched(140,
					Routine({20.do{
						var tones, time;
						time = [1];
						tones = [1,2,3,4];
						~textbox.string_(tones.choose);
						time.choose.wait;}}));

				//9
				AppClock.sched(160,
					Routine({40.do{
						var tones, time;
						time = [0.5];
						tones = [0,1,7];
						~textbox.string_(tones.choose);
						time.choose.wait;}}));

				//10
				AppClock.sched(180,
					Routine({40.do{
						var tones, time;
						time = [0.5];
						tones = [8,9];
						~textbox.string_(tones.choose);
						time.choose.wait;}}));

				//11
				AppClock.sched(200,
					Routine({40.do{
						var tones, time;
						time = [0.5];
						tones = [0,1];
						~textbox.string_(tones.choose);
						time.choose.wait;}}));

				//12
				AppClock.sched(220,
					Routine({20.do{
						var tones, time;
						time = [1];
						tones = [4,6,46,64];
						~textbox.string_(tones.choose);
						time.choose.wait;}}));

				//13
				AppClock.sched(240,
					Routine({20.do{
						var tones, time;
						time = [1];
						tones = [7,9,79,97];
						~textbox.string_(tones.choose);
						time.choose.wait;}}));

				//14
				AppClock.sched(260,
					Routine({40.do{
						var tones, time;
						time = [0.5];
						tones = [7,8,9];
						~textbox.string_(tones.choose);
						time.choose.wait;}}));

				//15
				AppClock.sched(280,
					Routine({1.do{
						var tones, time;
						time = [20];
						tones = [0];
						~textbox.string_(tones.choose);
						time.choose.wait;}}));

				//16
				AppClock.sched(300,
					Routine({40.do{
						var tones, time;
						time = [0.5];
						tones = [0,4,6,46,64];
						~textbox.string_(tones.choose);
						time.choose.wait;}}));

				//17
				AppClock.sched(320,
					Routine({80.do{
						var tones, time;
						time = [0.25];
						tones = [0,1];
						~textbox.string_(tones.choose);
						time.choose.wait;}}));

				//18
				AppClock.sched(340,
					Routine({40.do{
						var tones, time;
						time = [0.5];
						tones = [1,3];
						~textbox.string_(tones.choose);
						time.choose.wait;}}));

				//19
				AppClock.sched(360,
					Routine({40.do{
						var tones, time;
						time = [0.5];
						tones = [12,13,123,321,32,23];
						~textbox.string_(tones.choose);
						time.choose.wait;}}));

				//20
				AppClock.sched(380,
					Routine({1.do{
						var tones, time;
						time = [20];
						tones = [0];
						~textbox.string_(tones.choose);
						time.choose.wait;}}));

				//21
				AppClock.sched(400,
					Routine({80.do{
						var tones, time;
						time = [0.25];
						tones = [0,8,9];
						~textbox.string_(tones.choose);
						time.choose.wait;}}));

				//22
				AppClock.sched(420,
					Routine({80.do{
						var tones, time;
						time = [0.25];
						tones = [1,2,3,4,6,7,8,9];
						~textbox.string_(tones.choose);
						time.choose.wait;}}));

				//23
				AppClock.sched(440,
					Routine({40.do{
						var tones, time;
						time = [0.5];
						tones = [1,2];
						~textbox.string_(tones.choose);
						time.choose.wait;}}));

				//24
				AppClock.sched(460,
					Routine({40.do{
						var tones, time;
						time = [0.5];
						tones = [123,321,46,64,789,987];
						~textbox.string_(tones.choose);
						time.choose.wait;}}));

				//25
				AppClock.sched(480,
					Routine({80.do{
						var tones, time;
						time = [0.25];
						tones = [2,4,8];
						~textbox.string_(tones.choose);
						time.choose.wait;}}));

				//26
				AppClock.sched(500,
					Routine({80.do{
						var tones, time;
						time = [0.25];
						tones = [3,7,9];
						~textbox.string_(tones.choose);
						time.choose.wait;}}));

				//27
				AppClock.sched(520,
					Routine({40.do{
						var tones, time;
						time = [1];
						tones = [0,00,000,9,99,999,90,900,909];
						~textbox.string_(tones.choose);
						time.choose.wait;}}));

				//28
				AppClock.sched(540,
					Routine({1.do{
						var tones, time;
						tones = [0];
						~textbox.string_(tones.choose);
						time.choose.wait;}}));

				//29
				AppClock.sched(542,
					Routine({1.do{
						var tones, time;
						time = [1];
						tones = [0];
						~textbox.string_("end.");
						time.choose.wait;}}));

			};
		);

		if(
			obj.value ==2,
			{Window.closeAll});

	});
}