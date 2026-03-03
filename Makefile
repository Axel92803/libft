NAME = libft.a

INC					= inc/
SRC_DIR				= src/
OBJ_DIR				= obj/

CC = cc

LIBC = ar rcs

CFLAGS = -Wall -Wextra -Werror

RM = rm -f


CTYPE_DIR	=	$(SRC_DIR)ctype/ft_isalnum.c \
						$(SRC_DIR)ctype/ft_isalpha.c \
	 			    	$(SRC_DIR)ctype/ft_isascii.c \
	 			    	$(SRC_DIR)ctype/ft_isdigit.c \
	 			    	$(SRC_DIR)ctype/ft_isprint.c \
 				    	$(SRC_DIR)ctype/ft_tolower.c \
	 			    	$(SRC_DIR)ctype/ft_toupper.c \

LST_DIR		=	$(SRC_DIR)lst/ft_lstnew.c \
				    	$(SRC_DIR)lst/ft_lstadd_front.c \
				    	$(SRC_DIR)lst/ft_lstsize.c \
				    	$(SRC_DIR)lst/ft_lstlast.c \
				    	$(SRC_DIR)lst/ft_lstadd_back.c \
				    	$(SRC_DIR)lst/ft_lstdelone.c \
				    	$(SRC_DIR)lst/ft_lstclear.c \
				    	$(SRC_DIR)lst/ft_lstiter.c \
				    	$(SRC_DIR)lst/ft_lstmap.c \

MEM_DIR		=	$(SRC_DIR)mem/ft_memchr.c \
	 					$(SRC_DIR)mem/ft_memcmp.c \
	 					$(SRC_DIR)mem/ft_memmove.c \
	 					$(SRC_DIR)mem/ft_memcpy.c \
	 			    	$(SRC_DIR)mem/ft_memset.c \
	 			    	$(SRC_DIR)mem/ft_bzero.c \
	 			    	$(SRC_DIR)mem/ft_calloc.c \

NUM_DIR		=	$(SRC_DIR)num/ft_atoi.c \
	 					$(SRC_DIR)num/ft_atol.c	\
	 					$(SRC_DIR)num/ft_itoa.c \

PUT_DIR		=	$(SRC_DIR)put_fd/ft_putchar_fd.c \
	 					$(SRC_DIR)put_fd/ft_putstr_fd.c \
				    	$(SRC_DIR)put_fd/ft_putendl_fd.c \
	 			    	$(SRC_DIR)put_fd/ft_putnbr_fd.c \


STR_DIR		=	$(SRC_DIR)str/ft_strdup.c \
						$(SRC_DIR)str/ft_strlcpy.c \
	 					$(SRC_DIR)str/ft_strlcat.c \
	 					$(SRC_DIR)str/ft_strlen.c \
	 					$(SRC_DIR)str/ft_strncmp.c \
	 					$(SRC_DIR)str/ft_strchr.c \
	 					$(SRC_DIR)str/ft_strrchr.c \
	 					$(SRC_DIR)str/ft_strnstr.c \
	 					$(SRC_DIR)str/ft_strtrim.c \
	 					$(SRC_DIR)str/ft_substr.c \
	 					$(SRC_DIR)str/ft_strjoin.c \
	 					$(SRC_DIR)str/ft_split.c \
	 					$(SRC_DIR)str/ft_strmapi.c \
	 					$(SRC_DIR)str/ft_striteri.c \


SRCS 		= 		$(CTYPE_DIR) $(LST_DIR) $(MEM_DIR) $(NUM_DIR) $(PUT_DIR) $(STR_DIR)

OBJ 		= 		$(patsubst $(SRC_DIR)%.c,$(OBJ_DIR)%.o,$(SRCS))
	
start:				
					@make all

all: 				$(NAME)

$(NAME): 			$(OBJ)
					@$(LIBC) $(NAME) $(OBJ)
					@echo "Libft compiled successfully"

$(OBJ_DIR)%.o:		$(SRC_DIR)%.c 
					@mkdir -p $(@D)
					@$(CC) $(CFLAGS) -I$(INC) -c $< -o $@

clean:
					@$(RM) -r $(OBJ_DIR)
					@echo "Cleaned libft .o files"

fclean: 			clean
					@$(RM) $(NAME)
					@echo "Removed libft.a"

re: 				fclean all

.PHONY: 			start all clean fclean re
