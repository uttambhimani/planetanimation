import 'package:get/get.dart';

import 'model_class.dart';

class HomeController extends GetxController
{
  List <Model> details = [
    Model(name: "Earth",photo: "asset/image/earth.png",about: "Earth is the third planet from the Sun and the only astronomical object known to harbor life. While large volumes of water can be found throughout the Solar System, only Earth sustains liquid surface water. About 71% of Earth's surface is made up of the ocean, dwarfing Earth's polar ice, lakes, and rivers. The remaining 29% of Earth's surface is land, consisting of continents and islands. Earth's surface layer is formed of several slowly moving tectonic plates, interacting to produce mountain ranges, volcanoes, and earthquakes. Earth's liquid outer core generates the magnetic field that shapes Earth's magnetosphere, deflecting destructive solar winds."),
    Model(name: "Mars",photo: "asset/image/mars.png",about: "Mars is the fourth planet from the Sun and the second-smallest planet in the Solar System, being larger than only Mercury. In the English language, Mars is named for the Roman god of war."),
    Model(name: "Mercury",photo: "asset/image/mercury.png",about: "Mercury is the smallest planet in the Solar System and the closest to the Sun. Its orbit around the Sun takes 87.97 Earth days, the shortest of all the Sun's planets."),
    Model(name: "Moon",photo: "asset/image/moon.png",about: "The Moon is Earth's only natural satellite. Its diameter is about one-quarter the diameter of the Earth. The Moon is the fifth largest satellite in the Solar System. It is larger than any of the known dwarf planets and is the largest satellite relative to its parent planet."),
    Model(name: "Neptune",photo: "asset/image/neptune.png",about: "Neptune is the eighth planet from the Sun and the farthest known solar planet. In the Solar System, it is the fourth-largest planet by diameter, the third-most-massive planet, and the densest giant planet. It is 17 times the mass of Earth, and slightly more massive than its near-twin Uranus."),
  ];

  Model? detailsdata;
}