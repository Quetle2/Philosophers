# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: miandrad <miandrad@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/11/13 22:04:52 by miandrad          #+#    #+#              #
#    Updated: 2023/11/14 01:37:46 by miandrad         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = philo

CC = cc

CFLAGS = -Wall -Wextra -Werror

RM = rm -rf

SRCS = 	SRC/main.c\
		SRC/init.c\
		SRC/philo.c\
		SRC/utils.c\
		SRC/libft.c

all : $(NAME)

$(NAME) :
	gcc $(CFLAGS) $(SRCS) -o $(NAME)

clean :
	$(RM) $(NAME)

fclean : clean
	$(RM) $(NAME)

re : fclean all

git: fclean
	@git add .
	@git commit
	@git push
	@clear
	@echo "                                                  "
	@echo "                                                  "
	@echo "         -------Commited and Pushed-------        "
	@echo "                                                  "
	@echo "                                                  "