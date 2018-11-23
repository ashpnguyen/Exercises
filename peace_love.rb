use_bpm 100

def play_legato_note(note_value, duration)
  release_duration = duration
  if duration < 1
    release_duration = 1
  end
  
  play note_value, release: release_duration, amp: 0.65
  sleep duration
end

def melody_above
  play :c4
  sleep 0.75
  play :c4
  sleep 0.5
  play :a3
  sleep 0.25
  play :f3
  sleep 0.5
  play :b3
  sleep 2
  play :b3
  sleep 0.75
  play :b3
  sleep 0.5
  play :g3
  sleep 0.25
  play :e3
  sleep 0.5
  play :a3
  sleep 2
end

def chord_progression
  play :d3
  play :f3
  play :a3
  play :c4
  sleep 2
  play :g2
  play :b2
  play :d3
  play :f3
  sleep 2
  play :c3
  play :e3
  play :g3
  play :b3
  sleep 2
  play :a2
  play :c3
  play :e3
  play :g3
  sleep 2
end

live_loop :bass do
  use_synth :chipbass
  chord_progression
end

live_loop :kick do
  loop do
    sample :drum_tom_lo_soft
    sleep 0.75
    sample :drum_tom_lo_soft
    sleep 0.75
    sample :drum_tom_lo_soft
    sleep 1
    sample :drum_tom_lo_soft
    sleep 1.5
  end
end

live_loop :drum do
  loop do
    sleep 1
    sample :drum_tom_hi_soft
    sleep 1
  end
end

live_loop :top_melody do
  use_synth :beep
  melody_above
end

live_loop :main_melody do
  use_synth :chiplead
  
  sleep 16
  
  2. times do
    
    sleep 0.5
    
    play_legato_note :a4, 0.25
    play_legato_note :b4, 0.25
    play_legato_note :c5, 0.25
    play_legato_note :d5, 0.5
    play_legato_note :e5, 0.5
    play_legato_note :g5, 0.5
    play_legato_note :d5, 0.5
    play_legato_note :c5, 0.5
    play_legato_note :b4, 0.75
    play_legato_note :c5, 0.25
    play_legato_note :b4, 0.75
    play_legato_note :b4, 0.25
    play_legato_note :c5, 0.25
    play_legato_note :b4, 0.25
    play_legato_note :g4, 0.5
    play_legato_note :e4, 1.75
    
    play_legato_note :a4, 0.25
    play_legato_note :b4, 0.25
    play_legato_note :c5, 0.25
    play_legato_note :d5, 0.5
    play_legato_note :e5, 0.5
    play_legato_note :g5, 0.5
    play_legato_note :d5, 0.5
    play_legato_note :c5, 0.5
    play_legato_note :b4, 0.75
    play_legato_note :c5, 0.25
    play_legato_note :b4, 0.75
    play_legato_note :b4, 0.25
    play_legato_note :c5, 0.25
    play_legato_note :b4, 0.25
    play_legato_note :g4, 0.5
    play_legato_note :e4, 1.75
    
    play_legato_note :a4, 0.5
    play_legato_note :a4, 0.25
    play_legato_note :a5, 0.25
    play_legato_note :g5, 0.25
    play_legato_note :a5, 0.25
    play_legato_note :e5, 2.5
    
    play_legato_note :a4, 0.25
    play_legato_note :a4, 0.25
    play_legato_note :a4, 0.25
    play_legato_note :a5, 0.25
    play_legato_note :g5, 0.25
    play_legato_note :a5, 0.25
    play_legato_note :e5, 2.5
    
    play_legato_note :a4, 0.25
    play_legato_note :a4, 0.25
    play_legato_note :a4, 0.25
    play_legato_note :a5, 0.25
    play_legato_note :g5, 1
    play_legato_note :a4, 0.25
    play_legato_note :a4, 0.25
    play_legato_note :a4, 0.25
    play_legato_note :a5, 0.25
    play_legato_note :g5, 1
    play_legato_note :a4, 0.25
    play_legato_note :a4, 0.25
    play_legato_note :a4, 0.25
    play_legato_note :a5, 0.25
    play_legato_note :g5, 0.25
    play_legato_note :a5, 0.25
    play_legato_note :e5, 2
    
  end
end



