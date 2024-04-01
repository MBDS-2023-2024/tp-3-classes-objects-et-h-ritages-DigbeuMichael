protocol shape {
  func area()-> Double
  func perimeter()-> Double
}

class rectangle: shape {
  var longueur: Double
  var largeur: Double
  static var nb_rectangle: Int = 0

  init(longueur: Double, largeur: Double){
    self.longueur = longueur
    self.largeur = largeur
    rectangle.nb_rectangle += 1
  }

  func perimeter() -> Double{
    return 2.0 * (longueur + largeur)
  }

  func area() -> Double{
    return longueur * largeur
  }

}

class triangle: shape {
  var a: Double
  var b: Double
  var c: Double

  var hauteur: Double
  var base : Double

  init(a: Double, b: Double, c: Double, hauteur: Double, base: Double){
    self.a = a
    self.b = b
    self.c = c
    self.hauteur = hauteur
    self.base = base
  }

    func perimeter() -> Double{
      return a+b+c
    }

    func area() -> Double{
      return (hauteur*base)/2.0
    }
}

class circle: shape { //cercle
  var rayon: Double

  init(rayon: Double){
    self.rayon = rayon
  }

  func perimeter() -> Double{
    return 3.14*rayon*rayon
  }

  func area() -> Double{
    return 2.0*3.14*rayon
  }

}

struct square //carré{
  let cote: Int

  init(cote: Int){
    self.cote = cote
  }

  func area() -> Int {
    return cote * cote
  }

  func perimeter() -> Int {
    return 4*cote
  }
}

// Création de la liste
var formes: [Any] = []

formes.append(circle(rayon: 5.0))
formes.append(rectangle(longueur: 3.0, largeur: 4.0))
formes.append(circle(rayon: 10.0))
formes.append(rectangle(longueur: 5.0, largeur: 5.0)) 
formes.append(circle(rayon: 2.5))
formes.append(square(cote: 5))

// Parcours de la liste et affichage des informations
for forme in formes {
  switch forme {
  case let circle as circle:
    print("Je suis un cercle, mon rayon est \(circle.rayon), ma surface est \(circle.area()) et mon périmètre est \(circle.perimeter())")
  case let rectangle as rectangle:
    print("Je suis un rectangle, ma longueur est \(rectangle.longueur), ma largeur est \(rectangle.largeur), ma surface est \(rectangle.area()) et mon périmètre est \(rectangle.perimeter())")
  case let square as square:
    print("Je suis un carré, mon côté est \(square.cote), ma surface est \(square.area()) et mon périmètre est \(square.perimeter())")
  default:
    print("Forme non identifiée")
  }
}