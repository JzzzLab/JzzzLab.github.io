PY = C:\Users\user\miniconda3\python
TARGET = a.py
RM = rm -f
RMDIR = rm -rfv
msg = new post


#################################################
#                     git                       #
#################################################

.PHONY: gp
#git post
gp:
	git add -A
	git commit -m "$(msg)"
	git push

.PHONY: init
init:
	git init
	git add -A
	git commit -m "first commit"
	git branch -m master source
	git remote add origin git@github.com:JzzzLab/JzzzLab.github.io.git
	git push -u origin source

.PHONY: rmgitdir
rmgitdir:
	$(RMDIR) .git

##################################################
#                      py                        #
##################################################

.PHONY: pyrun pyinit pyclean
pyrun:
	$(PY) $(TARGET)
pyinit:
	touch a.py
	echo "print(' ')" >> a.py
	echo "print('+-------------+')" >> a.py
	echo "print('| hello world |')" >> a.py
	echo "print('+-------------+')" >> a.py
	echo "print('')" >> a.py
	make
pyclean:
	$(RM) a.py
