#Custom Song Challenge Seven Nation Army
vocals = "C:/Users/jacob_bozzalla/Documents/Audacity/audacity The White Stripes - Seven Nation Army isolated vocal track, vocals only.mp3"
guitar = "C:/Users/jacob_bozzalla/Documents/Audacity/Seven Nation Army - The White Stripes  Only Guitar (Isolated).mp3"

harddrums = "C:/Users/jacob_bozzalla/Documents/Audacity/Seven Nation Army - The White Stripes  Only hard drums (Isolated).mp3"


define :main_beat do
  play :e2, amp: 0.75
  wait 0.75
  play :e2, amp: 0.75
  wait 0.25
  play :g2, amp: 0.75
  wait 0.375
  play :e2, amp: 0.75
  wait 0.375
  play :d2, amp: 0.75
  wait 0.25
  play :c2, amp: 0.75
  wait 1
  play :b1, amp: 0.75
  wait 1
end

live_loop :bass do
  use_synth :bass_foundation
  12.times do
    main_beat
  end
  stop
end

wait 8
live_loop :drums do
  27.times do
    sample :drum_bass_hard, amp: 0.75
    sleep 0.5
    sample :drum_snare_hard, amp: 0.75
    sleep 0.5
  end
  stop
end

wait 6
sample vocals

wait 20
live_loop :drums2 do
  15.times do
    sample :drum_cymbal_pedal , amp: 2
    sleep 0.5
    sample :drum_bass_hard, amp: 2
    sleep 0.5
  end
  stop
end

wait 12
sample guitar, amp: 4

wait 2
live_loop :drums2 do
  17.times do
    sample :drum_cymbal_pedal, amp: 2
    sleep 0.5
    sample :drum_cymbal_pedal, amp: 2
    sleep 0.5
    sample :drum_cymbal_pedal, amp: 2
    sleep 0.5
  end
  stop
end
sample harddrums, amp: 4
