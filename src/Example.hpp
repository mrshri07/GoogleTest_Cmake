#ifndef EXAMPLE_HPP
#define EXAMPLE_HPP

//enums 

enum ignition_switch {OFF, ACC, ON, START};
enum fold_unfold_mirror_switch {FOLD = 0, UNFOLD = 1};
enum selection_mirror_switch {NEUTRAL = 0, LEFT = 1, RIGHT = 2};
enum control_mirror_switch {UP = 0, DOWN = 1, LEFT_CONTROL = 2, RIGHT_CONTROL = 3};

//function prototypes

extern int mirror_fold();
extern int mirror_selection();
extern int mirror_control();

//global variables

extern int Fold_Unfold_Mirror, selection_Mirror, control_Mirror;
extern int ignition_swt;



#endif 
