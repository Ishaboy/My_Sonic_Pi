# Welcome to Sonic Pi
use_bpm 108
use_synth :piano
use_synth_defaults sustain: 6

Among_Stars = "C:/Users/ryan_romero/Downloads/Final Vocals(Fly Me To The Moon).wav"

define :moon_function do
  #m1/m5 or Measure1/5
  play :c5,amp: 4
  sleep 1.5
  play :b4,amp: 4
  sleep 0.5
  play :a4,amp: 4
  sleep 0.5
  play :g4,amp: 4
  sleep 0.5
  play :g4,amp: 4
  sleep 0.5
  play :f4,amp: 4
  sleep 0.5
  #m2/m6 or Measure2/6
  play :f4,amp: 4
  sleep 2
  play :f4,amp: 4
  sleep 0.5
  play :g4,amp: 4
  sleep 0.5
  play :a4,amp: 4
  sleep 0.5
  play :c5,amp: 4
  sleep 0.5
end

define :lunar_function do
  #m3/m7 or Measure3/7
  play :b4,amp: 4
  sleep 0
  play :g4,amp: 4
  sleep 0
  play :d4,amp: 4
  sleep 1
  play :a4,amp: 4
  sleep 1
  play :g4,amp: 4
  sleep 0
  play :d4,amp: 4
  sleep 0
  play :b3,amp: 4
  sleep 0.5
  play :f4,amp: 4
  sleep 0.5
  play :f4,amp: 4
  sleep 1
  #m4/m8 or Measure4/8
  play :e4,amp: 4
  sleep 0
  play :b3,amp: 4
  sleep 0
  play :a3,amp: 4
  sleep 2
  play :e4,amp: 4
  sleep 0
  play :b3,amp: 4
  sleep 0
  play :a3,amp: 4
  sleep 0.5
  play :bb3,amp: 4
  sleep 0.5
  play :bb3,amp: 4
  sleep 1
end

define :jupiter_function do |n1, n2, n3, n4, n5, n6|
  #m10/m11 or Measure 10/11
  play n1,amp: 4
  sleep 1.5
  play n2,amp: 4
  sleep 0.5
  play n3,amp: 4
  sleep 0.5
  play n4,amp: 4
  sleep 0.5
  play n5,amp: 4
  sleep 0.5
  play n6,amp: 4
  sleep 0.5
end

define :mars_function do |n1, n2, n3, s|
  play n1,amp: 4
  play n2,amp: 4
  play n3,amp: 4
  sleep s
end


define :stars_function do
  notes = [:e2, :b2, :g3, :e3]
  i = 0
  rest = [0.5, 0.5, 2, 1]
  x = 0
  
  4.times do
    play notes[i], amp: 4
    sleep rest[i]
    i = i + 1
    x = x + 1
    if i > 3 and x > 3
      i = 0 and x = 0
    end
  end
end

define :stars2_function do
  notes = [:a2, :e3, :a3]
  i = 0
  rest = [0.5, 0.5, 3]
  x = 0
  
  3.times do
    play notes[i], amp: 4
    sleep rest[i]
    i = i + 1
    x = x + 1
    if i > 2 and x > 2
      i = 0 and x = 0
    end
  end
end

with_fx :reverb do
  live_loop :the_moon do
    
    #m1 or Measure1
    play :c5,amp: 4
    sleep 1.5
    play :b4,amp: 4
    sleep 0.5
    play :a4,amp: 4
    sleep 0.5
    play :g4,amp: 4
    sleep 0.5
    play :g4,amp: 4
    sleep 0.5
    play :f4,amp: 4
    sleep 0.5
    
    moon_function
    
    lunar_function
    
    moon_function
    
    lunar_function
    
    #m9 or Measure9
    play :a4,amp: 4
    play :e4,amp: 4
    play :d4,amp: 4
    sleep 1.5
    play :g4,amp: 4
    sleep 0.5
    play :f4,amp: 4
    sleep 1.75
    play :e4,amp: 4
    sleep 0.25
    play :e4,amp: 4
    sleep 1.75
    play :d4,amp: 4
    sleep 0.25
    
    jupiter_function :d4, :e4, :f4, :f4, :f4, :f4
    
    jupiter_function :g4, :f4, :e4, :d4, :d4, :c4
    
    #m12 or Measure12
    play :c4,amp: 4
    sleep 1.5
    play :e4,amp: 3
    play :b4,amp: 2
    sleep 1.5
    play :c4,amp: 1
    sleep 0.5
    play :c4,amp: 0.5
    sleep 0.5
    stop
  end
end

sleep 4

with_fx :reverb do
  live_loop :the_spring do
    
    mars_function :e4, :c4, :a4, 3
    
    mars_function :e4, :c4, :a3, 0.5
    
    mars_function :c4, :a3, :d3, 0.5
    
    mars_function :c4, :a3, :d3, 4
    
    #m3 or Measure3
    play :f3,amp: 4
    play :g2,amp: 4
    sleep 1.5
    play :f3,amp: 4
    sleep 0.5
    play :f3,amp: 4
    sleep 2
    #m4 or Measure4
    play :c3,amp: 4
    sleep 4
    
    mars_function :a3, :c3, :f2, 4
    
    mars_function :f2, :a2, :f4, 4
    
    stars_function
    
    stars2_function
    
    stop
  end
end

sleep 4

with_fx :reverb do
  live_loop :the_stars do
    sample Among_Stars, amp: 8
    stop
  end
end
