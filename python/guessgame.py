import random


def random_number():
    return random.randrange(1, 101)


def player_id(counter):
    if counter % 2 != 0:
        return 1

    else:
        return 2


def get_guess(player_id):
    guess = int(input("Enter your guess player %d: " % (player_id)))
    return guess


def evaluate(guess, number):

    if guess < number:
        return "Higher than that"

    elif guess > number:
        return "Lower than that"

    else:
        return 0


def main():

    number = random_number()
    guess, counter = 0, 0

    while guess != number:
        counter += 1
        # evaluate the return from get_guess by passing the return from
        # player_id
        result = evaluate(get_guess(player_id(counter)), number)
        if result == 0:
            break
        else:
            print(result)

    print("Congratulations player %d" % (player_id(counter)))

if __name__ == "__main__":
    main()
