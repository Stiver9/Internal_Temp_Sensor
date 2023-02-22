/*
 * ring_buffer.c
 *
 *  Created on: Jan 29, 2022
 *      Author: Stiver
 */

#include "ring_buffer.h"

ring_buffer_t UART_buffer;

void buffer_clear(float *b, uint8_t size)
{
	memset(b, '0', size);
}

void ring_buffer_init(ring_buffer_t *rb)
{
	buffer_clear(rb->data, BUF_SIZE);
	rb->head = 0;
	rb->tail = 0;
}

void ring_buffer_write(float data, ring_buffer_t *rb)
{
	rb->data[rb->head] = data;
	rb->head = rb->head+1;

	if(rb->head >= BUF_SIZE)
	{
		rb->head = 0;
	}
}

float ring_buffer_read(ring_buffer_t *rb)
{
	float data=0;

	data =  rb->data[rb->tail];
	rb->tail = rb->tail+1;

	if(rb->tail >= BUF_SIZE)
	{
		rb->tail = 0;
	}

	return data;
}

uint8_t ring_buffer_check(ring_buffer_t *rb)
{
	if(rb->tail != rb->head) return (uint8_t)1;
	else return (uint8_t)0;
}

