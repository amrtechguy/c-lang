#include <stdio.h>
#include <string.h>

#define CARD_TYPE_SIZE (20)
#define ACCOUNT_NAME_SIZE (50)
#define MAX_CARDS_PER_ACCOUNT (10)

/*
    struct
        -> used to store named variables of different types.
        -> defined outside the functions.
        -> is lvalue, so we can assign a value of another struct of the same type to it.
        -> is passed by value to the function.
*/

// struct definitions
struct cardT {
    int id;
    char type[CARD_TYPE_SIZE];
    float balance;
};

struct accountT {
    int id;
    char name[ACCOUNT_NAME_SIZE];
    float balance;
    struct cardT cards[MAX_CARDS_PER_ACCOUNT];
};

// function prototypes 
void init_account(struct accountT *acc, int id, char *name, float balance);

void print_account(const struct accountT *acc);

void print_account_cards(const struct accountT *acc);

void init_card(struct cardT *card, int id, char *type, float balance);

void print_card(const struct cardT *card);

int add_account_card(struct accountT *acc, int id, char *type, float balance);

// main function
int main() {

    // declare a variable of the struct type accountT
    struct accountT acc;

    // initialize the struct type variables
    init_account(&acc, 1, "Nour Adam", 500000);

    // print the account info
    print_account(&acc);
    printf("\n");

    // add new cards to the account
    add_account_card(&acc, 123, "credit", 0);
    add_account_card(&acc, 999, "debit", 100000);

    // print the account cards
    print_account_cards(&acc);

    return 0;
}

void init_account(struct accountT *acc, int id, char *name, float balance) {
    acc->id = id;
    strncpy(acc->name, name, (ACCOUNT_NAME_SIZE - 1));
    acc->balance = 0;

    // init all cards
    for(int i = 0; i < MAX_CARDS_PER_ACCOUNT; i++) {
        acc->cards[i].id = 0;
        acc->cards[i].type[0] = 0;
        acc->cards[i].balance = 0;    
    }
}

void init_card(struct cardT *card, int id, char *type, float balance) {
    card->id = id;
    strncpy(card->type, type, (CARD_TYPE_SIZE - 1));
    card->balance = balance;
}

void print_account(const struct accountT *acc) {
    printf("Account Details:\n");
    printf("ID: %d\n", (*acc).id); // (*acc).id = acc->id 
    printf("Name: %s\n", (*acc).name);
    printf("Balance: %.2f\n", (*acc).balance);
}

void print_card(const struct cardT *card) {
    if(card->id == 0) {
        printf("This card is not initialized yet.\n");
        return;
    }

    printf("Card Details:\n");
    printf("ID: %d\n", card->id); 
    printf("Name: %s\n", card->type);
    printf("Balance: %.2f\n", card->balance);
}

void print_account_cards(const struct accountT *acc) {
    for(int i = 0; i < MAX_CARDS_PER_ACCOUNT; i++) {
        if(acc->cards[i].id == 0) {
            break;
        }
        print_card(&acc->cards[i]);
        printf("\n");
    }
}

int add_account_card(struct accountT *acc, int id, char *type, float balance) {
    int card_id = 0;
    
    // find a space for a new card if availabe and return its id or return 0 on failure
    for(int i = 0; i < MAX_CARDS_PER_ACCOUNT; i++) {
        // check if it's an empty storage
        if(acc->cards[i].id == 0) {
            init_card(&acc->cards[i], id, type, balance);
            card_id = id;
            break;
        }
    }

    return card_id;
}