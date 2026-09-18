/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_atol.c                                          :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: itanvuia <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2026/03/03 13:54:26 by itanvuia          #+#    #+#             */
/*   Updated: 2026/09/18 14:30:00 by itanvuia         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

long	ft_atol(const char *nptr)
{
	int		sign;
	long	res;

	sign = 1;
	res = 0;
	while (*nptr == ' ' || (*nptr >= '\t' && *nptr <= '\r'))
		nptr++;
	if (*nptr == '-' || *nptr == '+')
	{
		if (*nptr == '-')
			sign = -1;
		nptr++;
	}
	while (*nptr >= '0' && *nptr <= '9')
	{
		if (res > (LONG_MAX - (*nptr - '0')) / 10)
		{
			if (sign == -1)
				return (LONG_MIN);
			return (LONG_MAX);
		}
		res = (res * 10) + (*nptr++ - '0');
	}
	return (res * sign);
}
