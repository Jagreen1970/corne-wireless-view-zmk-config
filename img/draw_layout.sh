#!/usr/bin/env sh

## Generate keymap file
keymap -c my_config.yaml parse -z ../config/corne.keymap > my_keymap.yaml

## Draw the entire keymap
keymap -c my_config.yaml draw --keys-only my_keymap.yaml >my_keymap.svg

## Draw separate layers
keymap -c my_config.yaml draw -s base --keys-only my_keymap.yaml >base_layer.svg
keymap -c my_config.yaml draw -s num --keys-only my_keymap.yaml >num_layer.svg
keymap -c my_config.yaml draw -s fn --keys-only my_keymap.yaml >fn_layer.svg
keymap -c my_config.yaml draw -s nav --keys-only my_keymap.yaml >nav_layer.svg

## Draw the combos separately on a blank layer
keymap -c my_config.yaml draw -s base --combos-only my_keymap.yaml >combos_only.svg
