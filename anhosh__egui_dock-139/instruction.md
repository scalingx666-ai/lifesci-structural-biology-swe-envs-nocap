# Issue

**Title:** Expand styling options for tabs

## Description

I think im pretty happy with this. 

I added four interaction styles similar to egui widget styles. `active`, `inative`, `hovered` and `focused`.  If the `from_egui` methods derive their styling from those variants then adding a third party theme to egui would automatically apply that theme to the dock area aswell.
I didnt do that right now since i didn't want to change the default styling of the dock area. Everything should look almost the same as before.

About that almost...  
Egui has this quirk (technically eframe) where it renders 1px wide lines as anti aliased. It draws half the line width on either side of the line. This causes a 1px line to actually be rendered as 2px.  
This is a group with a label inside and a 1px solid black outline.
![image](https://github.com/Adanos020/egui_dock/assets/25527438/77de884c-3fb6-4046-9940-5abcc938adda)

The same was happening for the tab outlines, however they were limited by the clip rect so they appeared as 1px.
You can see how the right border is actually 2px wide because it is the only one not clipped.
![image](https://github.com/Adanos020/egui_dock/assets/25527438/2b7efab0-5f05-4a16-bfd7-dd4f700458a1)

I added a function to reduce the size of a rect to make sure that a border around the rect does not exceed the original area of the rect. 
All this means is that now the tabs look like this:
![image](https://github.com/Adanos020/egui_dock/assets/25527438/b1bef029-5d1d-4b17-8c9d-ab82237f9aa2)

This now also plays well with the border of the tab body and the colors now match aswell.

If you have a dock area that doesnt fill its parent container then you can set a border on the tab body and get this effect which is quite nice i think.
You just have to change `style.tab.tab_body.stroke.width = 1.0;` in the style.
![image](https://github.com/Adanos020/egui_dock/assets/25527438/40566f80-57e7-450b-8d5d-ba74a3309a00)

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `636a49eb3dff`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.