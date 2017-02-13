ALL=\
		left_ptr default \
		left_ptr_watch watch progress \
		sb_left_arrow sb_right_arrow \
		col-resize sb_h_double_arrow \
		row-resize sb_v_double_arrow \
		text ibeam xterm \
		vertical-text 048008013003cff3c00c801001200000 \
		up_arrow up-arrow hand hand1 hand2 5aca4d189052212118709018842178c0 \
		question_arrow dnd-ask help \
		cross cell crosshair \
		box move dnd-move grabbing closedhand sizing 208530c400c041818281048008011002 \
		all-scroll fleur 9d800788f1b08800ae810202380a0822 size_all openhand \
		dot circle \

all: $(ALL)

install: all
	cp $(ALL) ../cursors

clean:
	rm $(ALL)

%: %.in
	xcursorgen $@.in $@

.PHONY: all install clean
