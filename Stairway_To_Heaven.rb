# Welcome to Sonic Pi
use_bpm 120
use_synth :piano
use_synth_defaults sustain: 6

led_zeplin ="C:/Users/ryan_romero/Downloads/Stair_Way_Heaven.wav"

notes = [:c4, :e4, :a4, :b4, :e4, :c4, :b4]

i = 0

rest = [1, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5]

x = 0

define :gold do
  7.times do
    play notes[i],amp: 2
    sleep rest[x]
    i = i + 1
    x = x + 1
    if i > 6 and x > 6
      i = 0 and x = 0
    end
  end
end

song = [:c5, :e4, :c4, :c5, :f4, :d4, :b3, :f4]

i = 0

define :tune do
  8.times do
    play song[i], amp: 2
    sleep 0.5
    i = i + 1
    if i > 7
      i = 0
    end
  end
end

note = [:e4, :c4, :b3, :c4, :c4, :e4, :c4, :b3]

i = 0

define :lady do
  8.times do
    play note[i], amp: 2
    sleep 0.5
    i = i + 1
    if i > 7
      i = 0
    end
  end
end

define :whispered do
  #Measure 4/8
  play :d4, amp: 2
  play :b2, amp: 2
  play :g2, amp: 2
  sleep 0.5
  play :e4, amp: 2
  play :c4, amp: 2
  play :b3, amp: 2
  sleep 0.5
  play :e4, amp: 2
  play :c4, amp: 2
  play :b3, amp: 2
  sleep 2
  sleep 1
end


define :wonder do
  #Measure 1/5
  play :a3, amp: 2
  sleep 2
  play :g3, amp: 2
  sleep 2
  #Measure 2/6
  play :g3, amp: 2
  sleep 2
  play :f3, amp: 2
  sleep 2
  #Measure 3/7
  play :f3, amp: 2
  sleep 4
end

define :glitter do |s1, s2, n1, s3, n2, s4|
  #Measure 4/8
  play :b2, amp: 2
  sleep 0.5
  play :a2, amp: 2
  sleep 0.5
  play :a2, amp: 2
  sleep s1
  sleep s2
  play :a2, amp: 2
  sleep 0.5
  play n1, amp: 2
  sleep s3
  play n2, amp: 2
  sleep s4
end

#Song Starts HERE

with_fx :reverb do
  live_loop :stairway do
    #Measure 1a
    
    gold
    
    #Measure 1b
    
    gold
    
    #Measure 2/6
    
    tune
    
    #Measure 3/7
    
    lady
    
    #Measure 4/8
    
    whispered
    
    #Measure 5
    sleep 0.5
    play :b3, amp: 2
    sleep 0.5
    play :c4, amp: 2
    sleep 0.5
    play :e4, amp: 2
    sleep 0.5
    play :b4, amp: 2
    sleep 0.5
    play :e4, amp: 2
    sleep 0.5
    play :c4, amp: 2
    sleep 0.5
    play :b4, amp: 2
    sleep 0.5
    #Measure 6/2
    
    tune
    
    #Measure 7/3
    
    lady
    
    #Measure 8/4
    
    whispered
    
    stop
  end
end

with_fx :reverb do
  live_loop :to_heaven do
    
    wonder
    
    glitter 1, 0.5, :f3, 0.5, :e3, 0.5
    
    wonder
    
    glitter 2, 0, :r, 0, :r, 0
    
    stop
  end
end

sleep 10

with_fx :reverb do
  live_loop :led_zeplin do
    sample led_zeplin, amp: 30
    stop
  end
end

sleep 24

with_fx :reverb do
  live_loop :ending_one do
    4.times do
      sample :drum_cymbal_open
      sleep 1
    end
    stop
  end
end

sleep 0.5

with_fx :reverb do
  live_loop :ending_two do
    4.times do
      sample :drum_cymbal_closed
      sleep 1
    end
    stop
  end
end
