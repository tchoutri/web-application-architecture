all: slides

slides:
	pandoc -t dzslides \
	      --template template.html \
	      --highlight-style breezedark \
	       -s slides.md \
	       -o slides.html

standalone:
	pandoc -t dzslides \
	      --self-contained \
	      --template template.html \
	      --highlight-style breezedark \
	      --metadata embed-css \
	       -s slides.md \
	       -o slides.html

with-notes:
	pandoc -t dzslides \
	      --self-contained \
	      --template template.html \
	      --highlight-style breezedark \
	      --metadata display-notes \
	      --metadata embed-css \
	       -s slides.md \
	       -o slides.html

clean:
	-rm slides.html
	-rm slides-light.html

.PHONY: all $(MAKECMDGOALS)
