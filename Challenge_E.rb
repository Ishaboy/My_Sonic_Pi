# TEMPO & SYNTH
use_bpm 180
use_synth :chipbass

# VARIABLES TO STORE SAMPLES


intro = "C:/Users/ryan_romero/Downloads/mario_sounds-20220223T193401Z-001/mario_sounds/mario_intro.wav"
sample intro

sleep 8


# INTRO
play :e4
sleep 0.5
play :e4
sleep 1
play :e4
sleep 1
play :c4
sleep 0.5
play :e4
sleep 1
play :g4
sleep 2
play :g3
sleep 2

#PART ONE
live_loop :my_melody do
  4.times do
    play :c4
    sleep 1.5
    play :g3
    sleep 1.5
    play :e3
    sleep 1.5
    play :a3
    sleep 1
    play :b3
    sleep 1
    play :bb3
    sleep 0.5
    play :a3
    sleep 1
  end
  stop
end

live_loop :samples do
  4.times do
    intro = "C:/Users/ryan_romero/Downloads/mario_sounds-20220223T193401Z-001/mario_sounds/jump.wav"
    sample intro
    sleep 2
    intro = "C:/Users/ryan_romero/Downloads/mario_sounds-20220223T193401Z-001/mario_sounds/coin.wav"
    sample intro
    sleep 1
    intro = "C:/Users/ryan_romero/Downloads/mario_sounds-20220223T193401Z-001/mario_sounds/coin.wav"
    sample intro
    sleep 1
    intro = "C:/Users/ryan_romero/Downloads/mario_sounds-20220223T193401Z-001/mario_sounds/pipe.wav"
    sample intro
    sleep 4
  end
  stop
end

sleep 32

#PART TWO
play :g3
sleep 2/3.0 #0.666666...
play :e4
sleep 2/3.0 #0.666666...
play :g4
sleep 2/3.0 #0.666666...
play :a4
sleep 1
play :f4
sleep 0.5
play :g4
sleep 1
play :e4
sleep 1
play :c4
sleep 0.5
play :d4
sleep 0.5
play :b3
sleep 1

intro = "C:/Users/ryan_romero/Downloads/mario_sounds-20220223T193401Z-001/mario_sounds/mushroom.wav"
sample intro
