import UIKit

// Задание 1 Решить квадратное уравнение axх+bx+C=0
var a:Double=1
var b:Double=1
var c:Double=0
var x1:Double
var x2:Double
var D:Double
var Dsqrt:Double
D=b*b+4*a*c

print()
print ("Задание 1.")
if D<0 { print ("Уравнение не имеет корней")
}else if D==0 {print("Уравнение имеет 1 корень:", x1=(-b)/(2*a))
}else{
    Dsqrt=D.squareRoot()
    x1=((-b)+Dsqrt)/(2*a);
    x2=((-b)-Dsqrt)/(2*a);
    print("Уравнение имеет 2 корня:",x1, " и ",x2);
}

// Задание 2 Даны катеты прямоугольного треугольника. Найти площадь, периметр и гипотенузу треугольника.
print()
print ("Задание 2.")
var k1:Double=5
var k2:Double=6
var S:Double
var P:Double
var hypotenuse:Double

S=0.5*k1*k2
hypotenuse=(k1*k1+k2*k2).squareRoot()
P=k1+k2+hypotenuse
print ("Гипотензуа = ",hypotenuse)
print ("Площадь = ", S)
print ("Периметр = ", P)

// Задание 3 Пользователь вводит сумму вклада в банк и годовой процент. Найти сумму вклада через 5 лет.
print()
print ("Задание 3.")
import Foundation
var deposit:Decimal=900
var percent:Decimal=13
var years:Decimal=5
var depTotalSum:Decimal
depTotalSum=deposit*(1+percent*years/100)
print("Простые проценты: ",depTotalSum)
var depTotalSum2:Decimal
depTotalSum2=deposit*pow(1+(percent/100),6)
print("Сложные проценты: ",depTotalSum2)
