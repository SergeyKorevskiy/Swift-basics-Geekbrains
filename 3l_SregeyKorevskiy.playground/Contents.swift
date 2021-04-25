
import UIKit
import Foundation

//1. Описать несколько структур – любой легковой автомобиль SportCar и любой грузовик TrunkCar.
//2. Структуры должны содержать марку авто, год выпуска, объем багажника/кузова, запущен ли двигатель, открыты ли окна, заполненный объем багажника.
//3. Описать перечисление с возможными действиями с автомобилем: запустить/заглушить двигатель, открыть/закрыть окна, погрузить/выгрузить из кузова/багажника груз определенного объема.
//4. Добавить в структуры метод с одним аргументом типа перечисления, который будет менять свойства структуры в зависимости от действия.
//5. Инициализировать несколько экземпляров структур. Применить к ним различные действия.
//6. Вывести значения свойств экземпляров в консоль.



enum ActionWithCar { // созддаем пересиление с вариантами действий на автомобилем
    case StartStopEngine
    case OpenCloseWindows
    case LoadCargo (amountKg: UInt)
    case UnloadCargo (amountKg: UInt)
    
}

struct SportCar { // создаем стркутуру опсиывающю автомобиль сопортинвого типа
    var brand: String
    var productionYear: UInt16
    var trunkVolume: UInt
    var engineIsRunning: Bool
    var windowsIsOpened: Bool
    var trunkFilledVolume: UInt
    
    
    mutating func action (actionWithCar: ActionWithCar ) { // функция принимает значение перечисления и                                                     // производит соответсвтующие действия над свойствами эксзепмляр
        switch actionWithCar {
        
            case .StartStopEngine:
                engineIsRunning = true
                print ("Двигатель \(brand) запущен.")
                
            case .OpenCloseWindows:
                windowsIsOpened = true
                print ("Окна \(brand) открыты.")
                
            case let .LoadCargo(amountKg):
                if  (trunkFilledVolume + amountKg) > trunkVolume {
                print ("Такой обьем груза не влезает в \(brand).")
                } else {
                trunkFilledVolume = trunkFilledVolume + amountKg
                print ("Теперь заполненый обьем багажника \(brand) \(trunkFilledVolume) литров.")
            }
        
           
            case let .UnloadCargo(amountKg):
                trunkFilledVolume = trunkFilledVolume - amountKg
                print ("Теперь заполненый обьем багажника \(brand) \(trunkFilledVolume) литров.")
        }
    }
}

struct TrunkCar { // создаем стркутуру опсиывающю автомобиль грузового типа
    var brand: String
    var productionYear: UInt16
    var trunkVolume: UInt
    var engineIsRunning: Bool
    var windowsIsOpened: Bool
    var trunkFilledVolume: UInt
    
    
    mutating func action (actionWithCar: ActionWithCar ) { // функция принимает значение перечисления и                                                     // производит соответсвтующие действия над свойствами эксзепмляр
        switch actionWithCar {
        
            case .StartStopEngine:
                engineIsRunning = true
                print ("Двигатель \(brand) запущен.")
                
        case .StartStopEngine:
            if  engineIsRunning == true {
                engineIsRunning = false
                print ("Дивгатель \(brand) остановлен.")
            } else {
                engineIsRunning = true
                print ("Двигатель \(brand) запущен.")
        }
                
                
            case .OpenCloseWindows:
                if  windowsIsOpened == true {
                    windowsIsOpened = false
                    print ("Окна \(brand) закрыты.")
                } else {
                    windowsIsOpened = true
                    print ("Окна \(brand) открыты.")
            }
                
            case let .LoadCargo(amountKg):
                if  (trunkFilledVolume + amountKg) > trunkVolume {
                    print ("Такой обьем груза не влезает в \(brand).")
                } else {
                trunkFilledVolume = trunkFilledVolume + amountKg
                print ("Теперь заполненый обьем багажника \(brand) \(trunkFilledVolume) литров.")
            }
    
            case let .UnloadCargo(amountKg):
                trunkFilledVolume = trunkFilledVolume - amountKg
                print ("Теперь заполненый обьем багажника \(brand) \(trunkFilledVolume) литров.")
        }
    }
}






var Maserati = SportCar (brand: "Maserati", productionYear: 2014, trunkVolume: 100, engineIsRunning: false, windowsIsOpened: true, trunkFilledVolume: 80)


var VolvoTruck = TrunkCar (brand: "Volvo", productionYear: 2020, trunkVolume: 1000, engineIsRunning: false, windowsIsOpened: true, trunkFilledVolume: 100)


print (Maserati)
print (VolvoTruck)

Maserati.action(actionWithCar: .LoadCargo(amountKg: 100))
VolvoTruck.action(actionWithCar: .LoadCargo(amountKg: 500))
VolvoTruck.action(actionWithCar: .OpenCloseWindows)
VolvoTruck.action(actionWithCar: .OpenCloseWindows)
VolvoTruck.action(actionWithCar: .StartStopEngine)

print (Maserati)
print (VolvoTruck)




