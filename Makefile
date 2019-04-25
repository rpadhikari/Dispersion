FC=gfortran -c
LD=gfortran
SRC=im.f90 re.f90 main.f90
OBJ=im.o re.o main.o
disp:
	$(FC) $(SRC)
	$(LD) $(OBJ) -o disp.x
clean:
	rm -rf *.o *.x

