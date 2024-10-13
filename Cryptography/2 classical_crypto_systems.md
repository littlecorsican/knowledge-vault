https://www.udemy.com/course/du-cryptography/learn/lecture/31079388#overview

# 2 Classical Crypto Systems

## Subsitution Cipher

Monoalphabetic substituition cipher - not strong
Polyalphabetic substituition cipher

Replace the alphabets with something else.
A monoalphabetic cipher uses fixed substitution over the entire message, whereas a polyalphabetic cipher uses a number of substitutions at different positions in the message, where a unit from the plaintext is mapped to one of several possibilities in the ciphertext and vice versa.

## Transposition Cipher
change the position of alphabets 

## Frequency analysis

Check the frequency of alphabets, to gain some ideas.
Some alphabet combination is more frequent than other.

Bigram
- combination of letters(2) that are frequent in english

Trigram
- combination of letters(3) that are frequent in english

https://www.udemy.com/course/du-cryptography/learn/lecture/31079388#overview

## Polyalphabetical Cypher

Mono - use 1 table
Poly - use multiple table

if you always subsitute the same alphabet to a fixed another alphabet, frequency analysis can spot that

polyalhpabetical cypher subsitutes to multiple alphabets

## DES and AES

### DES algorithm
Plaintext (64 bits) -> first half will be fixed into 1st func, and the second half will be fit int 2nd func -> output Ciphertext

key size 
originally 128bits
now 64 -> 56 bits

Block cipher
64 bits

A weak algorithm.


3DES - improve DES, do the DES 3 times, encrypt once, decrpyit it, then re-encrypt it . Not a very good idea

### AES: Advanced Encryption Standard

key size : 128, 192 256 bits
block size: 128 bits


### Encryption mode