import sys

seq = sys.argv[1]

rev_seq = ''
for s in seq:
    if s == 'A':
        rev_seq += 'T'
    elif s == 'T':
        rev_seq += 'A'
    elif s == 'G':
        rev_seq += 'C'
    elif s == 'C':
        rev_seq += 'G'
    else:
        rev_seq += s

rev_seq = rev_seq[::-1]
print(rev_seq)
