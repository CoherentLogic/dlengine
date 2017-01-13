#$Id$

EDITOROBJS = editor.o level.o
GAMEOBJS = engine.o level.o avatar.o npc.o
FBCOPTS = -g -exx -fpmode PRECISE

game:$(GAMEOBJS)
	fbc $(FBCOPTS) -x game -m engine $(GAMEOBJS)

editor:$(EDITOROBJS)
	fbc $(FBCOPTS) -x editor -m editor $(EDITOROBJS)

editor.o:editor.bas
	fbc $(FBCOPTS) -m editor -c editor.bas -o editor.o

level.o:level.bas
	fbc $(FBCOPTS) -c level.bas -o level.o

avatar.o:avatar.bas
	fbc $(FBCOPTS) -c avatar.bas -o avatar.o

npc.o:npc.bas
	fbc $(FBCOPTS) -c npc.bas -o npc.o

engine.o:engine.bas
	fbc $(FBCOPTS) -m engine -c engine.bas -o engine.o

clean:
	rm *.o

