//
//  PruebaViewController.swift
//  AppDocencia23
//
//  Created by Ivan Gabriel on 08/04/23.

import UIKit

class HomeViewController: UIViewController {
    
    
    
    
    
    @IBOutlet weak var collectionView: UICollectionView!
    
  
    
    let collectionViewData : [Curso] = [
        Curso(imagenEstado: "guadalajara.png",
              nombreCurso: "DIMENSION DEL PERFIL DOCENTE",
              nombreEstado: "CAMPECHE",
              cursoModalidad: "HOME OFFICE",
              cursoDuracion: "20 HORAS",
              cursoUrl: "WWW.GOOGLE.COM",
              cursoStatus: "PENDIENTE"),
        Curso(imagenEstado: "celaya.png",
              nombreCurso: "DIDÁCTICA DE ELEMENTOS DE EJECUCIÓN",
              nombreEstado: "CELAYA",
              cursoModalidad: "HOME OFFICE",
              cursoDuracion: "20 HORAS",
              cursoUrl: "WWW.GOOGLE.COM",
              cursoStatus: "PENDIENTE"),
        Curso(imagenEstado: "guanajuato.png",
              nombreCurso: "EL ESTILO DE ESCRITURA APA PARA LA PUBLICACIÓN ACADÉMICA",
              nombreEstado: "GUANAJUATO",
              cursoModalidad: "HOME OFFICE",
              cursoDuracion: "120 HORAS",
              cursoUrl: "WWW.GOOGLE.COM",
              cursoStatus: "PENDIENTE"),
        Curso(imagenEstado: "merida.png",
              nombreCurso: "LA PEDAGOGÍA Y LOS PRINCIPIOS DE LA NUEVA ESCUELA MEXICANA.",
              nombreEstado: "GUANAJUATO",
              cursoModalidad: "PRESENCIAL",
              cursoDuracion: "120 HORAS",
              cursoUrl: "WWW.GOOGLE.COM",
              cursoStatus: "PENDIENTE"),
        Curso(imagenEstado: "nayarit.png",
              nombreCurso: "METODOLOGÍAS ACTIVAS EN EL PROCESO DE ENSEÑANZA EN EDUCACIÓN BÁSICA",
              nombreEstado: "NAYARIT",
              cursoModalidad: "PRESENCIAL",
              cursoDuracion: "120 HORAS",
              cursoUrl: "WWW.GOOGLE.COM",
              cursoStatus: "PENDIENTE"),
        Curso(imagenEstado: "oaxaca.png",
              nombreCurso: "TEORÍAS DEL APRENDIZAJE Y EDUCABILIDAD",
              nombreEstado: "OAXACA",
              cursoModalidad: "PRESENCIAL",
              cursoDuracion: "120 HORAS",
              cursoUrl: "WWW.GOOGLE.COM",
              cursoStatus: "PENDIENTE"),
        Curso(imagenEstado: "tamaulipas.png",
              nombreCurso: "CLUB DE LECTURA",
              nombreEstado: "TAMAULIPAS",
              cursoModalidad: "PRESENCIAL",
              cursoDuracion: "120 HORAS",
              cursoUrl: "WWW.GOOGLE.COM",
              cursoStatus: "PENDIENTE"),
        Curso(imagenEstado: "tuxtla.png",
              nombreCurso: "LENGUA DE SEÑAS MEXICANAS NIVEL AVANZADO",
              nombreEstado: "TUXTLA",
              cursoModalidad: "PRESENCIAL",
              cursoDuracion: "120 HORAS",
              cursoUrl: "WWW.GOOGLE.COM",
              cursoStatus: "PENDIENTE"),
        Curso(imagenEstado: "veracruz.png",
              nombreCurso: "TALLER DE ARTES PLÁSTICAS",
              nombreEstado: "VERACRUZ",
              cursoModalidad: "PRESENCIAL",
              cursoDuracion: "120 HORAS",
              cursoUrl: "WWW.GOOGLE.COM",
              cursoStatus: "PENDIENTE")
    ] //Cierra arreglo
    


    
    
    
    
    
    
    @IBOutlet weak var sideMenuBtn: UIBarButtonItem!
    override func viewDidLoad() {
        super.viewDidLoad()

        sideMenuBtn.target = revealViewController()
                sideMenuBtn.action = #selector(revealViewController()?.revealSideMenu)
        
        collectionView.dataSource = self
        collectionView.collectionViewLayout = createFlowLayout()
        
    }
    
    private func createFlowLayout() -> UICollectionViewCompositionalLayout {
      let itemSize = NSCollectionLayoutSize(widthDimension: .absolute(380),
                                           heightDimension: .absolute(190))
      let item = NSCollectionLayoutItem(layoutSize: itemSize)
      item.contentInsets = NSDirectionalEdgeInsets(top: 10.0, leading: 10.0, bottom: 10.0, trailing: 10.0)

      let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0),
                                             heightDimension: .fractionalHeight(0.3))
      let group = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize,
                                                       subitems: [item])

      let section = NSCollectionLayoutSection(group: group)

      let layout = UICollectionViewCompositionalLayout(section: section)
      return layout
    }

}
extension HomeViewController: UICollectionViewDataSource {
  func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    return collectionViewData.count
  }
  
  func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "custom cell", for: indexPath) as? CustomCollectionViewCell else {
      fatalError()
    }
    
    let curso = collectionViewData[indexPath.item]
      cell.imageView.image = UIImage(named: curso.imagenEstado)
      cell.label.text = curso.nombreCurso
      cell.label2.text = curso.nombreEstado
      cell.label3.text = curso.cursoModalidad
      cell.label4.text = curso.cursoDuracion
      cell.label5.text = curso.cursoUrl
      cell.label6.text = curso.cursoStatus
      
    
    return cell
  }
}
