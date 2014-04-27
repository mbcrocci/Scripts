
#!/usr/bin/env python3

class Person ():

    def __init__(self, name, provider, number):
        self.name = name
        self.provider = provider
        self.number = number


def new_contact():
    new = Person(0, 0, 0)

    new.name = input("Name: ").lower()
    new.provider = input("Provider: ").lower()
    new.number = input("Number: ")
    print("")

    return new


def search_provider(lista, provider):
    for obj in lista:
        if obj.provider == provider:
            print (obj.name, "has ", obj.provider)


def same_number(lista):
    for obj in lista:
        for obj2 in lista:
            if obj.number == obj2.number and obj.name != obj2.name and obj != obj2:
                print (obj.name, " has the same number as:", obj2.name)


def all_contacts(lista):
    for obj in lista:
        print("Name: ", obj.name)
        print("Provider: ", obj.provider)
        print("Number :", obj.number)
        print("")


def menu():

    print ("\n1 - Add new contact")
    print ("2 - Search people with same provider")
    print ("3 - Search people with same number")
    print ("4 - Print all contacts")
    print ("5 - Exit\n")

    op = 0
    while 1 > op or op > 5:
        op = int(input("Option: "))
        print("")

    return op


def main():
    contacts = []

    # Add file contents to contacts list
    with open("contacts.txt", 'r') as f:
        for line in f:
            try:
                obj = Person(0, 0, 0)
                obj.name, obj.provider, obj.number = line.split(' ')

                contacts.append(obj)
            except ValueError:
                pass  # if there is an emprty line it passes to the next one

    op = 0
    while op != 5:
        op = menu()

        if op == 1:
            contacts.append(new_contact())

        elif op == 2:
            search_provider(contacts,  input("Provider: "))

        elif op == 3:
            same_number(contacts)

        elif op == 4:
            all_contacts(contacts)

    # add new contacts to contact list
    with open("contacts.txt", 'w') as f:
        for obj in contacts:
            f.writelines("%s %s %s\n" % (obj.name, obj.provider, obj.number))

if __name__ == '__main__':
    main()
