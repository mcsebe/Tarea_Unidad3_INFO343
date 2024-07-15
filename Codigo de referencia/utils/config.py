sample_rate = 32000

"""int: Target sample rate during feature extraction"""

window_size = 2048
"""int: Size of FFT window"""

overlap = 1024
"""int: Amount of overlap between frames"""

mel_bins = 64
"""int: Number of Mel bins"""

kmax = 3

labels = ['Acoustic_guitar', 'Applause', 'Bark', 'Bass_drum', 
          'Burping_or_eructation', 'Bus', 'Cello', 'Chime', 'Clarinet', 
          'Computer_keyboard', 'Cough', 'Cowbell', 'Double_bass', 
          'Drawer_open_or_close', 'Electric_piano', 'Fart', 'Finger_snapping', 
          'Fireworks', 'Flute', 'Glockenspiel', 'Gong', 'Gunshot_or_gunfire', 
          'Harmonica', 'Hi-hat', 'Keys_jangling', 'Knock', 'Laughter', 'Meow', 
          'Microwave_oven', 'Oboe', 'Saxophone', 'Scissors', 'Shatter', 
          'Snare_drum', 'Squeak', 'Tambourine', 'Tearing', 'Telephone', 
          'Trumpet', 'Violin_or_fiddle', 'Writing']

lb_to_ix = {lb: i for i, lb in enumerate(labels)}
ix_to_lb = {i: lb for i, lb in enumerate(labels)}

corrupted_files = ['0b0427e2.wav', '6ea0099f.wav', 'b39975f5.wav']
