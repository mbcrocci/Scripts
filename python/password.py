letters = [
'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm',
'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z',
'0', '1', '2', '3', '4', '5', '6','7', '8', '9']


words = []

# One Letter
for letter in letters:
	words.append(letter)
print ("Finished 1")

# Words of 2 letters
for letter in letters:
	for letter2 in letters:
		words.append('%c%c' %( letter, letter2))
print ("Finished 2")

# Words of 3 letters
for letter in letters:
	for letter2 in letters:
		for letter3 in letters:
			words.append('%c%c%c' %( letter, letter2, letter3))
print ("Finished 3")

for letter in letters:
	for letter2 in letters:
		for letter3 in letters:
			for letter4 in letters:
				words.append('%c%c%c%c' %( letter, letter2, letter3, letter4))
print ("Finished 4")

for letter in letters:
	for letter2 in letters:
		for letter3 in letters:
			for letter4 in letters:
				for letter5 in letters:
					words.append('%c%c%c%c%c' %( letter, letter2, letter3,
					 letter4, letter5))
print ("Finished 4")



with open("password.txt", 'w') as f:
	print (words, file=f)

print('finished printing to file')