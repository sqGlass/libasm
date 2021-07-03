NAME = libasm.a

SRC = $(shell find . -name "ft*.s")

HEADER = libasm.h

OBJ = $(SRC:.s=.o)

NASM = nasm

# FLAGS = -felf64
FLAGS = -f macho64

%.o: %.s $(HEADER)
	$(NASM) $(FLAGS) -I. $<

RM = rm -f

all: $(NAME)

main:
	gcc main.c ${NAME}
	./a.out

$(NAME): $(OBJ)
	ar rc $(NAME) $(OBJ)

clean:
	$(RM) $(FOLDER)*.o

fclean: clean
	$(RM) $(NAME)
	$(RM) a.out

re: fclean all

.PHONY: clean fclean re all main