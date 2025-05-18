#include <stdio.h>
#include "Example.hpp"

 mirror_selection()
 {
    if (ignition_swt == ACC)
     {
        if (Fold_Unfold_Mirror == FOLD)
        {
            printf("Cannot select mirror while fold is activated\n");
        }
         else
          {
            if (selection_Mirror == LEFT)
            {
                printf("LEFT mirror is activated\n");
            }
            else if (selection_Mirror == RIGHT)
            {
                printf("RIGHT mirror is activated\n");
            }
            else
            {
                printf("NEUTRAL is activated\n");
            }
        }
    }
    else
    {
        printf("Vehicle is below living mode\n");
    }
 
    return 0;
}
