#include <stdio.h>
#include "Example.hpp"

mirror_control()
 {
    if (ignition_swt == ACC)
     {
        if (Fold_Unfold_Mirror == FOLD)
        {
            printf("Cannot control mirror while fold is activated\n");
        }
        else
         {
            if (control_Mirror == UP)
            {
                printf("Mirror moved UP\n");
            }
             else if (control_Mirror == DOWN)
             {
                printf("Mirror moved DOWN\n");
             }
             else if (control_Mirror == LEFT)
              {
                printf("Mirror moved LEFT\n");
             }
            else if (control_Mirror == RIGHT)
             {
                printf("Mirror moved RIGHT\n");
             }
        }
    }
    else
    {
        printf("Vehicle is below living mode\n");
    }
 
    return 0;
}
