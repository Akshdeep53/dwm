#!/bin/sh

amixer sset Master 3%+
amixer sset Headphone 3%+
amixer sset Front 3%+ 
amixer sset Surround 3%+
amixer sset Center 3%+
amixer sset LFE 3%+
amixer sset Side 3%+

pkill -RTMIN+11 dwmblocks

