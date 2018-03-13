/*

nonET
R.McMASTERS
for any number of laptops
2018


for EAR,L


to be performed in a completely dark room.

performers should be lit by their laptop screens only.

if possible, wear a white t-shirt or mylar poncho.

to perform:
language -> evaluate file.
type the numbers as they appear on the screen.

*/

s.boot;
s.waitForBoot{

	//the synth.
	SynthDef(\otone, {
		arg keyfreq,amp=0.5,dur=7.0,freq=200;
		var sin, env, verb;
		env = XLine.kr(amp,0.000000001,dur,doneAction:1);
		sin = SinOsc.ar(freq, mul:env, add:SinOsc.ar(freq*keyfreq, mul:0.2));
		Out.ar([0,1],sin);
	}).load(s);

	//a window.
	~window = Window.new("nonET", Rect(0, 0, Window.availableBounds.width, Window.availableBounds.height))
	.background_(Color.new255(209,30,72, 0))
	.front
	.alwaysOnTop_(true)
	.view.keyDownAction = {

		arg view, char, modifiers, unicode;
		[char, unicode].postln;
		~window.background_(Color.new255(209,30,72,(255-((57-unicode)*28))));
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
				~time = [1,1.5,2];

				AppClock.sched(0.0,

					Routine(
						{10.do{
							arg counter;
							var tones;
							tones = [1,2,3];
							~textbox.string_(tones.choose);
							~time.choose.wait}
						};
				));

				SystemClock.sched(20.0, ~x.set(\freq,150));
				AppClock.sched(20.0,
					Routine(
						{12.do{
							arg counter;
							var tones;
							tones = [4,5,6,100];
							~textbox.string_(tones.choose);
							~time.choose.wait;}})
				);

				AppClock.sched(40.0,
					~freq = 300;
					Routine(
						{12.do{
							arg counter;
							var tones;
							tones = [1,2,3,4];
							~textbox.string_(tones.choose);
							~time.choose.wait;}}));

			};
		);

		if(
			obj.value ==2,
			{Window.closeAll});

	});
}
/*
COLOR PALATTE
brown 253,230,189
green 161,197,171
yellow 244,221,81
burgundy 209,30,72
Palatinate Purple 99,47,83
light cyan 126,208,214
orange 255,157,46
*/