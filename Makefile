# Massive Shoutout to Professor W. Spencer Smith for his idea.

# This file will be generalized as best as possible to be used for 	\
for the following languages: 										\
	* Python														\
	* Java															\
	* C (Coming Soon)												\
																	\
If you are using a particualar language, uncomment the section for 	\
that language in order to use them. 

# GENERAL 
DOXY = doxygen
DOXYCFG = doxConfig

####################################################################
#PYTHON															
#PY = python															
#PYTEST = pytest														
#PYFLAGS =															
#MAIN_DIR = SRC/MAIN_DIR 							# Path to folder containing core files and test file
#																	
#test: 																
#	$(PYTEST) $(PYFLAGS) $(MAIN_DIR)


#################################################################### 
#JAVA																
#JFLAGS = -g
#JCLASS = -cp "src:.:junit-4.5.jar"					# Add to the same dir as the make file							
#JC = javac 
#JVM = java
#MAIN_DIR := SRC/MAIN_DIR
#TEST := TEST_FILE
#TEST_DIR := $(MAIN_DIR)/$(TEST)
#
#test: 
#	$(JC) $(JCLASS) $(JFLAGS) $(TEST_DIR)
#	$(JVM) $(JCLASS) org.junit.runner.JUnitCore $(TEST)


doc:
	$(DOXY) $(DOXYCFG)
	cd latex && $(MAKE)

all: test doc

clean:
	rm -rf html
	rm -rf latex
	


