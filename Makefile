SCALE_FACTOR?=1
TABLES = date supplier customer part lineorder
TABLE_FILES = $(foreach table, $(TABLES), ssb-dbgen/$(table).tbl)

SSB.db: $(TABLE_FILES)
	./create_db.sh $(TABLES)

$(TABLE_FILES): ssb-dbgen/dbgen
	cd ssb-dbgen && ./dbgen -v -f -s $(SCALE_FACTOR)
	chmod +r $(TABLE_FILES)

ssb-dbgen/dbgen: ssb-dbgen/CMakeLists.txt
	cd ssb-dbgen && cmake . && $(MAKE)

clean:
	rm -rf SSB.db $(TABLE_FILES) ssb-dbgen/dbgen

all: SSB.db
