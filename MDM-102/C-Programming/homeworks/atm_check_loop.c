#include <stdio.h>

int main()
{
    int balance = 1000;
    int withdraw;

    printf("Your balance is %d\n", balance);

    while (balance > 0)
    {
        printf("Enter amount to withdraw (0 to stop): ");
        scanf("%d", &withdraw);

        if (withdraw == 0)
        {
            break;
        }

        if (withdraw > balance)
        {
            printf("Insufficient balance!\n");
        }
        else
        {
            balance = balance - withdraw;
            printf("Withdrawn! Remaining balance = %d\n", balance);
        }
    }

    printf("Session ended. Final balance = %d\n", balance);
    return 0;
}
