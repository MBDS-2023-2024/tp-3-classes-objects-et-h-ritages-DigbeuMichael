class rectangle {
  var longueur: Double
  var largeur: Double
  static var nb_rectangle: Int = 0

  init(longueur: Double, largeur: Double){
    self.longueur = longueur
    self.largeur = largeur
    rectangle.nb_rectangle += 1
  }

  func perimeter() -> Double{
    return 2 * (longueur + largeur)
  }

  func area() -> Double{
    return longueur * largeur
  }

}


var liste_rectangle: [rectangle] = []

liste_rectangle.append(rectangle(longueur: 5, largeur: 10))
liste_rectangle.append(rectangle(longueur: 10, largeur: 20))
liste_rectangle.append(rectangle(longueur: 15, largeur: 30))

print(liste_rectangle)

liste_rectangle.sort(by: { $0.area() < $1.area() })

liste_rectangle.sort(by: { $0.perimeter() < $1.perimeter() })

print(rectangle.nb_rectangle)


