# Stranger Things Main Theme
use_bpm 160
use_synth :saw
stranger = ["c2", "e2", "g2", "b2", "c3","b2","g2","e2"]
i = 0

live_loop :main_theme do
  with_fx :distortion do
    # YOUR TASK: Use arrays to shorten the 16 lines of code inside this live_loop to only 5 lines of code!
    play(stranger[i])
    sleep 0.5
    i = i + 1
    if i > 7
      i = 0
    end
  end
end
