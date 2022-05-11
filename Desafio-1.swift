//
//  Desafio-1.swift
//  Desafio1
//
//  Created by Cristian Sancricca on 11/05/2022.
//

import UIKit

struct Direccion{
    var ciudad: String
    var partido: String
    var provincia: String
    var calle: [String: Any]
    var pais: String
    var codigoPostal: Int
    var piso: Int?
    var departamento: String?
}


let direccion1 = Direccion(
    ciudad: "Buenos Aires",
    partido: "Vicente Lopez",
    provincia: "Buenos Aires",
    calle: [
        "nombreDeCalle" : "Juan B Justo",
        "numero": 3633,
        "entrecalle1": "Bermudez",
        "entrecalle2": "Ingenieros"
    ],
    pais: "Argentina",
    codigoPostal: 1636,
    piso: 1,
    departamento: "A")

let direccion2 = Direccion(
    ciudad: "Buenos Aires",
    partido: "Montserrat",
    provincia: "Buenos Aires",
    calle: [
        "nombreDeCalle": "Cerrito",
        "numero": 850,
        "entrecalle1": "Paraguay",
        "entrecalle2": "Cordoba"
    ],
    pais: "Argentina",
    codigoPostal: 1010)

let direccion3 = Direccion(
    ciudad: "Buenos Aires",
    partido: "Retiro",
    provincia: "Buenos Aires",
    calle: [
        "nombreDeCalle" : "Austria",
        "numero": 2602,
        "entrecalle1": "Pagano",
        "entrecalle2": "Libertador"
    ],
    pais: "Argentina",
    codigoPostal: 1421,
    piso: 8,
    departamento: "B")

func imprimirDireccion(De direccion: Direccion) -> (){
    print("La direccion es: \(direccion.calle["nombreDeCalle"]!) \(direccion.calle["numero"]!), Piso: \(direccion.piso ?? 0), Departamento: \(direccion.departamento ?? "-")")
}

imprimirDireccion(De: direccion1)
imprimirDireccion(De: direccion2)

func obtenerPisosYDeptos(de direccion: Direccion)-> String{
    guard let safePiso = direccion.piso, let safeDepto = direccion.departamento else {return "Este departemento no tiene piso ni depto"}
    
    return "El piso es \(safePiso), Departamento: \(safeDepto)"
}

print(obtenerPisosYDeptos(de: direccion1))
print(obtenerPisosYDeptos(de: direccion2))
