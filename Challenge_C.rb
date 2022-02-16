use_bpm 160
#change the sound of your notes by using a synthesizer
use_synth :saw

define :stranger_things_melody do
  play :c2
  sleep 0.5
  play :e2
  sleep 0.5
  play :g2
  sleep 0.5
  play :b2
  sleep 0.5
  play :c3
  sleep 0.5
  play :b2
  sleep 0.5
  play :g2
  sleep 0.5
  play :e2
  sleep 0.5
end

stranger_things_melody

# use fx to modify the sound produced by your synth
with_fx :distortion do
  stranger_things_melody
end

with_fx :ixi_techno do
  stranger_things_melody
end

with_fx :flanger do
  stranger_things_melody
end

with_fx :ping_pong do
  stranger_things_melody
end

# sustain just means hold the note longer!
play :c2, sustain: 3
play :e2, sustain: 4
play :g2, sustain: 2
play :b2, sustain: 2
