#include <stdio.h>

int main()
{
    int choice;

    do
    {
        printf("\n--- MENU ---\n");
        printf("1. Say Hello\n");
        printf("2. Say Bye\n");
        printf("3. Exit\n");
        printf("Enter choice: ");
        scanf("%d", &choice);

        if (choice == 1)
        {
            printf("Hello!\n");
        }
        else if (choice == 2)
        {
            printf("Bye!\n");
        }

    } while (choice != 3);

    printf("Program ended.\n");
    return 0;
}
