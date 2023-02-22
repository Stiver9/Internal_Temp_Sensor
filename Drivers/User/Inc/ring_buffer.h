/*
 * ring_buffer.h
 *
 *  Created on: Jan 29, 2022
 *      Author: Stiver
 */

#ifndef USER_INC_RING_BUFFER_H_
#define USER_INC_RING_BUFFER_H_

#include "stm32f3xx_hal.h"

#define BUF_SIZE 20

typedef struct
{
  float data[BUF_SIZE];
  uint16_t head;
  uint16_t tail;
} ring_buffer_t;

extern ring_buffer_t UART_buffer;

void ring_buffer_init(ring_buffer_t *rb);
void ring_buffer_write(float data, ring_buffer_t *rb);
float ring_buffer_read(ring_buffer_t *rb);
uint8_t ring_buffer_check(ring_buffer_t *rb);

#endif /* USER_INC_RING_BUFFER_H_ */
