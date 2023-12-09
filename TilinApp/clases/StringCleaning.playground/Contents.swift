import UIKit

extension String {
    func clean() -> String {
        //locale guarda propiedades linguisticas por zonas "100,00 o 100.00" asi q vlv
        let simplified = folding(options: [.diacriticInsensitive, .caseInsensitive, .widthInsensitive], locale: nil)
        return simplified.replacingOccurrences(of: " ", with: "")
    }
}

print("äeí/o ū".clean())
