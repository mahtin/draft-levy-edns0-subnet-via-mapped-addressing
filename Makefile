
xml2rfc=xml2rfc

no_network=-N

rfc_draft=draft-levy-edns0-subnet-via-mapped-addressing

%.txt: %.xml
	export XML_LIBRARY=references; $(xml2rfc) $(no_network) --text $< $@

%.html: %.xml
	export XML_LIBRARY=references; $(xml2rfc) $(no_network) --html $< $@


all: $(rfc_draft).html $(rfc_draft).txt

clean:
	rm -f $(rfc_draft).html $(rfc_draft).txt

references:
	mkdir references
