---
# Front matter
lang: ru-RU
title: "Лабораторная работа №7"
#subtitle: ""
author: "Ишанова А.И. группа НФИ-02-19"

# Formatting
toc-title: "Содержание"
toc: true # Table of contents
toc_depth: 2
lof: true # List of figures
# lot: true # List of tables
fontsize: 12pt
linestretch: 1.5
papersize: a4paper
documentclass: scrreprt
polyglossia-lang: russian
polyglossia-otherlangs: english
mainfont: PT Serif
romanfont: PT Serif
sansfont: PT Sans
monofont: PT Mono
mainfontoptions: Ligatures=TeX
romanfontoptions: Ligatures=TeX
sansfontoptions: Ligatures=TeX,Scale=MatchLowercase
monofontoptions: Scale=MatchLowercase
indent: true
pdf-engine: lualatex
header-includes:
  - \linepenalty=10 # the penalty added to the badness of each line within a paragraph (no associated penalty node) Increasing the value makes tex try to have fewer lines in the paragraph.
  - \interlinepenalty=0 # value of the penalty (node) added after each line of a paragraph.
  - \hyphenpenalty=50 # the penalty for line breaking at an automatically inserted hyphen
  - \exhyphenpenalty=50 # the penalty for line breaking at an explicit hyphen
  - \binoppenalty=700 # the penalty for breaking a line at a binary operator
  - \relpenalty=500 # the penalty for breaking a line at a relation
  - \clubpenalty=150 # extra penalty for breaking after first line of a paragraph
  - \widowpenalty=150 # extra penalty for breaking before last line of a paragraph
  - \displaywidowpenalty=50 # extra penalty for breaking before last line before a display math
  - \brokenpenalty=100 # extra penalty for page breaking after a hyphenated line
  - \predisplaypenalty=10000 # penalty for breaking before a display
  - \postdisplaypenalty=0 # penalty for breaking after a display
  - \floatingpenalty = 20000 # penalty for splitting an insertion (can only be split footnote in standard LaTeX)
  - \raggedbottom # or \flushbottom
  - \usepackage{float} # keep figures where there are in the text
  - \floatplacement{figure}{H} # keep figures where there are in the text
---

# Цель работы

Научиться строить в Octave параметрические графики, графики в полярных координатах, графики неявных функций, графики в комплексной плоскости и графики специальных функций.

# Задание работы

Выполнить лабораторную работу и сделать отчет по лабораторной работе в форматах md, docx и pdf.

# Теоретичсекое введение

- Параметрические функции — функции, представленные в таком виде, что зависимость переменных выражается через дополнительную величину (параметр). Предположим, что функциональная зависимость $y$ от $x$ не задана непосредственно $y = f(x)$, а через промежуточную величину — $t$. Тогда формулы $x = \phi(t);$ $y = \psi(t)$ задают параметрическое представление функции одной переменной. [2]

- Полярная система координат — двумерная система координат, в которой каждая точка на плоскости определяется двумя числами — полярным углом и полярным радиусом. Полярная система координат особенно полезна в случаях, когда отношения между точками проще изобразить в виде радиусов и углов; в более распространённой декартовой, или прямоугольной, системе координат, такие отношения можно установить только путём применения тригонометрических уравнений.[3]

- Неявное уравнение — это отношение вида $F ( x_1 , ... , x_n ) = 0$, где $F$ является функцией нескольких переменных (зачастую многочленом). Например, мы будем работать с неявной функцией $-x^2-xy+x+y^2-y-1=0$ ($F(x,y)=0$). [4]

- Комплексные числа  — числа вида $a + b i$, где $a$ , $b$ — вещественные числа, $i$ — мнимая единица, то есть число, для которого выполняется равенство: $i^2 = − 1$.[5]

- Гамма-функция — математическая функция, обычно обозначается $\Gamma(z)$.
  
  Если вещественная часть комплексного числа $z$ положительна, то гамма-функция определяется через абсолютно сходящийся интеграл: $\Gamma(z)= \int_{0}^{+\infty} t^{z-1}e^{-t}dt$, $z \in$ $\mathbb{C}$.

  Если $z = n$ — натуральное число, то

    $\Gamma( n + 1 ) = n !$

    Основное свойство гамма-функции — это её рекуррентное уравнение

    $\Gamma( z + 1 ) = z\Gamma( z )$,

    которое при фиксированном начальном условии единственным образом определяет логарифмически выпуклое решение, то есть саму гамма-функцию.

    Гамма-функция чрезвычайно широко применяется в науке. Среди основных областей её применения — математический анализ, теория вероятностей, комбинаторика, статистика, атомная физика, астрофизика, гидродинамика, сейсмология и экономика. В частности, гамма-функция используется для обобщения понятия факториала на множества действительных и комплексных значений аргумента. [6]

# Выполнение лабораторной работы

(Работа выполена согласно методическому пособию[1].)

1. Создаем каталог для работы в папке laboratory. (mkdir) (@fig:001)

![подготовка к лабораторной работе](лаб07рис/1.png){ #fig:001 width=80% }

2. Начинаем сессию журналирования. (@fig:002)

![начало журналирования](лаб07рис/2.png){ #fig:002 width=40% }

## Параметрические графики

Строим параметрический график циклоиды: $x = r(t-sin(t))$, $y = r(1-cos(t))$.

1. Задаем значения параметров $t$ и $r$ и переменных $x$ и $y$. (@fig:003)

![задача $t$ и $r$, $x$ и $y$](лаб07рис/3.png){ #fig:003 width=70% }

2. Строим график и меняем длину осей. (@fig:004 и @fig:005)

![построение графика](лаб07рис/4.png){ #fig:004 width=70% }

![построение графика](лаб07рис/cycloid.png){ #fig:005 width=70% }

3. Сохраняем график. (@fig:006)

![сохранение графика](лаб07рис/6.png){ #fig:006 width=70% }

## Полярные координаты

1. Задаем векторы полярных координат: полярный угол($\theta$) и полярный радиус($r$); и переводим их в декартовы — $x$ и $y$. (@fig:007)

![задача $\theta$ и $r$, $x$ и $y$](лаб07рис/7.png){ #fig:007 width=70% }

2. Строим график в декартовой системе координат и сохраняем его в двух форматах (pdf и png).(@fig:008 и @fig:009)

![график в декартовой системе координат](лаб07рис/limacon.png){ #fig:008 width=70% }

![команды в Octave](лаб07рис/9.png){ #fig:009 width=70% }

3. Строим тот же график в полярной системе координат и сохраняем его. (@fig:010 и @fig:011)

![график в полярной системе координат](лаб07рис/limacon-polar.png){ #fig:010 width=70% }

![команды в Octave](лаб07рис/11.png){ #fig:011 width=70% }

## Графики неявных функций

1. Задаем неявную функцию $f(x,y)=-x^2-xy+x+y^2-y-1$, как анонимную. (@fig:012)

![задание первой неявной функции](лаб07рис/12.png){ #fig:012 width=70% }

2. Строим график и сохраняем его. (@fig:013 и @fig:014)

![график неявной функции](лаб07рис/13.png){ #fig:013 width=70% }

![команды в Octave](лаб07рис/14.png){ #fig:014 width=70% }

3. Задаем окружность как неявную функцию и строим ее. (@fig:015)

![график неявной функции](лаб07рис/15.png){ #fig:015 width=70% }

4. Задаем касательную через два вектора $x$ и $y$, строим ее на том же графике и сохраняем. (@fig:016 и @fig:017)

![график окружности и касательной](лаб07рис/16.png){ #fig:016 width=70% }

![команды в Octave](лаб07рис/17.png){ #fig:017 width=70% }

## Коплексные числа

1. Задаем коплексные числа $z_1$ и $z_2$, выолняем арифметические опреации над ними (умножение, вычитание, умножение, деление). (@fig:018)

![арифметические операции над комплекснеыми числами](лаб07рис/18.png){ #fig:018 width=70% }

2. Строим график $z_1$, $z_2$ и $z_1+z_2$ и сохраняем его. (@fig:019 и @fig:020)

![график комплексных чисел $z_1$, $z_2$ и $z_1+z_2$](лаб07рис/19.png){ #fig:019 width=70% }

![команды в Octave](лаб07рис/20.png){ #fig:020 width=70% }

3. Извлекаем кубический корень из $-8$ двумя способами (возведение в степень и команда nthroot), получаем два разных ответа. (@fig:021)

![рассчет $\sqrt[3]{-8}$ с получением комплексного и действительного числа](лаб07рис/21.png){ #fig:021 width=70% }

## Специальные функции

1. Строим график $\Gamma(n+1)$ и $n!$ и сохраняем его. (@fig:022 и @fig:023)

![график $\Gamma(n+1)$ и $n!$](лаб07рис/22.png){ #fig:022 width=70% }

![команды в Octave](лаб07рис/23.png){ #fig:023 width=70% }

2. Разбиваем на 5 частей и строим их все. (@fig:024 и @fig:025)

![график $\Gamma(n+1)$ и $n!$](лаб07рис/24.png){ #fig:024 width=70% }

![команды в Octave](лаб07рис/25.png){ #fig:025 width=70% }

3. Завершаем сессию журналирования. (@fig:026)

![Завершение сессии журналирования](лаб07рис/26.png){ #fig:026 width=70% }

# Вывод

В ходе выполнения работы мы научились строить графики для неявных функций, специальных функций, комплексных чисел и графики на полярных координатах.

# Библиография

1. *Lachniet J.* Introduction to GNU Octave. 2nd ed. 2019. pp. 46-50,59-62
2. Wikipedia: Параметрическое представление(https://en.wikipedia.org/wiki/
Parametric_equation)
3. Wikipedia: Полярная система координат(https://en.wikipedia.org/wiki/
Polar_coordinate_system)
4. Wikipedia: Неявная функция (https://en.wikipedia.org/wiki/Implicit_function)
5. Wikipedia: Комплексное число (https://en.wikipedia.org/wiki/Complex_number)
6. Wikipedia: Гамма-функция (https://en.wikipedia.org/wiki/Gamma_function)
