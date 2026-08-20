#include <stdio.h>

int main()
{
    for (int roll = 1; roll <= 300; roll++)
    {
        if (roll >= 1 && roll <= 100)
        {
            printf("Roll %d -> Group A\n", roll);
        }
        else if (roll >= 101 && roll <= 200)
        {
            printf("Roll %d -> Group B\n", roll);
        }
        else
        {
            printf("Roll %d -> Group C\n", roll);
        }
    }
    return 0;
}
