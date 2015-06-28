#!/bin/sh

module load bedtools/2.22.0 

bedtools intersect -a adsp.bed -b neuron.bed > adsp_neuron.bed
bedtools intersect -a adsp.bed -b neuron.bed > adsp_astrocyte.bed
