---
## Front matter
lang: ru-RU
title: Защита лабораторной работы №6
author: Ishanova A.I.
group: NI-202
institute: RUDN University, Moscow, Russian Federation
date: 2021 May 29th

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

- одни из основных понятий мат.анализа
  - предел
  - ряд
  - интеграл

# Цель лабораторной работы

Научиться работать в Octave с пределами, последовательностями, рядами и численным интегрированием.

# Задачи выполнения лабораторной работы

- высчитать предел
- найти частичные суммы ряда
- найти сумму ряда

- вычислить интеграл
- аппроксимирование суммами
  - код с циклом
  - векторизированный код

# Результаты выполнения лабораторной работы

- журнал сессии
- изучили следующие команды/возможности Octave
  - quad
  - цикл for

## Результаты выполнения лабораторной работы

- научились
  - задавать функции
    - анонимные
    - через конструкцию function ... end
  - расчитывать предел
  - суммировать члены ряда
  - считать определенные интегралы
    - команда quad
    - методом средней точки
