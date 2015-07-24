#!/usr/bin/env make -f

figpdf:
	for FIG in *.fig; do fig2dev -L pstex $$FIG $${FIG%.*}.pstex; done
	for FIG in *.fig; do fig2dev -L pstex_t -p $${FIG%.*}.pstex $$FIG $${FIG%.*}.pstex_t $$FIG; done

figpdf:
	for FIG in *.fig; do fig2dev -L pdftex $$FIG $${FIG%.*}.pdftex; done
	for FIG in *.fig; do fig2dev -L pstex_t -p $${FIG%.*}.pdftex $$FIG $${FIG%.*}.pdftex_t; done

