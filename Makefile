LINEWRAP = false

include webrtc-respec-ci/Makefile

# Import the respec CI Makefile
webrtc-respec-ci/Makefile:
	git clone --depth 5 https://github.com/w3c/webrtc-respec-ci $(dir $@)

update::
	git -C webrtc-respec-ci pull

# Somehow, "make check" can't live without an "images" subdirectory
images/lorem-ipsum.png: lorem-ipsum.png
	@mkdir -p $(dir $@)
	cp -f $< $@

