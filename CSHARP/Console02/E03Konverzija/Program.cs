﻿

// implicitna konverzija

float f = 7f;

double d = f;

//explicitna konverzija

f = float.Parse(d.ToString());


// cast

int a = 3;
int b = 4;

float rez = a / (float)b;

Console.WriteLine(rez);

int broj = 15;

// koja je prva znamenka broja?
Console.WriteLine(broj/10);




