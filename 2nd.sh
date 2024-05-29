#!/bin/bash

# Create a function that allocates a large amount of memory and then returns it.
function allocate_memory() {
  # Allocate 100MB of memory.
  dd if=/dev/zero bs=100M count=1 > /dev/shm/memory_leak.bin

  # Return the file descriptor of the allocated memory.
  echo $(cat /proc/self/fdinfo/* | grep -E "file=\/dev\/shm\/memory_leak\.bin" | cut -d"/" -f3)
}

# Create a loop that allocates memory and then forgets about it.
for i in {1..1000}; do
  allocate_memory
done
