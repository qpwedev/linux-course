TASKS = one two
TASKS_MD := $(addprefix tasks/, $(addsuffix .md, $(TASKS)))
TASKS_ODT := $(addprefix out/task-, $(addsuffix .odt, $(TASKS)))

all: out/index.html out/rules.html out/teams.html out/rules.odt out/tasks.html out/main.css out/score.html $(TASKS_ODT)

.PHONY: all clean upload

.FORCE:

out/index.html: index.md template.html
	pandoc --template template.html index.md > out/index.html

out/rules.html: rules.md template.html
	pandoc --template template.html rules.md > out/rules.html

out/teams.html: teams.csv header-teams.md template.html
	./bin/teams2md.sh teams.csv | cat header-teams.md - | pandoc --template template.html > out/teams.html

out/tasks.html: $(TASKS_MD) template.html
	./bin/readtitles.sh $(TASKS) | pandoc --template template.html -o out/tasks.html

out/rules.odt: rules.md
	pandoc -o out/rules.odt rules.md

out/task-%.odt: tasks/%.md
	pandoc -o $@ $<

out/score.html: $(TASKS_MD) score.csv teams.csv template.html Makefile
	./bin/createtable.sh $(TASKS) | pandoc --template template.html -o out/score.html
	
out/main.css: main.css
	cat main.css > out/main.css

upload:
	scp out/* fedoseer@u-pl1.ms.mff.cuni.cz:WWW/make/

clean:
	rm -f out/index.html out/rules.html out/teams.html out/rules.odt out/tasks.html out/main.css out/score.html $(TASKS_ODT)

