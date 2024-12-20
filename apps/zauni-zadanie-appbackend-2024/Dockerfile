# Multi-stage build docker file

# app build stage
FROM golang:alpine as builder
RUN mkdir /build
## TODO: 
# Vasou ulohou je:
# 1. Skopirovat zdrojove kody aplikacie do adresara /build, ktory sa vytvoril v predchadzajucom kroku
# 2. Nastavit adresar /build ako pracovny adresar (work directory)

# image build image - use scratch to get smallest possible size of an image
FROM scratch
## TODO:
# Prikaz COPY, ktory poznate, je mozne pouzit aj na kopirovanie suborov, ktore vznikli v predchadzajucom stage, tj:
# COPY --from=<stage_name> source target
# V nasom pripade sa predchadzajuci stage vola: builder (vsimnite si pomenovanie na riadku c. 4)
# Vasou ulohou je:
#  1. pridat prikaz, ktory skopiruje zo stage builder subor: /builder/main do adresara /app/ (vsimnite si na riadku c.10, ze vystupom kompilacie je subor s nazvom main)
#  2. nastavit pracovny adresar (work directory) na: /app
#  3. pridat instrukciu, ktora zabezpeci, ze po vytvoreni kontajnera sa spusti aplikacia (tj. ./main)
