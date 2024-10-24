import itertools

import itertools

seating = [list(x) for x in itertools.permutations(range(8), 8)]

alice_bob_seatings = []
for seating_ in seating:
    if seating_.count(0) >= 2:
        alice_bob_seatings.append(seating_)

print(len(alice_bob_seatings))