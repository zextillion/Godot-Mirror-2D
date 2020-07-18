# Godot-Mirror-2D
Mirror Node2Ds horizontally


Change what MirrorNode2D extends depending on use case (for example, change it to extend KinematicBody2D if you want to mirror that).

Extend any class off of MirrorNode2D.

Do not manually change scale.x's sign. Ever. Including the editor. Changing the value of scale.x is fine as long as the sign remains consistent.
Instead, change the object's rotation to define where "forward" is. The assumption is that right is forward and left is backward.
