---
## Front matter
lang: ru-RU
title: Защита лабораторной работы №8
author: Ишанова А.И.
group: НИ-202
institute: РУДН, Москва, Российская Федерация.
date: 12 июня 2021г.

## Formatting
toc: false
slide_level: 2
theme: metropolis
header-includes: 
 - \metroset{progressbar=frametitle,sectionpage=progressbar,numbering=fraction}
 - '\makeatletter'
 - '\beamer@ignorenonframefalse'
 - '\makeatother'
aspectratio: 43
section-titles: true
---

# Прагматика выполнения лабораторной работы

- нахождение собственных векторов и собственных значений
  - преобразование координат
  - уравнение Шредингера
  - геология
  - работа с волнами (свет, акустика)
  - квантовая механика, атомная и молекулярная физика
- знакомство с цепями Маркова
  - физика
    - термодинамика и статистическая механика
  - биология
    - филогенетика, расчет популяционной динамикии, нейробиология
  - химия

# Цель лабораторной работы

Научить искать собственные значения и вектора в Octave, работать с цепями Маркова, использовать собственные вектора для нахождения векторов равновесного состояния в них.

# Задачи выполнения лабораторной работы

- нахождение собственных векторов и собственных значений двух матриц
- рассчет вектора вероятности после известного кол-ва ходов для пяти начальных векторов вероятности
- поиск вектора равновесного состояния
  - проверка

# Результаты выполнения лабораторной работы

- журнал сессии
- изучили следующие команды/возможности Octave
  - eig()
- научились
  - находить собственные числа и векторы
  - рассчитывать вектор вероятности после известного кол-ва ходов и начального вектора вероятности
  - находить вектор равновесного состояния