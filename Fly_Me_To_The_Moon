use_bpm 108
use_synth :piano
use_synth_defaults sustain: 6

Among_Stars = "C:/Users/ryan_romero/Downloads/Final Vocals(Fly Me To The Moon).wav"

define :moon_function do |n1, s1, n2, s2, n3, s3, n4, s4, n5, s5, n6, s6, n7, s7, n8, s8, n9, s9, n10, s10, n11, s11|
  #m1/m5 or Measure1/5
  play n1,amp: 4
  sleep s1
  play n2,amp: 4
  sleep s2
  play n3,amp: 4
  sleep s3
  play n4,amp: 4
  sleep s4
  play n5,amp: 4
  sleep s5
  play n6,amp: 4
  sleep s6
  #m2/m6 or Measure2/6
  play n7,amp: 4
  sleep s7
  play n8,amp: 4
  sleep s8
  play n9,amp: 4
  sleep s9
  play n10,amp: 4
  sleep s10
  play n11,amp: 4
  sleep s11
end

define :lunar_function do |n1, s1, n2, s2, n3, s3, n4, s4, n5, s5, n6, s6, n7, s7, n8, s8, n9, s9, n10, s10, n11, s11, n12, s12, n13, s13, n14, s14, n15, s15, n16, s16, n17, s17|
  #m3/m7 or Measure3/7
  play n1,amp: 4
  sleep s1
  play n2,amp: 4
  sleep s2
  play n3,amp: 4
  sleep s3
  play n4,amp: 4
  sleep s4
  play n5,amp: 4
  sleep s5
  play n6,amp: 4
  sleep s6
  play n7,amp: 4
  sleep s7
  play n8,amp: 4
  sleep s8
  play n9,amp: 4
  sleep s9
  #m4/m8 or Measure4/8
  play n10,amp: 4
  sleep s10
  play n11,amp: 4
  sleep s11
  play n12,amp: 4
  sleep s12
  play n13,amp: 4
  sleep s13
  play n14,amp: 4
  sleep s14
  play n15,amp: 4
  sleep s15
  play n16,amp: 4
  sleep s16
  play n17,amp: 4
  sleep s17
end

notes = [:c5, :b4, :a4, :g4, :g4, :f4, :f4, :f4, :g4, :a4, :c5]
i = 0
rest = [1.5, 0.5, 0.5, 0.5, 0.5, 0.5, 2, 0.5, 0.5, 0.5, 0.5]
i = 0

define :a do
  11.times do
    play notes[i], amp: 4
    sleep rest[i]
    i = i + 1
  end
  
  lunar_function :b4, 0, :g4, 0, :d4, 1, :a4, 1, :g4, 0, :d4, 0, :b3, 0.5, :f4, 0.5, :f4, 1, :e4, 0, :b3, 0, :a3, 2, :e4, 0, :b3, 0, :a3, 0.5, :bb3, 0.5, :bb3, 1
  
  moon_function :c5, 1.5, :b4, 0.5, :a4, 0.5, :g4, 0.5, :g4, 0.5, :f4, 0.5, :f4, 2, :f4, 0.5, :g4, 0.5, :a4, 0.5, :c5, 0.5
  
  lunar_function :b4, 0, :g4, 0, :d4, 1, :a4, 1, :g4, 0, :d4, 0, :b3, 0.5, :f4, 0.5, :f4, 1, :e4, 0, :b3, 0, :a3, 2, :e4, 0, :b3, 0, :a3, 0.5, :bb3, 0.5, :bb3, 1
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
  #m10 or Measure10
  play :d4,amp: 4
  sleep 1.5
  play :e4,amp: 4
  sleep 0.5
  play :f4,amp: 4
  sleep 0.5
  play :f4,amp: 4
  sleep 0.5
  play :f4,amp: 4
  sleep 0.5
  play :f4,amp: 4
  sleep 0.5
  #m11 or Measure11
  play :g4,amp: 4
  sleep 1.5
  play :f4,amp: 4
  sleep 0.5
  play :e4,amp: 4
  sleep 0.5
  play :d4,amp: 4
  sleep 0.5
  play :d4,amp: 4
  sleep 0.5
  play :c4,amp: 4
  sleep 0.5
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
end

define :b do
  #m1 or Measure1
  play :e4,amp: 4
  play :c4,amp: 4
  play :a4,amp: 4
  sleep 3
  play :e4,amp: 4
  play :c4,amp: 4
  play :a3,amp: 4
  sleep 0.5
  play :c4,amp: 4
  play :a3,amp: 4
  play :d3,amp: 4
  sleep 0.5
  #m2 or Measure2
  play :c4,amp: 4
  play :a3,amp: 4
  play :d3,amp: 4
  sleep 4
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
  #m5 or Measure5
  play :a3,amp: 4
  play :c3,amp: 4
  play :f2,amp: 4
  sleep 4
  #m6 or Measure6
  play :f2,amp: 4
  play :a2,amp: 4
  play :f4,amp: 4
  sleep 4
  #m7 or Measure7
  play :e2,amp: 4
  sleep 0.5
  play :b2,amp: 4
  sleep 0.5
  play :g3,amp: 4
  sleep 2
  play :e3,amp: 4
  sleep 1
  #m8 or Measure8
  play :a2,amp: 4
  sleep 0.5
  play :e3,amp: 2
  sleep 0.5
  play :a3,amp: 0.5
  sleep 3
end

with_fx :reverb do
  live_loop :the_moon do
    a
    stop
  end
end

sleep 16

with_fx :reverb do
  live_loop :the_spring do
    b
    stop
  end
end

sleep 4

with_fx :reverb do
  live_loop :the_stars do
    sample Among_Stars, amp: 8
    sleep 28
  end
  stop
end
