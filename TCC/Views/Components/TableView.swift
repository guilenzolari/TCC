import Foundation
import SwiftUI

struct TableView: View {
    let titles = ["Demanda água\npluvial Mensal (L)", "Capacidade do\nReservatório", "Potencial de\natendimento\nda demanda","Meses do ano\ncompletamente\natendidos", "Meses do ano\nparcialmente\natendidos", "Meses do ano\nnão atendidos"]
    @Binding var dadosSimulacao: [SumarioDados]
    var calculosReservatorios = CalculosReservatorios()
    
    var body: some View{
//        List {
            // títulos
            ScrollView(.horizontal, showsIndicators: false) {
                Grid {
                    GridRow {
                        ForEach(titles, id: \.self){title in
                            Text(title)
                        }
                    }
                    .bold()
                    .multilineTextAlignment(.center)
                    Divider()
                    // conteúdo
                    ForEach(dadosSimulacao.indices, id: \.self) { index in
                        let dado = dadosSimulacao[index]
                        GridRow {
                            Text("\(String(format: "%.2f", dado.demandaAguaPluvialMensal))")
                            Text("\(String(format: "%.0f", dado.capacidadeReservatorio))")
                            Text("\(String(format: "%.2f", dado.potencialMedioDeAtendimentoDaDemanda*100))%")
                            Text("\(String(format: "%.2f", dado.mesesAtendidosCompletamente))")
                            Text("\(String(format: "%.2f", dado.mesesAtendidosParcialmente))")
                            Text("\(String(format: "%.2f", dado.mesesNaoAtendidos))")

                        }
                        if index != dadosSimulacao.indices.last {
                            Divider()
                        }
                    }
                }.onAppear {
                    dadosSimulacao = calculosReservatorios.simulacoesVariandoVolumes(percentual: 0.35)
                }
            }
//        }
    }
}
