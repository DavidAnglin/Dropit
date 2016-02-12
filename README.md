# Dropit
This app drops different color drops from the top of the screen and
they collect on the bottom. When there is one complete row on the bottom 
it dissapears. Added a CGRect in the midde for the block to hit an bounce off
of. Also added an UIAttachmentBehavior that let you grab onto the block and move 
it around, it shows a line to the drop. When you drop it, it drop to the bottom.
The UITapGesture was used as an initiater for the drops to fall. Created a UIDynamicBehavior Class
that controlled the behaviors of the drops, such as the gravity, adding and removing drops,
collider, and the drop behavior.
