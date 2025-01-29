/*
This is a comment block. It won't be read as an Ink story.
Comments are very useful for leaving ideas for story and functionalty

This exercise will demonstrate the following in the example video:
 - Varrying text via loops
 - Functions
 
 In the assignment:
 * A story with at least 6 knots
 *Vary some text via a loop
 * Create a function that serves as a timer. (This is shown in the video)
*/


VAR time =-1 //  0 Morning, 1 Noon, 2 Night




-> seashore

== seashore ==
you are sitting on the beach. 

It is {advance_time() }

+ [Stroll down the beach] ->beach2
-> DONE

== beach2 ==
This is further down the beach.

It is {advance_time() }
+ {time == 1} [Pick up some seashells] -> shells
* {time == 2} [Jump in the water] -> night_swim
+ [Stroll back up the beach] -> seashore

== shells ==
You pick up the shells
-> beach2

== night_swim ==
The freezing water numbs your legs.
*{shells} [Go deeper into the water] ->night_swim2
->DONE

== night_swim2 ==
The freezing water is now up to your chest.
*[Dive down into the depths] ->night_swim3
->DONE

==night_swim3==
You submerge yourself completely below the water and begin swimming straight downwards. You cannot see a thing but continue swimming until you see something shining bright yellow on the seabed.
*[Approach the shine]  In a bright flash that completely illuminates the sea around you. You wake up from being knocked unconcious and (again) -> seashore
->END

==seashore_2
->DONE
== function advance_time ==

    ~ time = time + 1
    
    {
        - time > 2:
            ~ time = 0
    }    

    {    
        - time == 0:
            ~ return "Morning"
        
        - time == 1:
            ~ return "Noon"
        
        - time == 2:
            ~ return "Night"
    
    } 

    ~ return time
    
    
    


== seashore ==
You are sitting on the beach. 

+ [Wait] -> seashore
-> DONE

== beach2 ==
This is further down the beach.

+ [Move back up the beach] -> seashore

== shells ==
You pick up the shells
-> beach2

== function advance_time ==

    ~ time = time + 1
    
    {
        - time > 2:
            ~ time = 0
    }    
    /*
    {    
        - time == 0:
            ~ return "Morning"
        
        - time == 1:
            ~ return "Noon"
        
        - time == 2:
            ~ return "Night"
    
    }
    */
    
        
    ~ return time
    
    
    
