# Seven Nation Army by The White Stripes
use_bpm 120
use_synth :fm
vocals = "C:/Users/emarintsch/Desktop/seven_nation_hold_me_back.wav"

define :notes_function do
  play :e3, sustain: 1.5
  sleep 1.5
  play :e3
  sleep 0.5
  play :g3
  sleep 0.75
  play :e3
  sleep 0.75
  play :d3
  sleep 0.5
  play :c3, sustain: 1.75
  sleep 2
  play :b2, sustain: 1.75
  sleep 2
end


#bass
live_loop :bass do
  3.times do
    notes_function
  end
  stop
end

sleep 8

#drums
live_loop :drums do
  2.times do
    sample :drum_heavy_kick, amp: 2
    sleep 1
    sample :drum_heavy_kick, amp: 2
    sleep 1
    sample :drum_heavy_kick, amp: 2
    sleep 1
    sample :drum_heavy_kick, amp: 2
    sleep 1
    sample :drum_heavy_kick, amp: 2
    sleep 1
    sample :drum_heavy_kick, amp: 2
    sleep 1
    sample :drum_heavy_kick, amp: 2
    sleep 1
    sample :drum_heavy_kick, amp: 2
    sleep 1
  end
  stop
end

sleep 8

#snare
live_loop :snare do
    sample :drum_snare_soft, amp: 0.25
    sleep 0.5
    sample :drum_snare_soft, amp: 0.5
    sleep 0.5
    sample :drum_snare_soft, amp: 0.75
    sleep 0.5
    sample :drum_snare_soft, amp: 1.0
    sleep 0.5
    sample :drum_snare_soft, amp: 1.25
    sleep 0.5
    sample :drum_snare_soft, amp: 1.5
    sleep 0.5
    sample :drum_snare_soft, amp: 1.75
    sleep 0.5
    sample :drum_snare_soft, amp: 2.0
    sleep 0.5
    sample :drum_snare_soft, amp: 2.25
    sleep 0.5
    sample :drum_snare_soft, amp: 2.5
    sleep 0.5
    sample :drum_snare_soft, amp: 2.75
    sleep 0.5
    sample :drum_snare_soft, amp: 3.0
    sleep 0.5
    sample :drum_snare_soft, amp: 3.25
    sleep 0.5
    sample :drum_snare_soft, amp: 3.5
    sleep 0.5
    sample :drum_snare_soft, amp: 3.75
    sleep 0.5
    sample :drum_snare_soft, amp: 4.0
    sleep 0.5
stop
end

sample :drum_splash_hard, amp: 2, sustain: 3
sample :drum_splash_soft, amp: 3, sustain: 2

#vocals
with_fx :echo do
  sample vocals
end
